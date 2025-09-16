import mensajeros.*

object mensajeria {
    var property mensajeros = []
    var primerEmpleado = mensajeros[0] /// me pone que hay error aca  [0]
    var pendientes = []
    var entregados = 0
    var masCaro = []
    var paqueteEnviado = []

    method contratar(mensajero){
        mensajeros.add(mensajero)
    }

    method mensajerosConjunto() { 
        return mensajeros
    }

    method despedir(mensajero){
        mensajeros.remove(mensajero)
    }

    method despedirTodos(){
        mensajeros.clear()
    }

    method esGrande(){
        return mensajeros.size()>2
    }

    method puedePrimerEmpleado(){
        return paquete.puedeSerEntregadoPor(primerEmpleado)
    }

    method pesoUltimoMensajero(){
    if(mensajeros.size() > 0){
        return mensajeros[mensajeros.size() - 1].peso()
    } else {
        return 0   
    }
}

    method puedeSerEntregado(paquete) {
    return mensajeros.any{mensajero => paquete.puedeSerEntregadoPor(mensajero) }
}

    method todosMensajeros(paquete){
        return mensajeros.filter{ mensajero => paquete.puedeSerEntregadoPor(mensajero) }
    }

    method sobrePeso() {
        if (mensajeros.isEmpty()) {
            return false
        }
        if ((mensajeros.sum { mensajero => mensajero.peso() } / mensajeros.size()) > 500) {
            return true
    }
        return false 
}




method enviarPaquete(paquete) {
     
    if (!mensajeros.isEmpty()) {
        paquete.pagar()
        paqueteEnviado.add(paquete)
        return true
    } else {
        pendientes.add(paquete)
        return false
    }

}

method totalGanado(){
    return 50 * paqueteEnviado.size()
}

method enviarTodos() {
    pendientes.forEach { paquete => enviarPaquete(paquete) } ///me pone error en enviarPaquete

}

method enviarCaro(){
    masCaro = pendientes.maxBy { paquete => paquete.precio() }
    pendientes.remove(masCaro)
}

}

