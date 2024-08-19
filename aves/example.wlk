object pepita {

  var joule = 100

  method joule() = joule

  method vuela(kilometro) {
    joule = joule - kilometro * 1
    joule = joule - 10
  }
  method come(gramo) {
    joule = joule + gramo * 4
  }
}