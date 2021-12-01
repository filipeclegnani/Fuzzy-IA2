// Declaração das configurações e funcionalidades do PIC.
#include "config.h"

// Declaração das bibliotecas padrão da linguagem C.
#include <stdio.h>
#include <stdlib.h>		// comando ftoa().

#define pointRigth 800
#define pointLeft  200

// Declaração das bibliotecas com as configurações e funcionalidades do PIC.
#include "usart.h"
#include "adc.h"
#include "timers.h"
#include "lcd.h"
#include "i2c.h"
#include "spi.h"
#include "eeprom.h"
#include "pwm.h"

//Variáveis Globais de Controle.
unsigned short ADCResult = 0;
float temp_lida = 0;

//Configurações para formatação de dados de saída.
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
	// Tratamento da interrupção do buffer de recepção.
	if (PIR1bits.RCIF)
	{


		// Flag de status da Interrupção do buffer de recepção da USART.
		PIR1bits.RCIF = 0;
	}

	// Tratamento da interrupção do conversor A/D.
	if (PIR1bits.ADIF)
	{
		// Caso a interrupção seja ativada a manipulação dos dados pode ser feita aqui!	

		// Limpa a flag da interrupção do conversor A/D.
		PIR1bits.ADIF = 0;	
	}

	// Tratamento da interrupção do Timer0.
	// Controle da Interrupção do TIMER0.
	if (INTCONbits.T0IF)
	{
		// Carrega o valor equivalente a contagens de 1ms.
		TIMER0_Set(238);

		// Controle do número de contagens de tempo.
		if (contagens_tm0 < 499)		// (n-1) n=10ms, n=20ms, n=500ms
		{	
			// Variável de controle/incremento do período de tempo.  	
			contagens_tm0++;

     		// Variáveis de controle (nível alto).
			PORTBbits.RB6 = 1;
		}
		else
		{
			// Variável de controle do período de tempo.
			contagens_tm0 = 0;

			// Cálculo das rotações por minuto.
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
			
			// Variáveis de controle (nível baixo).
			PORTBbits.RB6 = 0;
		}

		// Resetar a flag do Timer0 para uma nova contagem.
		INTCONbits.T0IF = 0;
	}

	// Tratamento da interrupção do Timer1.
	if (PIR1bits.TMR1IF) 
	{
		// Caso a interrupção seja ativada a manipulação dos dados pode ser feita aqui!	

		// Resetar a flag do Timer1 para uma nova contagem.
        PIR1bits.TMR1IF = 0;		
	}

	// Tratamento da interrupção da SPI.
	if (PIR1bits.SSPIF) 
	{
		// Caso a interrupção seja ativada a manipulação dos dados pode ser feita aqui!	

		// Resetar a flag do SPI para uma nova contagem.
        PIR1bits.SSPIF = 0;		
	}
}


//-----------------------------------------------------------------------------
void main(void)
{
    TRISA = 0b00000001;		// Configuração dos canais analógicos do PORTA.
    PORTA = 0b00000001;  	// Inicialização dos canais analógicos do PORTA.
    TRISB = 0b00000000;		// Configuração das entradas/saídas do PORTB (RB4 e RB5 PWM).
    PORTB = 0b00000000;  	// Inicialização das entradas/saídas do PORTB.
	TRISC = 0b10000001;		// Configuração do PORTC - pinos RC0(TIMER), RC7(RX) e RC6(TX).
    PORTC = 0b11000000; 	// Inicialização dos pinos RX e TX em nível alto (Modo IDLE).
    TRISD = 0b00000000;		// Configuração das entradas/saídas do PORTD.		
    PORTD = 0b00000000;  	// Inicialização das das entradas/saídas do PORTD.
    TRISE = 0b00000000;		// Configuração dos canais analógicos do PORTE.
    PORTE = 0b00000000;  	// Inicialização dos canais analógicos do PORTE.

	// Configurações do TIMER1 para contagem de pulsos externos.
	T1CON = 0x03;
	TMR1L = 0x00;
	TMR1H = 0x00;
	
	// Inicialização dos periféricos do microcontrolador.
	USART_Init(115200);		// Inicialização do módulo USART.
	TIMER0_Init();			// Inicialização do módulo do Timer0.
	ADC_Init();				// Inicialização do módulo do conversor A/D.
	PWM_Init();	 			// 1.125khz, prescaler 16, 1024 passos.
	LCD_Init();				// Inicialização do LCD.
	
	// Ativação das interrupções do microcontrolador.
	INTCONbits.PEIE	= 1;	// Habilita Interrupção de Periféricos do Microcontrolador.
	INTCONbits.GIE	= 1;	// Habilita Interrupção Global.

	// Rotinas do USART.
 	USART_WriteString("Inicializando o PIC16F877A\n\r");
 	USART_WriteString("USART: 115.200bps\n\r");

	// Rotinas do LCD.
	LCD_Init();								// Inicialização do LCD.
	LCD_Cursor(0,0);						// Posicionamento da string na linha 0 e coluna 0;
	LCD_WriteString("Inicializando...");	// Escrita da string no LCD.

	// Inicia os módulos PWM desligados.
	PWM_DutyCycle1(0);
	PWM_DutyCycle2(1023);

	// Seta o TIMER 0 para estouro de 1 em 1ms.
	TIMER0_Set(238);

	// Delay para estabilização.
	__delay_ms(1000);

	// Laço principal do firmware.
	while(1)
	{
		// Formata os dados de rotação para apresentação.
		sprintf(display,"%04d", rpm);

		// Apresenta as informações na USART.
		USART_WriteString(display);
 		USART_WriteString("\n\r");

     	// Apresenta as informações no LCD.
		//LCD_Clear();
		//LCD_Cursor(0,0);
		//LCD_WriteString("RPM: ");
		//LCD_Cursor(0,6);
	//	LCD_WriteString(display);

		__delay_ms(200);
	}
}
