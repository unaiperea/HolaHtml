<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Test para utilidades.js</title>
  <link rel="stylesheet" href="//code.jquery.com/qunit/qunit-1.18.0.css">
</head>
<body>
  <div id="qunit"></div>
  <div id="qunit-fixture"></div>
  <script src="//code.jquery.com/qunit/qunit-1.18.0.js"></script>
  
  
  <script src="../../js/utilidades.js"></script>
  
  <script>
  	//Nuestro codigo de Test  	
	QUnit.test( "entradas (dia,edad) ", function( assert ) {
		
		  assert.ok( entradas('lunes',34 ) == 2 , " lunes <  35 años = 2 € " );
		  assert.ok( entradas('lunes',35 ) == 2 , " lunes =< 35 años = 2 € " );
		  assert.ok( entradas('lunes',36 ) == 5 , " lunes >  35 años = 5 € " );
		  
		  assert.ok( entradas('martes', 0)    == 2 , "martes 0");
		  assert.ok( entradas('martes',20)    == 2 , "martes 20");
		  assert.ok( entradas('martes',25)    == 2 , "martes 25");
		  assert.ok( entradas('martes',26)    == 5 , "martes 26");
		  assert.ok( entradas('martes',28)    == 5 , "martes 28");
		  assert.ok( entradas('martes',50)    == 5 , "martes 50");
		  assert.ok( entradas('martes',51)    == 7 , "martes 51");
		  assert.ok( entradas('martes',99)    == 7 , "martes 99");
		  
		  assert.ok( entradas('miercoles',15) == 3 , "miercoles  15 años 3€");
		  assert.ok( entradas('miercoles',30) == 5 , "miercoles  30 años 5€");
		  assert.ok( entradas('miercoles',50) == 8 , "miercoles  50 años 8€");
		  
		  assert.ok( entradas('jueves',15)    == 5 , "jueves     15 años 5€");
		  assert.ok( entradas('jueves',30)    == 10, "jueves     30 años 10€");
		  
		  assert.ok( entradas('viernes',30)   == 10, "viernes    30 años 10€");
		  
		  assert.ok( entradas('sabado',30)    == 10, "sabado     30 años 10€");

		  assert.ok( entradas('domingo',30)   == 10, "domingo   30 años 10€");
		  
		  //parametros incorrectos
		  assert.ok( entradas('domingo',-30)  == "El dia o la edad no son correctos", "domingo   (-30) años dato incorrecto");		  
		  assert.ok( entradas('vernes',30)    == "El dia o la edad no son correctos", "vernes   30 años dato incorrecto");
		  assert.ok( entradas(null,30)        == "El dia o la edad no son correctos", "null   30 años dato incorrecto");
		  assert.ok( entradas('undefined' ,30)  == "El dia o la edad no son correctos", "null   30 años dato incorrecto");
	});
  	
  	
	QUnit.test( "es_par(numero)", function( assert ) {
		
		  assert.ok( es_par(0) 			 ,  "0 es par" );
		  assert.ok( es_par(2) 			 ,  "2 es par" );
		  assert.ok( !es_par(3) 		 , "3 NO es par" );
		  assert.ok( es_par(null)		 ,  "null es par !!! " );
		  assert.ok( !es_par(undefined)  ,  "undefined NO es par" );
		  assert.ok( es_par(-2)			 ,  "-2 es par" );
		  assert.ok( !es_par(-3) 		 ,  "-3 NO es par" );
		  assert.ok( es_par(2.0) 		 ,  "2.0 es par" );
		  assert.ok( !es_par(2.1) 		 ,  "2.1 NO es par" );
		  
	});
  	
    
  </script>
</body>
</html>
