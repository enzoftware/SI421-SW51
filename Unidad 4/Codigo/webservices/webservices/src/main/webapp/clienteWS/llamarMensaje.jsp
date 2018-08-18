<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
    $("button").click(function(){
    	$.ajax({
    		  type : 'GET',
    		  url : 'http://localhost:8080/semana06/servicios/autoresWS/mensaje',
    		  dataType : 'text',
    		  success : function(data){
        		  $("#respuesta").text(data);
    		  }
    	});
    });
});
</script>
</head>
<body>
<h2>Clic en el bot�n para invocar al m�todo del servicio Web:</h2>
<button>Llamar al m�todo Mensaje (WS)</button>
<div id="respuesta"></div>
</body>
</html>