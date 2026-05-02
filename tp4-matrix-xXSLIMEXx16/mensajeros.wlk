object morfeo {
	var property transporte = camion 
	const pesoPropio = 90
	method pesoPropio() = pesoPropio

	method peso() = pesoPropio + transporte.peso()
	
	method puedeLlamar() = false
}

object trinity {
    var property transporte = camion
    const pesoPropio = 900
	method pesoPropio() = pesoPropio

	method peso() = pesoPropio + transporte.peso()
	
	method puedeLlamar() = true
}

object neo {
    var property tieneCredito = true
	const pesoPropio = 0

	method pesoPropio() = pesoPropio
    method peso() = pesoPropio
    method puedeLlamar() = tieneCredito
}

object camion {
	var property acoplados = 1
	
	method peso() = acoplados * 500
}

object monopatin {
	method peso() = 1
}

object puente {
	method dejarPasar(mensajero) = mensajero.peso() <= 1000
}

object paquete {
	var property estaPago = false
	var property destino = puente 
	
	method precio() = 50

	method pagar() {
    estaPago = true 
    }
	
	method puedeSerEntregadoPor(mensajero) {
		return estaPago and destino.dejarPasar(mensajero)
	}
}

object laMatrix {
  method dejarPasar(mensajero) = mensajero.puedeLlamar()
}