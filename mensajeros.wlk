object morfeo {
    const property pesoBase = 90 
    var pesoFinal = 0
    var property transporte = camion

    method peso() {
     pesoFinal = pesoBase + transporte.peso()
      
     return pesoFinal
    }

    method transporte(vehiculo) {
      transporte = vehiculo
    }

}

object neo {
    var property pesoBase = 0 
    var pesoFinal = 0
    var property transporte = camion
    
    method peso() {
     pesoFinal = pesoBase + transporte.peso()
      
     return pesoFinal
    }

    method transporte(vehiculo) {
      transporte = vehiculo
    }
}

object trinity {
    var property pesoBase = 900 
    var pesoFinal = 0
    var property transporte = camion
    
    method peso() {
     pesoFinal = pesoBase + transporte.peso()
      
     return pesoFinal
    }

    method transporte(vehiculo) {
      transporte = vehiculo
    }
}

object matrix {
     method dejarPasar(mensajero) {
    return true
    }
}

object camion {
    var property peso = 500

    method acoplados(cantidad){
        peso = cantidad * peso
        return peso
    }

}

object monopatin {
    const property peso = 1 
}

object puente {

 method dejarPasar(mensajero) {
    return mensajero.peso() <= 1000
    }
}

object paquete {
    var property pago = false 
    var property todoOk = false 
    var destino = puente
    var property precio = 50

    method pagar() {
        pago = true
      return pago
    }

    method estaPago() {
      return pago
    }

    method destino(direccion) {
      destino = direccion
    }

    method puedeSerEntregadoPor(mensajero){
        return self.estaPago() && destino.dejarPasar(mensajero)
    }

}

object paquetito {
    var property precio = 0
}

object paViajero {
    var property precio = 100 


}