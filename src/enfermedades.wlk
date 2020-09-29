// Requerimiento:
// Hacer que una enfermedad infecciosa se reproduzca.
// malaria.reproducir()


class Enfermedad {
	var cantDeCelulasAmenazadas
	
	method cantDeCelulasAmenazadas() = cantDeCelulasAmenazadas
	
	method modificarCantCelulasAmenazadas(cantCelulas) {
		cantDeCelulasAmenazadas += cantCelulas
		cantDeCelulasAmenazadas = cantDeCelulasAmenazadas.max(0)
	}
	
	method atenuar(dosis,persona) {
		self.modificarCantCelulasAmenazadas(-15 * dosis)
		if(cantDeCelulasAmenazadas == 0){
			persona.curarseDe(self)
		}
	}
	
}
class EnfermedadInfecciosa inherits Enfermedad{
	method producirEfecto(persona){
		persona.subirTemperatura(cantDeCelulasAmenazadas / 1000)
	}
	
	method reproducir() {
		cantDeCelulasAmenazadas = cantDeCelulasAmenazadas * 2
	}
	
	method esAgresiva(persona) {
		return cantDeCelulasAmenazadas > persona.cantidadDeCelulas() * 0.1
	}
		
	
}

class EnfermedadAutoinmune inherits Enfermedad{
	var cantVecesQueAfectoPersona = 0
	
	method producirEfecto(persona){
		persona.destruirCelulas(cantDeCelulasAmenazadas)
		cantVecesQueAfectoPersona++
	}
	
	method esAgresiva(persona) {
		return cantVecesQueAfectoPersona > 30
	}
	
	
}

