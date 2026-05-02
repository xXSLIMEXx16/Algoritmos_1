import mensajeros.*

object mensajeria {
const property empleados = [] 
const paquetesEnviados = []
const paquetesPendientes = []

	method contratar(mensajero) {
		empleados.add(mensajero)
	}

	method despedir(mensajero) {
		empleados.remove(mensajero)
	}

	method despedirATodos() {
		empleados.clear()
	}

	method esGrande() = empleados.size() > 2

	method puedeEntregarPrimerEmpleado(unPaquete) {
	
		return unPaquete.puedeSerEntregadoPor(empleados.first())
	}

	method pesoDelUltimo() {
		return empleados.last().pesoPropio()
	}

  
    method puedeSerEntregado(unPaquete) {
        return empleados.any({ m => unPaquete.puedeSerEntregadoPor(m) })
    }

    method mensajerosQuePuedenLlevar(unPaquete) {
        return empleados.filter({ m => unPaquete.puedeSerEntregadoPor(m) })
    }

    
    method tieneSobrepeso() {
        return (empleados.sum({ m => m.peso() }) / empleados.size()) > 500
    }

   
    method enviar(unPaquete) {
        if (self.puedeSerEntregado(unPaquete)) {
            paquetesEnviados.add(unPaquete)
        } else { paquetesPendientes.add(unPaquete) }
    }

    method facturacion() = paquetesEnviados.sum({ p => p.precio() })

   
    method enviarPendienteMasCaro() {
        const masCaro = paquetesPendientes.max({ p => p.precio() })
        self.enviar(masCaro)
        if (paquetesEnviados.contains(masCaro)) {
            paquetesPendientes.remove(masCaro)
        }
}
}
object paquetito {
    method precio() = 0
    method estaPago() = true 
    method puedeSerEntregadoPor(mensajero) = true 
}

object paquetonViajero {
    var property destinos = [] 
    var property montoPagado = 0

    method precio() = destinos.size() * 100
    
    method estaPago() = montoPagado >= self.precio()
    
    method pagar(monto) {
         montoPagado += monto 
    }

    method puedeSerEntregadoPor(mensajero) = self.estaPago() and destinos.all({ d => d.dejarPasar(mensajero) })
    
}