
class SerHablante {
    method habilidad()  //Abstracto
    method esInmortal() //Abstracto
    method xp() {}

    method esTorpe() {}
    method esSabio() {}
    method sueñoProfundo() {}
}

class Elfo inherits SerHablante {
    var cantidadDeCanciones = 20
    method cantidadDeCanciones() { return cantidadDeCanciones}
    method aumentarCanciones(unaCancion) { cantidadDeCanciones = cantidadDeCanciones + unaCancion }
    method reducirCanciones(unaCancion) { cantidadDeCanciones = (cantidadDeCanciones - unaCancion).min(0) }
    override method esInmortal() { return true }
    override method habilidad() = if(cantidadDeCanciones <= 60) 180 else cantidadDeCanciones*3
    override method xp() { cantidadDeCanciones = cantidadDeCanciones *2}

}

class Hobbit inherits SerHablante {
    var cantAmigos = 40
    var cantHistoriasEscuchadas = 6
    method cantAmigos() { return cantAmigos }
    override method habilidad() = if(cantAmigos < 60) cantHistoriasEscuchadas*100 else cantHistoriasEscuchadas*50
    override method xp() { cantAmigos = cantAmigos + 8}

    method organizarUnaFiesta() {
      cantAmigos = cantAmigos + 5
      cantHistoriasEscuchadas = cantHistoriasEscuchadas + 5
    }
    override method esInmortal() = cantAmigos > 20
}

class Enano inherits SerHablante{
  var ira = 200
  override method habilidad() { return ira * 2 }
  override method xp() { return ira + 300 }
  override method esInmortal() { return false }
  method equilibrarse() = if( self.habilidad() <= 700) self.xp() else self.sueñoProfundo()

}

class ElfoSilvano inherits Elfo {
  override method habilidad () {
    return super() + 400
  }
}

class EnanoHerrero inherits Enano {
    var espadasFabricadas = 3
  override method habilidad() { return 100*espadasFabricadas }
  override method xp() { return super() espadasFabricadas = espadasFabricadas + 1}
}

class EnanoFurioso inherits Enano{
  method topeDeHabilidad() = 2000
  override method habilidad() { return super().max(self.topeDeHabilidad()) }
}  

class EnanoMinero inherits Enano {
  var candados = 5
  var oroEscondido = 3
  var conjuntoDeSusEscondites = 0
  override method xp() { return super() conjuntoDeSusEscondites + conjuntoDeSusEscondites +1}





}





