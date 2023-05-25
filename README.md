# Proyecto III:  Multiplicador secuencial

### Instituto Tecnológico de Costa Rica
### EL 3307: Diseño Lógico
### Grupo 20
### Profesor: Ing. Kaleb Alfaro Badilla

### Integrantes
1. Azofeifa Jiménez Alonso
2. Luna Herrera José David
3. Vargas Arce Andrés


### I Semestre 2023

## Descripción general

El objetivo fundamental de este proyecto es introducir al estudiante a la implementación de algoritmos por medio de máquinas de estados complejas, a partir de elaborar una implementación de un diseño digital en una FPGA, construir un testbench básico para validar las especificaciones del diseño e implementar el algoritmo de Booth con una Máquina de estados con técnicas avanzadas


### Diagrama de bloques general del sistema suministrado por el profesor



### Representación de una Nexys 4 DDR

![nexys-4-ddr-2](https://user-images.githubusercontent.com/111375712/233267532-c767c9a8-8a26-439e-a7d4-a855c1f0dba8.png)


###  Subsistema de lectura.
1. Este bloque adquiere los operandos A y B de 8 bits cada uno para realizar la operación de multiplicación.
2. Los operandos A y B se interpretarán como enteros sin signo.
3. La entrada del código deberá ser capturada y sincronizada con el sistema principal por medio de un
circuito antirebote de al menos 4 etapas (4 FF en cascada) por switch.
4. El circuito esperará ante el accionar de un push button.
5. El circuito no iniciará otra operación hasta que el push button vuelva a su estado inicial (cero).




####  Diagrama de bloques





###  Subsistema de cálculo de multiplicación
1. Este sistema recibe los operandos A y B del subsistema de lectura.
2. La operación de multiplicación se iniciará cuando el subsistema de lectura le indique a este subsistema
que los operandos son válidos por medio de una señal de inicio.
3. El cálculo de multiplicación se realizará de manera iterativa por medio del Algoritmo de Booth
4. El bloque indicará que el resultado es valido por medio de una señal de listo (ready)
5. Debe de implementar este sistema siguiente la metodología de separar la ruta de control de la ruta de
datos.

####  Diagrama de bloques




### Algoritmo de Booth


#### Funcionamiento del Algoritmo Double Dabble




### Subsistema de despliegue
1. Al finalizar la operación, el sistema mostrará los resultados en los LEDs disponibles (16).
2. Lo que se muestra en los LEDs solamente se actualiza al finalizar una operación. No se debe mostrar
ningún valor intermedio.

####  Diagrama de bloques





#### Imagen de la distribución de los componentes en la NEXYS 4 ddr
![image](https://user-images.githubusercontent.com/111375712/195011801-afe0480f-6058-425c-bd41-d2c9452f1d77.png)







### Diagramas de estado de las FSM diseñadas
Los diagramas de estado de las máquinas de estados finitos (FSM) son una forma de representar gráficamente el comportamiento de un sistema que puede estar en uno de varios estados posibles. Las transiciones entre estados se representan por flechas con una etiqueta que indica la condición o evento que provoca el cambio de estado. Los diagramas de estado de las FSM permiten visualizar fácilmente el flujo de control y las acciones que se realizan en cada estado del sistema.


### Ejemplo y análisis de una simulación funcional
Obtenención de la simulacion a nivel RTL a partir de la simulación del Testbench con un ejemplo implementado los subsistemas.




### Análisis de principales problemas hallados durante el trabajo y de las soluciones aplicadas.
• 
• 
• 

