// Requerimiento:
// Hacer que una enfermedad infecciosa se reproduzca.
// malaria.reproducir()

class EnfermedadInfecciosa {
	var cantDeCelulasAmenazadas
	
	method producirEfecto(persona){
		persona.subirTemperatura(cantDeCelulasAmenazadas / 1000)
	}
	
	method reproducir() {
		cantDeCelulasAmenazadas = cantDeCelulasAmenazadas * 2
	}
	
	method cantDeCelulasAmenazadas() = cantDeCelulasAmenazadas
}

class EnfermedadAutoinmune {
	var cantDeCelulasAmenazadas
	
	method producirEfecto(persona){
		persona.destruirCelulas(cantDeCelulasAmenazadas)
	}
	
}

