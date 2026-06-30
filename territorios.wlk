
class Territorio {
    const seres = []

    method seresTorpes() {
        //Filtra por los seres con habilidad menor a 1000
      return seres.filter({s => s.habilidad() < 1000})
    }
    //Se crea un metodo que devuelve los seres inmortales
    method seresInmortales() { return seres.filter({s => s.esInmortal()})}
    //De la lista seres Inmortales, devuelve una lista y luego filtra el maximo
    method valorMaximoHabilidadDeInmortales() {
      return self.seresInmortales().map({s => s.habilidad()}).max()
    }

    method promedioDeHabilidadTotal() {
      return seres.sum({s => s.habilidad()}) / seres.size()
    }
    method esSabio() {
      return seres.all({s => s.habilidad() > 300})
    }

    method huboTorneo() {
      return seres.forEach({s => s.xp()})
    }
    method epifania() {
      return self.seresTorpes().map({s => s.xp()})
    }
}