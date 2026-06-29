import territorios.*
object elfo {
    
    var cancionesQueSaben = 20

    method cancionesQueSaben()=cancionesQueSaben
    method esInmortal(){
        return true
    }

    method aprederNuevasCanciones(unaCantidad){
        cancionesQueSaben = unaCantidad.max(1)
    }
    
    method habilidad(){
         if(cancionesQueSaben<=60)  {return 180 }else{return self.cancionesQueSaben()*3}
    }
    method adquiereExperiencia(){
        cancionesQueSaben = cancionesQueSaben * 2
    }

    method sueñosProfundo(){
        cancionesQueSaben = cancionesQueSaben - 10
    }

    method estoyConformeCon(elTerritorio){
        return elTerritorio.lembas() >= 8
    }

    method tomarRecursoDe(unTerritorio){
        if(unTerritorio.lembas()>= 3){
            unTerritorio.cantidadLembas(-3)
            cancionesQueSaben = cancionesQueSaben + 15
        }
    }


}

object hobbit {
    var amigos = 40
    var historia = 6

    method amigos()=amigos
    method historia()=historia

    method cantidadAmigos(unaCantidad){
        amigos = unaCantidad.max(1)
    }
  
    method habilidad(){
         if(amigos<60)  {return self.historia()*100 }else{return self.historia()*50}
    }
    method adquiereExperiencia(){
       amigos = amigos + 8
    }

    method organizarUnaFiesta(){
        amigos = amigos + 5
        historia = historia + 5
    }
  
    method esInmortal(){
     return amigos>=20
        
    }
    method sueñosProfundo(){
       amigos = amigos - 3
    }

    method estoyConformeCon(elTerritorio){
        return elTerritorio.habitantes().filter({h=>h.habilidad()>self.habilidad()}).size()>=2
    }

     method tomarRecursoDe(unTerritorio){
        if(unTerritorio.tabaco()>= 4){
            unTerritorio.cantidadTabaco(-4)
            amigos = amigos + 7
            historia = historia + 7
        }
    }

}

object enano{
    var ira = 200
   
    method esInmortal()= false
    method ira()=ira
    method cantidadIra(unaCantidad){
        ira=unaCantidad.max(0)
    }
    method habilidad(){
        return ira * 2
    }
    method adquiereExperiencia(){
       ira = ira + 300
    }

    method sueñosProfundo(){
       ira = ira - 50
    }

    method estoyConformeCon(elTerritorio){
        return elTerritorio.seresTorpes().size() >= 1
    }

       method tomarRecursoDe(unTerritorio){
        
    }
}

object elfoSilvano{
    
    var cancionesQueSaben = 20

    method cancionesQueSaben()=cancionesQueSaben
    method esInmortal()=true

    method aprederNuevasCanciones(unaCantidad){
        cancionesQueSaben = unaCantidad.max(1)
    }
    
    method habilidad(){
         if(cancionesQueSaben<=60)  {return 180 + 400 }else{return self.cancionesQueSaben()*3 + 400}
    }
    method adquiereExperiencia(){
        cancionesQueSaben = cancionesQueSaben * 2
    }

    method sueñosProfundo(){
        cancionesQueSaben = cancionesQueSaben - 10
    }

    method estoyConformeCon(elTerritorio){
        return elTerritorio.lembas() >= 8
    }

     method tomarRecursoDe(unTerritorio){
        if(unTerritorio.lembas()>= 3){
            unTerritorio.cantidadLembas(-3)
            cancionesQueSaben = cancionesQueSaben + 15
        }
    }


}

object enanoHerrero{
    var ira = 200
    var espadasFabricadas = 3

    method espadasFabricadas()=espadasFabricadas
    method esInmortal()= false
    method ira()=ira
    method cantidadIra(unaCantidad){
        ira=unaCantidad.max(0)
    }
    method habilidad(){
        return ira * 2 + espadasFabricadas * 100
    }
    method adquiereExperiencia(){
       ira = ira + 300
       espadasFabricadas +=1
    }

    method sueñosProfundo(){
       ira = ira - 50
    }

    method estoyConformeCon(elTerritorio){
        return elTerritorio.seresTorpes().size() >= 1
    }

    method tomarRecursoDe(unTerritorio){
        
    }

    

}