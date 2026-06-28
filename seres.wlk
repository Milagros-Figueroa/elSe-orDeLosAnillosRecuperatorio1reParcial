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

}