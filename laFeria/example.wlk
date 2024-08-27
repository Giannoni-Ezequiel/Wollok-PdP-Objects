// JUGADORES //

object julieta{
  //Asigno referencia
  var tickets = 15
  var cansancio = 0

  //Recalcular
  // var fuerza = 80
  method fuerza() = 80 - cansancio

  method punteria() = 20
  //Consultas
  //Getter: mensaje de lectura
  method tickets() = tickets
  //Setter: mensaje de escritura / causan efecto
  method tickets(nuevoValor) { tickets = nuevoValor}

  //Abstraer que se repite
  method jugar(juego){
    tickets += juego.ticketsGanados(self)
    cansancio += juego.cansancioQueProduce()
  }

  method puedeCanjear(premio) = tickets >= premio.costo()
}
///es importante no sobrediseñar, por ejemplo aca no es necesario
///agregar tickets y cansancio, y ambos objetos para los mensajes jugar y canjear son polimorficos
object gerundio{
  method jugar(juego) {}
  method puedeCanjear(premio) = true
}

///// JUEGOS 

object tiroAlBlanco {
  method ticketsGanados(jugador) = (jugador.punteria() / 10).roundUp()
  method cansancioQueProduce() = 3

}

object pruebaDeFuerza {
  method ticketsGanados(jugador) = if(jugador.fuerza()>75) 20 else 0
  method cansancioQueProduce() = 8

}

object ruedaDeLaFortuna {
  var property aceitada = true
  //Property cumple con esto, dice que aceitada cumple con lectura y escritura, con getter y setter
  /*method aceitada() = aceitada
  method aceitada(nuevoValor) {aceitada = nuevoValor}
*/
  method ticketsGanados(jugador) = 0.randomUpTo(20).roundUp()
  method cansancioQueProduce() = if(aceitada) 0 else 1

}


///// PREMIOS

object ositoDePeluche{
  method costo() = 45
}

object taladro {
  var property costo = 200 
}