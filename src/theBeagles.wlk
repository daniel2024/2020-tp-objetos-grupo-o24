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
	

	method habilidad()= 20 + 5*(self.cantidadDeCompanierosDeGrupo().limitBetween(0,1) )	
	
		
	method cobrar(presentacion) =
		 50 + 50*(1.div(presentacion.cantidadDeArtistas()))
		
	
	method interpretarCancionBien( cancion )= cancion.duracion() > 300		
			
	}
	
	
	object lucia {
	var  grupo = "Pimpinela"
	
	var cantidadDeCompanierosDeGrupo = 1
	
	
    method cantidadDeCompanierosDeGrupo(_cantidadDeCompanierosDeGrupo){
		cantidadDeCompanierosDeGrupo=_cantidadDeCompanierosDeGrupo
	}
	
	method cantidadDeCompanierosDeGrupo() = cantidadDeCompanierosDeGrupo
	
 	
	
	method grupo(_grupo){
		grupo =_grupo
	}
	
	method grupo() = grupo
	
	method habilidad()= 70 - 20*(self.cantidadDeCompanierosDeGrupo().limitBetween(0,1))
		
	method cobrar(presentacion) =
		 500 - 100*( ( 5000  - presentacion.capacidad() ).limitBetween(0,1) )
	
	method interpretarCancionBien( cancion )= cancion.letra().toLowerCase().contains("familia")
	
	}
	
	

	
	
	object luisAlberto{
		
		var guitarra = fender
		
		method guitarra() = guitarra
		
		method guitarra(_guitarra){
			guitarra = _guitarra
		}
				
		method habilidad() = (self.guitarra().valor()*8).min(100)
		
	    method interpretarCancionBien( cancion )= true
	    
	    method cobrar(presentacion) = 1000 +  200*( presentacion.fecha() - new Date(day=30, month=11, year=2020) ).limitBetween(0,1)
		
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
		
		var lugar = lunaPark
		
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
		
		method lugar ( _lugar ){
			lugar= _lugar
		}
		
		method capacidad() = self.lugar().capacidad(self.fecha())
		
		method cantidadDeArtistas() = self.artistas().size()  
		
		
		method cache() = self.artistas().sum{artista => artista.cobrar(self)}
		
		
	}
	
	object presentacionLaTrastienda{
		
		var artistas = #{joaquin,lucia,luisAlberto}
		
		var lugar = laTrastienda
		
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
		
		method lugar ( _lugar ){
			lugar= _lugar
		}
		
		method cantidadDeArtistas() = self.artistas().size()  
		
		method capacidad() = self.lugar().capacidad(self.fecha())
		
		method cache() = self.artistas().sum{artista => artista.cobrar(self)}
		
	}
	
	object lunaPark{
		
		const  capacidad = 9290
			
		var nombre ="Luna Park"
		
		method capacidad(fecha) = self.capacidad()	
		
		
		method nombre() = nombre 
		
				
		method nombre( _nombre ){
			nombre= _nombre
		}
		
		method capacidad() = capacidad    
	}

	object laTrastienda {
							
		var nombre ="La Trastienda"
		
		method capacidad(fecha) =  400 + 300*fecha.internalDayOfWeek().gcd(6).div(6)
		
		method nombre() = nombre 
		
		method nombre( _nombre ){
			nombre= _nombre
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
