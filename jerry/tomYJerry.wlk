object tom {
  var property energy = 80

  method velocity()= 0
  
  method eat(rabbit){
   self.error("comer un raton")
  }

  method run(seconds){
    self.error("correr x segundos")
  }

  method rabbitRunTo(rabbit, distanceRaycorrer) = false
}

object jerry {
  var property velocity = 1

  method hurry() {
    velocity = velocity * 1.5
  } 

  method weigth() = 5
}