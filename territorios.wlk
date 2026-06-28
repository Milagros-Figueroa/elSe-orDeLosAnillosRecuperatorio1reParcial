import seres.*
object tierraMedia{
    const habitantes = []

    method agregarA (unHabitante){
        habitantes.add(unHabitante)
    }

    method quitarA(unHabitante){
        habitantes.remove(unHabitante)
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
}