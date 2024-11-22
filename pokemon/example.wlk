class pokemon {
  var property nombre
  var property vida = 100
  var property poder = 500
  method atacar(){}
  method ataqueRecibido(){}
  method grositud(){
    vida * poder
  }
}

class Movimiento {
  var property poder
  method poder(){}
}

object curativo inherits Movimiento(poder = 0){
  override method poder(){
    poder = cantCuracion
  }
}
object daninos inherits Movimiento{
  override method poder(){poder * 2}

}
object especiales inherits Movimiento{
  method sueño(){
    poder = 50
  }
  method paralisis(){
    poder = 30
  }
}