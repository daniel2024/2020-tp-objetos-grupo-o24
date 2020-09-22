<<<<<<< HEAD:src/theBeagles.wlk
object  joaquin{

	var  grupo = "Pimpinela"
	
	var cantidadDeCompanierosDeGrupo = 1
	
     method grupo(_grupo){
		grupo =_grupo	
	}
	
	method grupo() = grupo
	
	 method cantidadDeCompanierosDeGrupo(_cantidadDeCompanierosDeGrupo){
		cantidadDeCompanierosDeGrupo=_cantidadDeCompanierosDeGrupo
	}
	
	method cantidadDeCompanierosDeGrupo() = cantidadDeCompanierosDeGrupo
	

	method habilidad(){
	 	if(self.cantidadDeCompanierosDeGrupo()>0){
			return  25;
		}
		return 20;
	}
	
		
	method cobrar(presentacion) {
		if(presentacion.cantidadDeArtistas()>1){
			return 50;
		}
		return 100;
		
	}
		
	
	method interpretarCancionBien( cancion )= cancion.duracion() > 300		
			
	}
	
	
	object lucia {
	var  grupo = "Pimpinela"
	
	var cantidadDeCompanierosDeGrupo = 1
	
	const limiteDePersonasParaCambiarDePrecio = 5000
	
	method limiteDePersonasParaCambiarDePrecio() = limiteDePersonasParaCambiarDePrecio
	
    method cantidadDeCompanierosDeGrupo(_cantidadDeCompanierosDeGrupo){
		cantidadDeCompanierosDeGrupo=_cantidadDeCompanierosDeGrupo
	}
	
	method cantidadDeCompanierosDeGrupo() = cantidadDeCompanierosDeGrupo
	
 	
	
	method grupo(_grupo){
		grupo =_grupo
	}
	
	method grupo() = grupo
	
	method habilidad(){
		if(self.cantidadDeCompanierosDeGrupo() > 0){
			return 50;
		}
		return 70
	} 
		
	method cobrar(presentacion){
		if( (self.limiteDePersonasParaCambiarDePrecio() - presentacion.capacidad() ) < 0){
			return 500;
		}
		return 400;
	}
		
	method interpretarCancionBien( cancion )= cancion.letra().toLowerCase().contains("familia")
	
	}
	
	

	
	
	object luisAlberto{
		
		var guitarra = fender
			
		const fechaLimiteParaCambioDePrecio = new Date(day=30, month=11, year=2020)
		
		
		method fechaLimiteParaCambioDePrecio() = fechaLimiteParaCambioDePrecio
		
		method guitarra() = guitarra
			
		method guitarra(_guitarra){
			guitarra = _guitarra
		}
				
		method habilidad() = (self.guitarra().valor()*8).min(100)
		
	    method interpretarCancionBien( cancion )= true
	    
	    method cobrar(presentacion){
	    	if( (self.fechaLimiteParaCambioDePrecio() - presentacion.fecha() ) > 0 ){
	    		return 1000;
	    	}
	    	return 1200;
	    } 
		
	}
	
	object cisne{
		const duracion = 312		
		const letra  = "Hoy el viento se abrió quedó vacío el aire una vez más y el manantial brotó y nadie está aquí y puedo ver que solo estallan las hojas al brillar"

		method duracion() = duracion		 
		method letra()= letra
	}
	
	object laFamilia{
		const duracion = 264		
		const letra  = "Quiero brindar por mi gente sencilla, por el amor brindo por la familia"

		method duracion() = duracion		 
		method letra()= letra
		
	}


object presentacionLunaPark{
		
		var artistas = #{joaquin,lucia,luisAlberto}
		
		const lugar = lunaPark
		
		var fecha = new Date( day=20, month=4, year=2021 )
		
		method fecha() = fecha 
		
		method fecha( _fecha ){
			fecha = _fecha 
		} 
		
		
		method artistas () = artistas
		
		method artistas ( _artistas ){
			artistas= _artistas
		}
		
		method lugar() = lugar
		
		
		method capacidad() = self.lugar().capacidad(self.fecha())
		
		method cantidadDeArtistas() = self.artistas().size()  
		
		
		method cache() = self.artistas().sum{artista => artista.cobrar(self)}
		
		
	}
	
	object presentacionLaTrastienda{
		
		var artistas = #{joaquin,lucia,luisAlberto}
		
		const lugar = laTrastienda
		
		var fecha = new Date( day=15, month=11, year=2020 )
		
		method fecha() = fecha 
		
		method fecha( _fecha ){
			fecha = _fecha 
		} 
		
		
		method artistas() = artistas
		
		method artistas ( _artistas ){
			artistas= _artistas
		}
		
		method lugar() = lugar
		
		method cantidadDeArtistas() = self.artistas().size()  
		
		method capacidad() = self.lugar().capacidad(self.fecha())
		
		method cache() = self.artistas().sum{artista => artista.cobrar(self)}
		
	}
	
	object lunaPark{
		
		const  capacidad = 9290
			
		method capacidad(fecha) = self.capacidad()	
				
		method capacidad() = capacidad    
	}

	object laTrastienda {
							
		method capacidad(fecha){
			
			if(fecha.dayOfWeek() == saturday){
				return 700;
			}
			return 400;
			

		}  
		
		
		
		
	}

	
	object fender{
		const valor = 10
		method valor() = valor
	}
	
	object gibson {
		var valor = 15
		
		method valor() = valor
		
		method valor( _valor ){
			valor = _valor
		}
		
		method romper(){
			self.valor(5)
		}		
		
		
	}
=======
/** First Wollok example */
object wollok {
	method howAreYou() {
		return 'I am Wolloktastic!'
	}
}
>>>>>>> d63431964d6c379ab59c7603d97d1f2ad75ce47f:src/example.wlk
