class PackDeViaje{
    const duracionDias
    const precioBase 
    const beneficios = []
    const coordinador
    method duracionDias(){}
}


class PackNacional inherits PackDeViaje {
    const provinciaDestino 
    var listaActividad = []
}

class PackInternacional inherits PackDeViaje {
    const paisDestino
    var cantEscalas 
    const interes
    method esDeInteres() = interes 
}

class Coordinador {
    var rol
    const motivado
    method estaMotivado() = motivado 
    var viajesRealizados
    const aniosDeExperiencia

}

class Beneficios {
    var tipoDeBeneficio
    var costo 
    const vigente
    method estaVigente() = vigente 
}