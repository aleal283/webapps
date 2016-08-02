function addBook() {

	$('#bookDialog').dialog("option", "title", 'Agregar Libro');
	$('#bookDialog').dialog('open');
	
}

function editBook(id) {

	$.get("get/" + id, function(result) {

		$("#bookDialog").html(result);

		$('#bookDialog').dialog("option", "title", 'Editar Libro');

		$("#bookDialog").dialog('open');

		initializeDatePicker();
	});
}

function initializeDatePicker() {
	$(".datepicker").datepicker({
		dateFormat : "yy-mm-dd",
		changeMonth : true,
		changeYear : true,
		showButtonPanel : true
	});
}

function resetDialog(form) {

	form.find("input").val("");
}

$(document).ready(function() {

	$('#bookDialog').dialog({

		autoOpen : false,
		position : 'center',
		modal : true,
		resizable : false,
		width : 440,
		buttons : {
			"Guardar" : function() {
				$('#bookForm').submit();				
			},
			"Cancelar" : function() {
				$(this).dialog('close');
			}
		},
		close : function() {
			resetDialog($('#bookForm'));
			$(this).dialog('close');
		},
		create:function () {
	        $(this).closest(".ui-dialog")
	            .find("button:first")
	            .addClass("btn btn-default");
	        
	        $(this).closest(".ui-dialog")
            .find("button").eq(1) 
            .addClass("btn btn-success");
	        
	        $(this).closest(".ui-dialog")
            .find("button").eq(2)
            .addClass("btn btn-danger");
	    }
	});
	
	$('#bookForm').validate({
		rules: {
			"name": {
				required: true
			},
			"code":{
				required: true
			},
			"authors":{
				required: true
			},
			"price":{
				required: false,
				number:true,
				maxlength: 10
			}
		},
		messages:{
			"name": {
				required: "Ingrese el nombre del libro"
				},
			"code":{
				required: "Ingrese el codigo del libro"
			},
			"authors":{
				required: "Ingrese el autor"
			},
			"price":{
				number:"Ingrese valores numericos",
				maxlength:"Debe tener 10 digitos como maximo"
			}
		}
	});

	initializeDatePicker();
});
