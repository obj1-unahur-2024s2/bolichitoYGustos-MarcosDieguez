import objetos.*
import personas.*
import materiales.*
import colores.*

object bolichito {
    var objetoEnVidriera = pelota
    var objetoEnMostrador = biblioteca

    method objetoEnVidriera(unObjeto) {
        objetoEnVidriera = unObjeto
    }
    method objettoEnVidriera() = objetoEnVidriera

    method objetoEnMostrador(unObjeto) {
        objetoEnMostrador = unObjeto
    }
    method objetoEnMostrado() = objetoEnMostrador



    method esBrillante() {
        return objetoEnVidriera.material().esBrillante() 
        and objetoEnMostrador.material().esBrillante()
    }


    method esMonocromatico() {
        return objetoEnVidriera.color() == 
        objetoEnMostrador.color()
    }


    method estaEquilibrado() {
        return objetoEnMostrador.peso() > 
        objetoEnVidriera.peso()
    }


    method hayObjetoDeColor(unColor) {
        return objetoEnVidriera.color() == unColor or 
        objetoEnMostrador.color() == unColor
    }


    method puedeMejorar() {
        return !self.estaEquilibrado() or 
        self.esMonocromatico()
    }


    method puedoOfrecerleA(unaPersona) {
        return unaPersona.leGusta(objetoEnVidriera) or
        unaPersona.leGusta(objetoEnMostrador)
    }
}
