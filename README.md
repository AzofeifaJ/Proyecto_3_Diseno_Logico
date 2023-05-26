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


### Diagrama de bloques general del sistema



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
El algoritmo de Booth es un método para realizar la multiplicación binaria de dos números con signo. El algoritmo se basa en el uso de un registro de desplazamiento que contiene los operandos y el resultado parcial. El algoritmo se repite un número fijo de veces, dependiendo del número de bits de los operandos. En cada iteración, se realiza una operación aritmética según el valor de los dos últimos bits del registro, y luego se desplaza el registro una posición a la derecha. El algoritmo de Booth es más eficiente que el método tradicional de suma y desplazamiento, ya que puede manejar casos especiales como el cero y los números negativos.


#### Funcionamiento del Algoritmo de Booth

El algoritmo funciona de la siguiente manera:

1. Se inicializa el registro de desplazamiento con el multiplicando, el acumulador con cero y un bit extra con cero.
2. Se compara el bit extra con el bit menos significativo del registro de desplazamiento. Si son iguales, se salta al paso 4. Si son diferentes, se realiza una de las siguientes operaciones según el valor del bit extra:
  - Si el bit extra es 0 y el bit menos significativo es 1, se suma el multiplicador al acumulador.
  - Si el bit extra es 1 y el bit menos significativo es 0, se resta el multiplicador al acumulador.
3. Se actualiza el bit extra con el valor del bit menos significativo del registro de desplazamiento.
4. Se desplaza el registro de desplazamiento y el acumulador una posición a la derecha, conservando el signo del acumulador.
5. Se repite los pasos 2 a 4 hasta que se hayan realizado tantos desplazamientos como bits tenga el multiplicando.
6. Se devuelve el contenido del acumulador como resultado de la multiplicación.

### Diagrama Multiplicador de Booth

![Image](https://github.com/AzofeifaJ/Proyecto_3_Diseno_Logico/assets/111375712/914096ee-4f4a-4d7a-9134-6936bf7acada)

### Ejemplo Multiplicador de Booth

![image](https://github.com/AzofeifaJ/Proyecto_3_Diseno_Logico/assets/111375712/dd6a39e0-aaa1-4415-9822-3d7fade90f14)


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



### Análisis de consumo de recursos en la FPGA




### Análisis de principales problemas hallados durante el trabajo y de las soluciones aplicadas.
• 
• 
• 

