object bombon {
    var peso = 15
    
    method mordisco() {
      peso = (peso * 0.8) - 1
    }

    method precio() = 5 
    method sabor() = "Frutilla"
    method peso() = peso
    method libre_gluten() = true
}

object alfajor {
    var peso = 300

    method sabor() = "Chocolate" 
    method libre_gluten() = false
    method precio() = 12
    method peso() = peso

    method mordisco() {
      peso = peso * 0.8
    }  

}

object caramelo {
    var peso = 5

    method precio() = 1
    method peso() = peso
    method sabor() = "Frutilla"
    method libre_gluten() = true

    method mordisco() {
        peso -= 1
    } 
}

object chupetin {
var peso = 7

method precio() = 2
method peso() = peso
method sabor() = "Naranja"
method libre_gluten() = true

method mordisco() {
   if(peso > 2){
    peso = peso * 0.9
   }
 } 
}

object oblea{
  var peso = 250

  method precio() = 5
  method peso() = peso  
  method sabor() = "Vainilla" 
  method libre_gluten() = false

  method mordisco() {
    if( peso > 70){
        peso = peso * 0.5
    } else{
        peso = peso * 0.75
    }
  }   
  }

  object chocolatin {
    var peso_inicial = 0
    var peso = 0
    var precio = 0
  

    method peso(valor) {
      peso = valor
      peso_inicial = valor
      precio = peso_inicial * 0.5
  
    }
    method peso() = peso 

    method sabor() = "Chocolate"
    method precio() = precio
    method libre_gluten() = false 

    method mordisco() {
      peso -= 2
    }
  }

  class Golosinabaniada {
    var property golosina
    var peso_banio = 4

    method peso(valor) {
      golosina.peso(valor)
    }
    method peso() =  golosina.peso() + peso_banio
    method precio() = golosina.precio() + 2
    method sabor() = golosina.sabor()
    method libre_gluten() = golosina.libre_gluten()   
    method mordisco() {
      golosina.mordisco()

      if( peso_banio > 0 ){
        peso_banio -= 2
      }
    }
  }

  object tutti_frutti {
    var precio = 0
    var libre_gluten = true
    const sabores = ["Frutilla", "Chocolate", "Naranja"]
    var sabor_actual = 0

    method libre_gluten(valor) {
      if(valor){
        libre_gluten = valor
        precio = 7
      } else { 
        libre_gluten = valor
        precio = 10
      }
    }
    method peso() = 5 
    method precio() = precio
    method libre_gluten() = libre_gluten
    method sabor() = sabores.get(sabor_actual)

    method mordisco() {
      sabor_actual +=1
      if (sabor_actual == 3){
      sabor_actual = 0
      }
    }
  }