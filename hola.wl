object nombre {
    var energia = 100
    method volar(kilómetros){
        energia = energia - kilómetros * 2
    }
    method energia() = energia
}

object persona {
    method entrenà(animal) {
        animal.volar(20)
        println("${animal.energia()} kilòmetros restants")
    }
}