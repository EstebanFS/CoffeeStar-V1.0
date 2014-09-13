#SimuProc 1.4.2.0
MSG Bienvenido a Coffee Star
MSG ¿Que Desea hacer?
MSG Presione Uno para la toma del pedido
MSG Presione Dos para ver el balance de caja
MSG Presione Tres para salir
LDT
CMP DAD
JEQ C8
CMP DAE
JEQ F4B
CMP DAF
JMA 64
JME 64
hlt

#64
MSG Opcion invalida
JMP 0
hlt

#C8
MSG Toma de pedidos
MSG ¿Cuantos Cafes desea Pedir?
IN AX,1
STF CE8
ADDF C1C
MSG La cantidad de cafes sumados
OUT 1,AX
STF C1C
LDF CE8
MULF BB8
STF CF2
MULF BC4
ADDF CF2
MSG El precio de los cafes actuales
OUT 1,AX
ADDF CEE
STF CEE
JMP 12C
HLT

#12C
MSG El valor de actual de su pedido es:
LDF CEE
OUT 1,AX
MSG Bienvenido al Menu de adiciones
MSG ¿Que desea hacer?
MSG Presione Uno para adicionar Cafe
MSG Presione Dos para adicionar Crema Batida
MSG Presione Tres para adicionar Canela
MSG Presione Cuatro para adicionar Chocolate
MSG Presione Cinco para adicionar amaretto
MSG Presione Seis para adicionar Whisky
MSG Presione Siete para modificar el pedido
MSG Presione Ocho para cancelar pedido
MSG Presione Nueve para terminar el pedido
LDT
CMP DAD
JEQ 190
CMP DAE
JEQ 1F4
CMP DAF
JEQ 258
CMP DB0
JEQ 2BC
CMP DB1
JEQ 320
CMP DB2
JEQ 384
CMP DB3
JEQ 3E8
CMP DB4
JEQ 44C
CMP DB5
JEQ 4B0
JMA 12C
JME 12C
hlt

#190
MSG Bienvenido a la adicion de Cafe
MSG ¿Cuantos Cafes desea adicionar?
IN AX,1
STF CE8
ADDF C1C
MSG La cantidad de cafes Totales,actualmente
OUT 1,AX
STF C1C
LDF CE8
MULF BB8
STF CF2
MULF BC4
ADDF CF2
MSG El valor de los cafes adicionados
OUT 1,AX
ADDF CEE
STF CEE
JMP 12C
HLT

#1F4
MSG Bienvenido al menu adicion crema
MSG ¿Cuantos Cremas desea adicionar?
IN AX,1
STF CE8
ADDF C1E
MSG La cantidad de cremas Totales,Actuales
OUT 1,AX
STF C1E
LDF CE8
MULF BBA
STF CF2
MULF BC4
ADDF CF2
MSG El valor de los cremas adicionados
OUT 1,AX
ADDF CEE
STF CEE
JMP 12C
HLT

#258
MSG Bienvenido al menu adicion canela
MSG ¿Cuantos Canelas desea adicionar?
IN AX,1
STF CE8
ADDF C20
MSG La cantidad de Canelas Totales,Actuales
OUT 1,AX
STF C20
LDF CE8
MULF BBC
STF CF2
MULF BC4
ADDF CF2
MSG El valor de los Canelas adicionados
OUT 1,AX
ADDF CEE
STF CEE
JMP 12C
HLT

#2BC
MSG Bienvenido al menu adicion Chocolate
MSG ¿Cuantos Chocolates desea adicionar?
IN AX,1
STF CE8
ADDF C22
MSG La cantidad de Chocolate Totales,Actuales
OUT 1,AX
STF C22
LDF CE8
MULF BBE
STF CF2
MULF BC4
ADDF CF2
MSG El valor de los Chocolate adicionados
OUT 1,AX
ADDF CEE
STF CEE
JMP 12C
HLT

#320
MSG Bienvenido al menu adicion Amaretto
MSG ¿Cuantos Amaretto desea adicionar?
IN AX,1
STF CE8
ADDF C24
MSG La cantidad de Amaretto Totales,Actuales
OUT 1,AX
STF C24
LDF CE8
MULF BC0
STF CF2
MULF BC4
ADDF CF2
MSG El valor de los Amaretto adicionados
OUT 1,AX
ADDF CEE
STF CEE
JMP 12C
HLT

#384
MSG Bienvenido al menu adicion Whisky
MSG ¿Cuantos Whisky desea adicionar?
IN AX,1
STF CE8
ADDF C26
MSG La cantidad de Whisky Totales,Actuales
OUT 1,AX
STF C26
LDF CE8
MULF BC2
STF CF2
MULF BC4
ADDF CF2
MSG El valor de los Whisky adicionados
OUT 1,AX
ADDF CEE
STF CEE
JMP 12C
HLT

#3E8
MSG Bienvenido a modificar pedido
MSG El valor de actual de su pedido es:
LDF CEE  ; Valor venta actual con iva
OUT 1,AX
MSG La cantidad de cafes pedidos es:
LDF C1C
OUT 1,AX
MSG La cantidad de adiciones de crema pedidas es:
LDF C1E
OUT 1,AX
MSG La cantidad de adiciones de canela pedidas es:
LDF C20
OUT 1,AX
MSG La cantidad de adiciones de chocolate pedidas es:
LDF C22
OUT 1,AX
MSG La cantidad de adiciones de amaretto pedidas es::
LDF C24
OUT 1,AX
MSG La cantidad de adiciones de whisky Irlandés pedidas es::
LDF C26
OUT 1,AX
MSG ¿Que desea hacer?
MSG Presione Uno para modificar Cafe
MSG Presione Dos para modificar Crema Batida
MSG Presione Tres para modificar Canela
MSG Presione Cuatro para modificar Chocolate
MSG Presione Cinco para modificar amaretto
MSG Presione Seis para modificar Whisky
MSG Presione Siete para finalizar la modificacion
LDT
CMP DAD
JEQ 41A
CMP DAE
JEQ 010
CMP DAF
JEQ 03A
CMP DB0
JEQ 06A
CMP DB1
JEQ 092
CMP DB2
JEQ 0E0
CMP DB3
JEQ 12C
JMA 3E8
JME 3E8
HLT

#41A
MSG La cantidad de cafes pedidos es:
LDF C1C
OUT 1,AX
MSG El precio del cafe pedido es:
MULF BB8
STF CEA
MULF BC4
ADDF CEA
STF CEA
OUT 1,AX
MSG Cuantos cafes desea dejar en su pedido
IN AX,1
STF CEC
LDF C1C
SUBF CEC
MULF BB8
STF CEA
MULF BC4
ADDF CEA
STF CF2
STF CEA
LDF CEC
STF C1C
MSG El nuevo precio del cafe sera
LDF C1C
MULF BB8
STF CEA
MULF BC4
ADDF CEA
STF CEA
OUT 1,AX
MSG El nuevo valor de su factura sera
LDF CEE
SUBF CF2
STF CEE
OUT 1,AX
JMP 3E8
HLT

#010
MSG La cantidad de cremas pedidas es:
LDF C1E
OUT 1,AX
MSG El precio de las cremas pedidas es:
MULF BBA
STF CEA
MULF BC4
ADDF CEA
STF CEA
OUT 1,AX
MSG Cuantas cremas desea dejar en su pedido
IN AX,1
STF CEC
LDF C1E
SUBF CEC
MULF BBA
STF CEA
MULF BC4
ADDF CEA
STF CF2
STF CEA
LDF CEC
STF C1E
MSG El nuevo precio de la crema sera
LDF C1E
MULF BBA
STF CEA
MULF BC4
ADDF CEA
STF CEA
OUT 1,AX
MSG El nuevo valor de su factura sera
LDF CEE
SUBF CF2
STF CEE
OUT 1,AX
JMP 3E8
HLT

#03A
MSG La cantidad de canela pedidas es:
LDF C20
OUT 1,AX
MSG El precio de las canela pedidas es:
MULF BBC
STF CEA
MULF BC4
ADDF CEA
STF CEA
OUT 1,AX
MSG Cuantas canela desea dejar en su pedido
IN AX,1
STF CEC
LDF C20
SUBF CEC
MULF BBC
STF CEA
MULF BC4
ADDF CEA
STF CF2
STF CEA
LDF CEC
STF C20
MSG El nuevo precio de la canela sera
LDF C20
MULF BBC
STF CEA
MULF BC4
ADDF CEA
STF CEA
OUT 1,AX
MSG El nuevo valor de su factura sera
LDF CEE
SUBF CF2
STF CEE
OUT 1,AX
JMP 3E8
HLT

#06A
MSG La cantidad de chocolate pedidas es:
LDF C22
OUT 1,AX
MSG El precio de las chocolate pedidas es:
MULF BBE
STF CEA
MULF BC4
ADDF CEA
STF CEA
OUT 1,AX
MSG Cuantas chocolate desea dejar en su pedido
IN AX,1
STF CEC
LDF C22
SUBF CEC
MULF BBE
STF CEA
MULF BC4
ADDF CEA
STF CF2
STF CEA
LDF CEC
STF C22
MSG El nuevo precio de la chocolate sera
LDF C22
MULF BBE
STF CEA
MULF BC4
ADDF CEA
STF CEA
OUT 1,AX
MSG El nuevo valor de su factura sera
LDF CEE
SUBF CF2
STF CEE
OUT 1,AX
JMP 3E8
HLT

#092
MSG La cantidad de amaretto pedidas es:
LDF C24
OUT 1,AX
MSG El precio de las amaretto pedidas es:
MULF BC0
STF CEA
MULF BC4
ADDF CEA
STF CEA
OUT 1,AX
MSG Cuantas amaretto desea dejar en su pedido
IN AX,1
STF CEC
LDF C24
SUBF CEC
MULF BC0
STF CEA
MULF BC4
ADDF CEA
STF CF2
STF CEA
LDF CEC
STF C24
MSG El nuevo precio de la amaretto sera
LDF C24
MULF BC0
STF CEA
MULF BC4
ADDF CEA
STF CEA
OUT 1,AX
MSG El nuevo valor de su factura sera
LDF CEE
SUBF CF2
STF CEE
OUT 1,AX
JMP 3E8
HLT

#0E0
MSG La cantidad de whisky pedidas es:
LDF C26
OUT 1,AX
MSG El precio de las whisky pedidas es:
MULF BC2
STF CEA
MULF BC4
ADDF CEA
STF CEA
OUT 1,AX
MSG Cuantas whisky desea dejar en su pedido
IN AX,1
STF CEC
LDF C26
SUBF CEC
MULF BC2
STF CEA
MULF BC4
ADDF CEA
STF CF2
STF CEA
LDF CEC
STF C26
MSG El nuevo precio de la whisky sera
LDF C26
MULF BC2
STF CEA
MULF BC4
ADDF CEA
STF CEA
OUT 1,AX
MSG El nuevo valor de su factura sera
LDF CEE
SUBF CF2
STF CEE
OUT 1,AX
JMP 3E8
HLT

#44C
MSG Cancelar pedido
MSG Presione uno para aceptar
MSG Presione dos para cancelar
LDT
CMP DAD
JEQ 460
CMP DAE
JEQ 0
JMA 12C


#460
LDF C1C     ; Cafes
SUBF C1C   ;  Comienza a eliminar elementos que hayan en cliente
STF C1C
LDF C1E      ;cremas
SUBF C1E
STF C1E
LDF C20     ;canela
SUBF C20
STF C20
LDF C22     ;chocolate
SUBF C22
STF C22
LDF C24      ;amaretto
SUBF C24
STF C24
LDF C26     ;whisky
SUBF C26
STF C26
LDF CE4   ;Valor venta cliente
SUBF CE4
STF CE4
LDF CEE   ;Valor venta con iva
SUBF CEE
STF CEE
JMP 0
HLT

#4B0
MSG Finalizar pedido
JMP E10
HLT

#E10
MSG Dinero ingresado por el usuario
IN AX,1
STF CF0
MSG Devuelta:
SUBF CEE
OUT 1,AX
MSG ---------------------------------
MSG | FACTURA DE COMPRA COFFEE STAR |
MSG .................................
MSG Cafés comprados
LDF C1C
ADDF C80
STF C80
LDF C1C
OUT 1,AX
MSG Con valor de
MULF BB8
OUT 1,AX
JMP E74



#E74
LDF C1E ; CREMA COMPRADA
FTOI C1E   ; flotante a entero
CMP DAC ; EVALUA CREMAS
JMA E88 ; SI CUMPLE, MUESTRA CREMAS COMPRADAS
JEQ E92

#E88
MSG | Ad. de crema compradas        |
LDF C1E
ADDF C82
STF C82
LDF C1E
OUT 1,AX
MSG | $ =                           |
MULF BBA
OUT 1,AX
MSG .................................
JMP E92


#E92
LDF C20 ; CANELA COMPRADA
FTOI C20   ; flotante a entero
CMP DAC
JMA E9C
JEQ EA6

#E9C
MSG | Ad. canela compradas          |
LDF C20
ADDF C84
STF C84
LDF C20
OUT 1,AX
MSG | $ =                           |
MULF BBC
OUT 1,AX
MSG .................................
JMP EA6

#EA6
LDF C22 ; CHOCOLATE COMPRADO
FTOI C22   ; flotante a entero
CMP DAC
JMA EB0
JEQ EBA

#EB0
MSG | Ad. chocolate comprados       |
LDF C22
ADDF C86
STF C86
LDF C22
OUT 1,AX
MSG | $ =                           |
MULF BBE
OUT 1,AX
MSG .................................
JMP EBA

#EBA
LDF C24 ; amaretto COMPRADO
FTOI C24   ; flotante a entero
CMP DAC
JMA EC4
JEQ ECE

#EC4
MSG | Ad. de amaretto comprados     |
LDF C24
ADDF C88
STF C88
LDF C24
OUT 1,AX
MSG | $ =                           |
MULF BC0
OUT 1,AX
MSG .................................
JMP ECE

#ECE
LDF C26 ; whiskey COMPRADO
FTOI C26   ; flotante a entero
CMP DAC
JMA ED8
JEQ F38

#ED8
MSG | Ad. de whisky comprados       |
LDF C26
ADDF C8A
STF C8A
LDF C26
OUT 1,AX
MSG | $ =                           |
MULF BC2
OUT 1,AX
MSG .................................
JMP F38

#F38
MSG | Precio Total con IVA          |
LDF CEE
ADDF CE6
STF CE6
LDF CEE

OUT 1,AX
MSG .................................
MSG | Efectivo                      |
LDF CF0
OUT 1,AX
MSG .................................
MSG | Devuelta                      |
SUBF CEE
OUT 1,AX
MSG .................................
JMP 460

#F4B
MSG ---------------------------------
MSG | BALANCE DE CAJA COFFEE STAR |
MSG .................................
MSG Cafés vendidos
LDF C80
OUT 1,AX
MSG Con valor de
MULF BB8
OUT 1,AX
JMP F55



#F55
LDF C82 ; CREMAS VENDIDAS
FTOI C82   ; flotante a entero
CMP DAC ; EVALUA CREMAS
JMA F5A ; SI CUMPLE, MUESTRA CREMAS VENDIDAS
JEQ F62

#F5A
MSG | Ad. de crema vendidas        |
LDF C82
OUT 1,AX
MSG | $ =                           |
MULF BBA
OUT 1,AX
MSG .................................
JMP F62


#F62
LDF C84 ; CANELA VENDIDAS
FTOI C84   ; flotante a entero
CMP DAC
JMA F68
JEQ F72

#F68
MSG | Ad. canela vendidas          |
LDF C84
OUT 1,AX
MSG | $ =                           |
MULF BBC
OUT 1,AX
MSG .................................
JMP F72

#F72
LDF C86 ; CHOCOLATE VENDIDO
FTOI C86   ; flotante a entero
CMP DAC
JMA F78
JEQ F81

#F78
MSG | Ad. chocolate vendidos       |
LDF C86
OUT 1,AX
MSG | $ =                           |
MULF BBE
OUT 1,AX
MSG .................................
JMP F81

#F81
LDF C88 ; amaretto Vendidos
FTOI C88   ; flotante a entero
CMP DAC
JMA F87
JEQ F90

#F87
MSG | Ad. de amaretto vendidos     |
LDF C88
OUT 1,AX
MSG | $ =                           |
MULF BC0
OUT 1,AX
MSG .................................
JMP F90

#F90
LDF C8A ; whiskey vendidos
FTOI C8A   ; flotante a entero
CMP DAC
JMA F96
JEQ F9F

#F96
MSG | Ad. de whisky vendidos       |
LDF C8A
OUT 1,AX
MSG | $ =                           |
MULF BC2
OUT 1,AX
MSG .................................
JMP F9F

#F9F
MSG | Las ventas Totales del día fueron          |
LDF CE6
OUT 1,AX
MSG .................................
JMP 0
HLT


#FFE
ldt
hlt


#BB8
0100000000000000;Precio Cafe
0000000000000000
0011111101100011;Precio Crema Batida
1101011100001010
0011111010000000;Precio Canela
0000000000000000
0011111100010111;Precio Chocolate
0000101000111101
0011111111000000;Precio Amaretto
0000000000000000
0011111111100000;Precio Whisky
0000000000000000
0011111000100011;Precio IVA
1101011100001000

#C1C
0000000000000000;Numero de Cafes Cliente
0000000000000000
0000000000000000;Numero de Crema Cliente
0000000000000000
0000000000000000;Numero Canela Cliente
0000000000000000
0000000000000000;Numero Chocolate Cliente
0000000000000000
0000000000000000;Numero Amaretto Cliente
0000000000000000
0000000000000000;Numero Whisky Cliente
0000000000000000

#C80
0000000000000000;Numero de Cafes Totales
0000000000000000
0000000000000000;Numero de Crema Totales
0000000000000000
0000000000000000;Numero Canela Totales
0000000000000000
0000000000000000;Numero Chocolate Totales
0000000000000000
0000000000000000;Numero Amaretto Totales
0000000000000000
0000000000000000;Numero Whisky Totales
0000000000000000

#CE4
0000000000000000;Valor Venta Cliente
0000000000000000
0000000000000000;Valor venta del dia
0000000000000000
0000000000000000;Aux de registro1
0000000000000000
0000000000000000;Aux de registro2
0000000000000000
0000000000000000;Aux de registro3
0000000000000000
0000000000000000;Venta cliente con iva
0000000000000000
0000000000000000;Valor entregado por el cliente
0000000000000000
0000000000000000;Aux de registro4
0000000000000000
#DAC
0
1
10
11
100
101
110
111
1000
1001








