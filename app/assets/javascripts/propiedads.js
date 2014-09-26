# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/ (no mas, porque le saqué la extensión coffee)
<script>
	$(document).ready(function() {
		$("#propiedad_tipo_propiedad_id").change(function() {
			switch ($(this).val()) {
			case "1":
			//casa
			case "3":
			//ph
			case "6":
				//quinta
				$("#opc_antiguedad").show();
				$("#propiedad_ambientes").val('');
				$("#opc_ambientes").hide();
				$("#opc_dormitorios").show();
				break;
			case "2":
				$("#opc_antiguedad").show();
				$("#opc_ambientes").show();
				$("#propiedad_dormitorios").val('');
				$("#opc_dormitorios").hide();
				break;
			case "5":
			//terreno
			case "7":
			//campo
			case "8":
			//galpón
			case "13":
				//bóveda
				$("#propiedad_antiguedad").val('');
				$("#opc_antiguedad").hide();
				$("#propiedad_ambientes").val('');
				$("#opc_ambientes").hide();
				$("#propiedad_dormitorios").val('');
				$("#opc_dormitorios").hide();
				break;
			default:
				$("#opc_antiguedad").show();
				$("#propiedad_ambientes").val('');
				$("#opc_ambientes").hide();
				$("#propiedad_dormitorios").val('');
				$("#opc_dormitorios").hide();
			}
		});
	}); 
</script>
<script>
	$(document).ready(function() {
		$("#propiedad_operacion_id").change(function() {
			switch ($(this).val()) {
			case "1":
				//venta
				$("#opc_expensas").hide();
				break;
			default:
				$("#opc_expensas").show();
			}
		});
	}); 
</script>
