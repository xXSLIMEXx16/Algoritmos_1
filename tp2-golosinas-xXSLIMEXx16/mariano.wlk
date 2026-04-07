import golosinas.*
object mariano {
  const bolsa = []

  method comprar(unaGolosina) {
    bolsa.add(unaGolosina)
  }

  method desechar(unaGolosina) {
    bolsa.remove(unaGolosina)
  }

  method probarGolosina() {
    bolsa.forEach({golosina => golosina.mordisco()})
  }


  method consultar_peso(golosina) {
    if(bolsa.contains(golosina)){
      return golosina.peso()
    } else {return "Esa golosina no esta en la bolsa" }
  }

  method consultar_precio(golosina) {
    if(bolsa.contains(golosina)){
      return golosina.precio()
    } else { return "Esa golosina no esta en la bolsa" }
  }

  method consultar_sabor(golosina) {

    if(bolsa.contains(golosina)){

       return golosina.sabor()
      
    } else { return "Esa golosina no esta en la bolsa" }
  }

  method consultar_gluten(golosina) {
    if(bolsa.contains(golosina)){
      if(golosina.libre_gluten()){
        return "La golosina esta libre de gluten"
      } else {return "La golosina tiene gluten"}
    } else { return "Esa golosina no esta en la bolsa" }
  }

  method consultar_bolsa() = bolsa 
}