/**
 *   JavaScript para ejecutar en todas las paginas del proyecto
 *   Se carga en foot.jsp despues de incluir todas las librerias necesarias de JS 	
 */

//Se ejecuta cuando todo el HTML se ha cargado
$(function() {
	
	console.debug('document ready!');
	
	 $('#select').filterByText($('#textbox'), false);

	 console.warn('tynemce dehabilitado'); //Marcar la línea con un icono. En Internet Explorer daría error
	 //tinymce.init({selector:'textarea'});
	 // Convertir todos los TextAreas en TinyMce
    
  });