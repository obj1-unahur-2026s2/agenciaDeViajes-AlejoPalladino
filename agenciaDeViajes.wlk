class PackDeViaje{
    const duracionDias
    const precioBase 
    const beneficios = []
    const coordinador

    method duracionDias() = duracionDias
}


class PackNacional inherits PackDeViaje {
    var listaActividad = []
    const provinciaDestino 
}

class PackInternacional inherits PackDeViaje {
    var cantEscalas 
    const paisDestino
    const interes

    method esDeInteres() = interes 
}

class Coordinador {
    var rol
    var viajesRealizados
    const motivado
    const aniosDeExperiencia

    method aniosDeExperiencia() = aniosDeExperiencia 
    method estaMotivado() = motivado 
    method viajesRealizados() = viajesRealizados 
}

class Beneficio {
    var tipoDeBeneficio
    var costo 
    const vigente

    method costo() = costo 
    method estaVigente() = vigente 
}

object guia {
    method cumpleCondicion(coordinador) = coordinador.estaMotivado() 
}

object asistenteLogistico {
    method cumpleCondicion(coordinador) = coordinador.aniosDeExperiencia() >= 3
}

object acompaniante {
    method cumpleCondicion(coordinador) = true
}


    