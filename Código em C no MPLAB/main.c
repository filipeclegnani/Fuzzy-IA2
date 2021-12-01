// Declara��o das configura��es e funcionalidades do PIC.
#include "config.h"

// Declara��o das bibliotecas padr�o da linguagem C.
#include <stdio.h>
#include <stdlib.h>		// comando ftoa().

#define pointRigth 800
#define pointLeft  200

// Declara��o das bibliotecas com as configura��es e funcionalidades do PIC.
#include "usart.h"
#include "adc.h"
#include "timers.h"
#include "lcd.h"
#include "i2c.h"
#include "spi.h"
#include "eeprom.h"
#include "pwm.h"

//Vari�veis Globais de Controle.
unsigned short ADCResult = 0;
float temp_lida = 0;

//Configura��es para formata��o de dados de sa�da.
unsigned char display[10];
int status = 0;
unsigned int pulsos = 0;
unsigned int rpm = 0;


float requiredRpm = 5000.0f;

float p1;
float p2;
float p3;


unsigned int contagens_tm0 = 0;
unsigned int contador_rb6 = 0;
unsigned int tempo_rb6 = 0;

float trapezoidal(float x, float a, float b, float c, float d){
	if (x <= a){
	    printf("1");
		return 0.0f;
	}
	if (a < x && x <= b){
	    printf("2");
		return (x-a)/(b-a);
	}
	if (b < x && x <= c){
	    printf("3");
		return 1.0f;
	}
	if (c < x && x <= d){
	    printf("4");
		return ((d-x)/(d-c));
	}
	if (x > d){
	    printf("5");
		return 0.0f;
	}
}

float triangular(float x, float a, float b, float c){
    if (x <= a){
        return  0.0f;
    }
	if ((a < x) && (x <= b)){
        return  ((x - a) / (b - a));
    }
	if ((b < x) && (x <= c)){
        return  ((x - c) / (b - c));
    }
	if (x > c){
        return  0.0f;
	}


}

//-----------------------------------------------------------------------------
void interrupt ISR(void)
{
	// Tratamento da interrup��o do buffer de recep��o.
	if (PIR1bits.RCIF)
	{


		// Flag de status da Interrup��o do buffer de recep��o da USART.
		PIR1bits.RCIF = 0;
	}

	// Tratamento da interrup��o do conversor A/D.
	if (PIR1bits.ADIF)
	{
		// Caso a interrup��o seja ativada a manipula��o dos dados pode ser feita aqui!	

		// Limpa a flag da interrup��o do conversor A/D.
		PIR1bits.ADIF = 0;	
	}

	// Tratamento da interrup��o do Timer0.
	// Controle da Interrup��o do TIMER0.
	if (INTCONbits.T0IF)
	{
		// Carrega o valor equivalente a contagens de 1ms.
		TIMER0_Set(238);

		// Controle do n�mero de contagens de tempo.
		if (contagens_tm0 < 499)		// (n-1) n=10ms, n=20ms, n=500ms
		{	
			// Vari�vel de controle/incremento do per�odo de tempo.  	
			contagens_tm0++;

     		// Vari�veis de controle (n�vel alto).
			PORTBbits.RB6 = 1;
		}
		else
		{
			// Vari�vel de controle do per�odo de tempo.
			contagens_tm0 = 0;

			// C�lculo das rota��es por minuto.
			pulsos = (TMR1H << 8) + TMR1L;
			rpm = ((pulsos / 7.0) * 120);

			// Limpa registrador para nova contagem.
			TMR1L = 0x00;
			TMR1H = 0x00;

			p1 = trapezoidal((float)rpm, -10.0f, 0.0f, (requiredRpm - (0.66f * requiredRpm) - 100.0f), (requiredRpm - ((2/3)*requiredRpm) + 100));
			p2 = trapezoidal((float)rpm, requiredRpm - ((2/3)*requiredRpm), requiredRpm - ((2/3)*requiredRpm) + 100, requiredRpm - ((1/3)*requiredRpm - 100),requiredRpm - ((1/3)*requiredRpm + 100));
			p3 = trapezoidal((float)rpm, requiredRpm - ((1/3)*requiredRpm), requiredRpm - ((1/3)*requiredRpm) + 100, requiredRpm - 100,requiredRpm + 100);
			
			if(p1>p2){
					PWM_DutyCycle2((int)(1023 * p1));
			}else{
				if(p2 > p3){
					PWM_DutyCycle2((int)(767 * p2));
				}else{
					PWM_DutyCycle2((int)(512 * p3));
				}	
			}
			
			//PWM_DutyCycle2((int)(1023 * (trapezoidal((float)rpm, -10.0f, 0.0f, requiredRpm - pointLeft, requiredRpm + pointRight))));
			
			// Vari�veis de controle (n�vel baixo).
			PORTBbits.RB6 = 0;
		}

		// Resetar a flag do Timer0 para uma nova contagem.
		INTCONbits.T0IF = 0;
	}

	// Tratamento da interrup��o do Timer1.
	if (PIR1bits.TMR1IF) 
	{
		// Caso a interrup��o seja ativada a manipula��o dos dados pode ser feita aqui!	

		// Resetar a flag do Timer1 para uma nova contagem.
        PIR1bits.TMR1IF = 0;		
	}

	// Tratamento da interrup��o da SPI.
	if (PIR1bits.SSPIF) 
	{
		// Caso a interrup��o seja ativada a manipula��o dos dados pode ser feita aqui!	

		// Resetar a flag do SPI para uma nova contagem.
        PIR1bits.SSPIF = 0;		
	}
}


//-----------------------------------------------------------------------------
void main(void)
{
    TRISA = 0b00000001;		// Configura��o dos canais anal�gicos do PORTA.
    PORTA = 0b00000001;  	// Inicializa��o dos canais anal�gicos do PORTA.
    TRISB = 0b00000000;		// Configura��o das entradas/sa�das do PORTB (RB4 e RB5 PWM).
    PORTB = 0b00000000;  	// Inicializa��o das entradas/sa�das do PORTB.
	TRISC = 0b10000001;		// Configura��o do PORTC - pinos RC0(TIMER), RC7(RX) e RC6(TX).
    PORTC = 0b11000000; 	// Inicializa��o dos pinos RX e TX em n�vel alto (Modo IDLE).
    TRISD = 0b00000000;		// Configura��o das entradas/sa�das do PORTD.		
    PORTD = 0b00000000;  	// Inicializa��o das das entradas/sa�das do PORTD.
    TRISE = 0b00000000;		// Configura��o dos canais anal�gicos do PORTE.
    PORTE = 0b00000000;  	// Inicializa��o dos canais anal�gicos do PORTE.

	// Configura��es do TIMER1 para contagem de pulsos externos.
	T1CON = 0x03;
	TMR1L = 0x00;
	TMR1H = 0x00;
	
	// Inicializa��o dos perif�ricos do microcontrolador.
	USART_Init(115200);		// Inicializa��o do m�dulo USART.
	TIMER0_Init();			// Inicializa��o do m�dulo do Timer0.
	ADC_Init();				// Inicializa��o do m�dulo do conversor A/D.
	PWM_Init();	 			// 1.125khz, prescaler 16, 1024 passos.
	LCD_Init();				// Inicializa��o do LCD.
	
	// Ativa��o das interrup��es do microcontrolador.
	INTCONbits.PEIE	= 1;	// Habilita Interrup��o de Perif�ricos do Microcontrolador.
	INTCONbits.GIE	= 1;	// Habilita Interrup��o Global.

	// Rotinas do USART.
 	USART_WriteString("Inicializando o PIC16F877A\n\r");
 	USART_WriteString("USART: 115.200bps\n\r");

	// Rotinas do LCD.
	LCD_Init();								// Inicializa��o do LCD.
	LCD_Cursor(0,0);						// Posicionamento da string na linha 0 e coluna 0;
	LCD_WriteString("Inicializando...");	// Escrita da string no LCD.

	// Inicia os m�dulos PWM desligados.
	PWM_DutyCycle1(0);
	PWM_DutyCycle2(1023);

	// Seta o TIMER 0 para estouro de 1 em 1ms.
	TIMER0_Set(238);

	// Delay para estabiliza��o.
	__delay_ms(1000);

	// La�o principal do firmware.
	while(1)
	{
		// Formata os dados de rota��o para apresenta��o.
		sprintf(display,"%04d", rpm);

		// Apresenta as informa��es na USART.
		USART_WriteString(display);
 		USART_WriteString("\n\r");

     	// Apresenta as informa��es no LCD.
		//LCD_Clear();
		//LCD_Cursor(0,0);
		//LCD_WriteString("RPM: ");
		//LCD_Cursor(0,6);
	//	LCD_WriteString(display);

		__delay_ms(200);
	}
}
