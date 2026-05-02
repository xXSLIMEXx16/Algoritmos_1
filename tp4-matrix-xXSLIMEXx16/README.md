### Ejercicio incremental: Polimorfismo - Colecciones - Colecciones con bloques 

![](matrix.jpg)

# Enunciado: Empresa de mensajería en la Matrix

Las cosas no andaban bien en la realidad asi que estos amigos se mudaron a la Matrix  y decidieron poner una empresa de mensajería para ganarse la vida.  

El objetivo es desarrollar y probar un programa con la técnica **TDD** ([Test Driven Development](https://es.wikipedia.org/wiki/Desarrollo_guiado_por_pruebas), primero escribís los tests y después el código que los hace pasar)
La idea es que permita saber si un paquete puede ser entregado por un mensajero.  
Un paquete puede entregarse cuando:  
1. El mensajero puede llegar al destino indicado.  
2. El paquete está pago.

---

## Primera parte: Destinos y mensajeros

**Destinos posibles:**

- **Puente la Noria:** deja pasar todo lo que pese hasta una tonelada.
- **La Matrix:** deja entrar a quien pueda hacer una llamada.

**Mensajeros posibles:**

- **Morfeo:** viaja en monopatín o en el Nabucodonosor.  
  - Si viaja en monopatín, el peso que cuenta es el suyo propio más 1 kg, que es lo que pesa el monopatín.  
  - Si viaja en el Nabucodonosor, como se llama su camión con acoplado. El peso será el propio más el del camión, a razón de media tonelada por cada acoplado.  
  - Morfeo no tiene un mango, gracias que tiene cubiertas en el monopatín, y no puede llamar a nadie.

- **Trinity:** Trinity pesa 900 kg y puede llamar a cualquier persona del universo con sólo llevarse el pulgar al oído y el meñique a la boca.

- **Neo:** vuela, así que no pesa nada. Además, anda con celular muy canchero. El problema es que a veces no tiene crédito para hacer llamadas.

---

### Tests mínimos para esta parte

Realizar una serie de tests donde se prueben diferentes situaciones, por ejemplo:  
- Que **Morfeo (90 kg)** puede llevar un paquete que está pago en el Nabucodonosor con un acoplado.  
- Que **Neo con crédito** no puede llevar un paquete **que no está pago** a la Matrix.  

---

## Segunda parte: The Matrix Has You

La matrix se apiolo del negocio y armó un sistemita para explotar a heroes: Morfeo, Trinity y Neo.  

Se necesita poder:  
1. Contratar a un mensajero.  
2. Despedir a un mensajero.  
3. Despedir a todos los mensajeros.  
4. Analizar si la mensajería es grande (si tiene más de dos mensajeros).  
5. Consultar si un paquete puede ser entregado por el primer empleado de la empresa.  
6. Saber el peso del último mensajero de la empresa.  

Cada punto debe tener al menos un test que demuestre su correcto funcionamiento.

---

## Tercera parte: Matrix Reloaded

Surgen otros paquetes que la empresa necesita enviar:

- **Paquetito:** es gratis (siempre está pago). Además, cualquier mensajero lo puede llevar.  
- **Paquetón viajero:** tiene múltiples destinos. Su precio es de $100 por cada destino. Se puede pagar parcialmente, pero debe estar totalmente pago para poder ser enviado. Además, el mensajero debe poder pasar por **todos** los destinos.  

Se sabe que el paquete original tiene un precio de $50.  

Se necesita:  
1. Averiguar si un paquete puede ser entregado por la empresa (si al menos uno de sus mensajeros puede entregarlo).  
2. Obtener todos los mensajeros que pueden llevar un paquete dado.  
3. Saber si una mensajería tiene sobrepeso (si el promedio de peso de sus mensajeros es superior a 500 kg).  
4. Hacer que la empresa envíe un paquete:  
   - Elige cualquier mensajero entre los que pueden enviarlo.  
   - Si no puede, lo agrega a los paquetes pendientes.  
5. Conocer la **facturación** de la empresa (el total ganado por los paquetes enviados).  
6. Dado un conjunto de paquetes, enviarlos a todos.  
7. Encontrar el paquete pendiente más caro y enviarlo, actualizando los pendientes en caso de que se pueda enviar.  

Cada punto debe tener al menos un test que demuestre su correcto funcionamiento.

---

## Requerimiento adicional

Agregar un **nuevo mensajero** y un **nuevo tipo de paquete**, y garantizar que todo siga funcionando correctamente.

---
