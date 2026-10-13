class PackDeViaje{
    const duracionDias
    const precioBase 
    const beneficios = []
    const coordinador

    method duracionDias() = duracionDias
    method beneficiosVigentes() = beneficios.filter({b => b.estaVigente()})
    method precioFinal() = precioBase + self.beneficiosVigentes().sum({b => b.costo()})
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
    override method precioFinal() = super() * 1.2
}

class Coordinador {
    var rol
    var viajesRealizados
    const motivado
    const aniosDeExperiencia

    method aniosDeExperiencia() = aniosDeExperiencia 
    method estaMotivado() = motivado 
    method viajesRealizados() = viajesRealizados 
    method esAltamenteCalificado() = viajesRealizados > 20 && rol.cumpleCondicion(self)
    method cambiarRol(nuevoRol) {
        if (not [guia, asistenteLogistico, acompaniante].contains(nuevoRol)) {
            self.error("Rol inválido")
        }
        rol = nuevoRol
    }

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


    