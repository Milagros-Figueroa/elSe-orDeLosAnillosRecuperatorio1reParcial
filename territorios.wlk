import seres.*
object tierraMedia{
    const habitantes = []
    var lembas = 20
    var tabaco = 20

    method agregarA (unHabitante){
        habitantes.add(unHabitante)
    }

    method quitarA(unHabitante){
        habitantes.remove(unHabitante)
    }
    method lembas()=lembas
    method tabaco()=tabaco

    method habitantes()=habitantes
    method cantidadLembas(unaCantidad){
        lembas= lembas + unaCantidad

    }

    method cantidadTabaco(unaCantidad){
        tabaco= tabaco + unaCantidad
        
    }

    method seresTorpes(){
      return  habitantes.filter({h=>h.habilidad()<1000})
    }

    method inmortales(){
        return habitantes.filter({h=>h.esInmortal()})
    }

    method valorMaximoHabilidadDeLosInmortales(){
        return self.inmortales().map({i=>i.habilidad()}).max()
    }

    method totalhabitante(){
        return habitantes.size()
    }

    method promedioDeHabilidadTotal(){
        return habitantes.sum({h=>h.habilidad()})/self.totalhabitante()
    }

    method territorioSabio(){
        return habitantes.all({h=>h.habilidad()>300})
    }

    method realizarTorneo(){
        habitantes.forEach({h=>h.adquiereExperiencia()})
    }

    method epifania(){
         self.seresTorpes().forEach({st=>st.adquiereExperiencia()})
    }

    method hayUnMortal(){
        return habitantes.any({h=>!h.esInmortal()})
    }

    method habitantesConUnSiertoRangoDeHabilidad(){
        return habitantes.filter({h=>h.habilidad().between(1000, 3000)})
    }

    method elegirCapitan(){
        return self.habitantesConUnSiertoRangoDeHabilidad().max({h=>h.habilidad()})
    }

    method estaEnPaz(){
        return habitantes.all({h=>h.estoyConformeCon(self)})
    }

    method somnolecia(){
        habitantes.forEach({h=>h.sueñosProfundo()})
    }

    method consumoDeProducto(){
        habitantes.forEach({h=>h.tomarRecursoDe(self)})

    }

}