List P=16F84A ;Señalamos que procesador estamos usando
#include "p16f84a.inc"
    
    ;Aqui hacemos la configiuracion de los bits
    
__CONFIG _FOSC_XT & _WDTE_OFF & _PWRTE_ON & _CP_OFF

;CODIGO
    ORG 0 ;Direccion 0 del programa
INICIO
    BSF STATUS,RP0  ; SELECIONAMOS EL banco 1 para hacer la configiracion de los puertos
    CLRF TRISB; PORTB como salida porque estamos pniendo todos en 0
    BCF STATUS,RP0 ;Seleccionamos el banco 0 porque es el bit de status
START
    MOVLW B'00011000' ; RB7,RB4 y RB0 Encendidos
    
   END