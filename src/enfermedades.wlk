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
	
	method esAgresiva(persona) {
		return cantDeCelulasAmenazadas > persona.cantidadDeCelulas() * 0.1
	}
		
	method cantDeCelulasAmenazadas() = cantDeCelulasAmenazadas
	
	method modificarCantCelulasAmenazadas(cantCelulas) {
		cantDeCelulasAmenazadas += cantCelulas
		cantDeCelulasAmenazadas = cantDeCelulasAmenazadas.max(0)
	}
	
	method atenuar(dosis) {
		self.modificarCantCelulasAmenazadas(-15 * dosis)
	}
	
}

class EnfermedadAutoinmune {
	var cantDeCelulasAmenazadas
	var cantVecesQueAfectoPersona = 0
	
	method producirEfecto(persona){
		persona.destruirCelulas(cantDeCelulasAmenazadas)
		cantVecesQueAfectoPersona++
	}
	
	method esAgresiva(persona) {
		return cantVecesQueAfectoPersona > 30
	}
	
	method cantDeCelulasAmenazadas() = cantDeCelulasAmenazadas
	
	method modificarCantCelulasAmenazadas(cantCelulas) {
		cantDeCelulasAmenazadas += cantCelulas
		cantDeCelulasAmenazadas = cantDeCelulasAmenazadas.max(0)
	}
	
	
	method atenuar(dosis) {
		self.modificarCantCelulasAmenazadas(-15 * dosis)
	}
	
}

