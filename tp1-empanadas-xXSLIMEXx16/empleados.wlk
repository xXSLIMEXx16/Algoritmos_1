//Escribir aqui los objetos
object gimenez {
  var sueldo = 300000


  method fondo() = sueldo


  method pagar(empleado) {
    sueldo -= empleado.pagar()
    
  }


}

object galvan {

  var deuda = 0
  var dinero = 0
  var sueldo = 15000


  method dinero() = dinero
  method deuda() = deuda 


  method sueldo(valor) {
    sueldo = valor
  }

  method gastar(valor) {

    if( valor > dinero ){
        deuda += valor - dinero
        dinero = 0
    } 
    else dinero -= valor


}
  method pagar(){
    dinero += sueldo
   if (deuda <= dinero) {
        dinero -= deuda
        deuda = 0
    }
    else { 
        deuda -= dinero
        dinero = 0
        }
    return sueldo
  }


}

object baigorria {
     var empanadas = 0
     var totalcobrado = 0

  method totalcobrado() = totalcobrado

  method pagar(){

    totalcobrado += empanadas * 15
    var emp_temp = empanadas
    empanadas = 0
    return emp_temp * 15
  }
 
  method vender(cantidad) {
    empanadas += cantidad
  }

  method sueldo() = empanadas * 15 
}