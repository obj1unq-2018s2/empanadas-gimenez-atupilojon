object gimenez {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
	//	var property sueldo = 15000

	var sueldo = 15000
	var dinero = 0
	var deuda = 0
	method sueldo() { return sueldo }
	method sueldo(nuevoValor) { sueldo = nuevoValor }
	method cobrarSueldo() {
		if (deuda == 0){
			dinero += sueldo			
		}
		else if (deuda > sueldo) {
			deuda -= sueldo
		}
		else {
			dinero += (sueldo - deuda)
			deuda = 0
		}
	}
	method totalCobrado() {return dinero}
	method gastar(monto) {
		if (monto > dinero) {
			deuda += (monto - dinero)
			dinero = 0
		}
		else {
			dinero -= monto
		}
	}
	method totalDeuda() {return deuda}
	method totalDinero() {return dinero}
}

object baigorria {
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
 	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada
 	method cobrarSueldo() { }
}

object galvan {
	var dinero = 300000
	method dinero() { return dinero }
	method pagarA( empleado ) {
		dinero -= empleado.sueldo()
		empleado.cobrarSueldo()
	}
}
