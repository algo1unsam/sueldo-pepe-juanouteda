
object pepe {
  //var categoria
  //var faltas = 0
 // var cantidad = 0
//  var bono_presentismo = diaspresentes
//  var bono_resultado = resultado

   method sueldo(){
   	 return categoria.neto() + presentismo.bono_presentismo() + bono_resultado.ganancia()
   	
   }

}

object presentismo {
	var recompensa = 0
	method faltas (cantidad){
		if (cantidad == 0) {recompensa = 100}
		if (cantidad == 1) {recompensa = 50}
		if (cantidad > 1)  {recompensa = 0}
	}
	
	method bono_presentismo () = recompensa

}	
	
object categoria{
	var neto
	method gerente (){neto = 1000} 
	method cadete(){neto = 1500	}
	method neto () = neto
	
}	

object bono_resultado {
	var plata
	method fijo () {plata = 80}
	method porcentaje () {plata = 0.1 * categoria.neto()}
	method ganancia () = plata
}
