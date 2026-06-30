
class SerHablante {
    method habilidad()  //Abstracto
    method esInmortal() //Abstracto
    method xp() {}

    method esTorpe() {}
    method esSabio() {}
    method sueñoProfundo()  //Abstracto
}

class Elfo inherits SerHablante {
    var cantidadDecanciones = 20
    override method esInmortal() { return true }
    override method habilidad() = if(cantidadDecanciones <= 60) 180 else cantidadDecanciones*3

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
    override method esInmortal() = cantAmigos >= 20
}

class Enano inherits SerHablante{
  var ira = 200
  override method habilidad() { return ira * 2 }
  override method xp() { return ira*200 }
  override method esInmortal() { return false }

}

class ElfoSilvano inherits Elfo {
  override method habilidad () {
    return super() * 400
  }
}






