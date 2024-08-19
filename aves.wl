object ezequiel{

    var horasDormidas = 0
    %Getter para leer
    method horasDormidas() = horasDormidas
    %Setter para escribir, recibe un valor y pisa el anterior
    method horasDormidas(horas) { horasDormidas = horas}
    %Consulta
    method estaDeBuenHumor() = horasDormidas >= 8

    method entrena(ave){
        %self=este objeto, inicializar, 
        const distancia = if(self.estaDeBuenHumor()) 15 else 30
        ave.vola(distancia)
    }

}