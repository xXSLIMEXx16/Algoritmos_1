object castillo {
	const property artefactos = #{}
		
	method agregarArtefactos(_artefactos) {
		artefactos.addAll(_artefactos)		
	}
}

object dany {
	var property poderBase = 5 
	const property artefactos = #{}
	var property capacidad = 2
	var property casa = castillo
	const property historia = []

	method encontrar(artefacto) {
		if(artefactos.size() < capacidad) {
			artefactos.add(artefacto)
		}
		historia.add(artefacto)
	}
	
	method volverA(lugar) {
		lugar.agregarArtefactos(artefactos)
		artefactos.clear()
	}	
	
	method posesiones() = self.artefactos() + casa.artefactos()
	method tiene(artefacto) = self.posesiones().contains(artefacto)	


	method batalla() {
		artefactos.forEach({artefa => artefa.usar()})
		poderBase += 1
		}

	method poder() = poderBase + artefactos.sum({ art => art.poder(self) })

	method tieneArmaFatal(enemigo) = artefactos.any({artefacto => artefacto.poder(self) > enemigo.poder()})

	method armaFatal(enemigo) = artefactos.find({artefacto => artefacto.poder(self) > enemigo.poder()})
}

object daenerys {
	var property poderBase = 5
	var property capacidad = 3
	var property casa = castillo
	const property artefactos = #{}

	method encontrar(artefacto) {
		if(artefactos.size() < capacidad) {
			artefactos.add(artefacto)
		}
		
	}  

	method batalla() {
		artefactos.forEach({artefa => artefa.usar()})
		poderBase += 1
		}
	method poder() = poderBase + artefactos.sum({ art => art.poder(self) })

	method tieneArmaFatal(enemigo) = artefactos.any({artefacto => artefacto.poder(self) > enemigo.poder()})

	method armaFatal(enemigo) = artefactos.find({artefacto => artefacto.poder(self) > enemigo.poder()})
}

// Artefactos
object espada{
	var primerUso = false

	method poder(personaje){
		if(primerUso){
			return personaje.poderBase() / 2
		} else { 
			return personaje.poderBase()}
	}

	method usar() {
	  primerUso = true
	}

}
object collar {
	var batallas = 0

	method poder(personaje){
		if(personaje.poderBase() > 6){
			return 3 + batallas
		} else {return 3}
	}

	method usar() {
	  batallas += 1
	}
}
object armadura {
	method poder(personaje) = 6 
	
	method usar() {
	  
	}
}

object libro {
	var property hechizos = []
	method poder(personaje) {
	  if(hechizos.isEmpty()){ 
		return 0
	  }
		return hechizos.first().poder(personaje)
	}

	method usar() {
	  if(not hechizos.isEmpty()){
		hechizos.remove(hechizos.first())
	  }
	}
}

// Hechizos del libro de hechizo
object bendicion {
  method poder(personaje) = 4
}

object invisibilidad {
	method poder(personaje) = personaje.poderBase()
 }

object invocacion {
  method poder(personaje) {
	const casa = personaje.casa()
	const artefacto_mas_poderoso = casa.artefactos().max({ art => art.poder(personaje) })
	return artefacto_mas_poderoso.poder(personaje)

  }
}

object westeros {
	var property enemigos = #{cersei,jon,arya}
  
  method enemigosVencibles(personaje) = enemigos.filter({ enemigo => enemigo.poder() < personaje.poder()}) 

  method moradasConquistables(personaje) = self.enemigosVencibles(personaje).map({ enemigo => enemigo.morada()}).asSet()

  method poderoso(personaje) = enemigos.all({enemigo => enemigo.poder() < personaje.poder()})
}

// Enemigos
object cersei {
	method poder() = 16
	method morada() = kingsLanding
}

object jon {
	method poder() = 28
	method morada() = invernalia
}

object arya {
	method poder() = 14
	method morada() = braavos
}

// Moradas de los enemigos
object kingsLanding{}

object invernalia {}

object braavos {}