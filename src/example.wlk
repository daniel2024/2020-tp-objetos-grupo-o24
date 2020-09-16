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

	