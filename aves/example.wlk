object pepita {

  var joule = 100

  method joule() = joule

  method decimeTuEnergia(){
    return joule
  }
  method vuela(kilometro) {
    joule = joule - kilometro * 1
    joule = joule - 10
  }
  method come(gramo) {
    joule = joule + gramo * 4
  }
  method estaCansada(){
    return joule <= 20
  }
  // otra forma
  // method estaCansada() = energia <= 20
  method comer(comida){
    joule += alpiste.joule()
  }
}

object alpiste {
  method joule() = 5

}

object persona {
  method vuela(kilometro) = 5
}