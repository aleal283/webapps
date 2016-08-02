/**
 * 
 */

$( document ).ready(function() {
	$("#bookForm").submit(function(e) {
	e.preventDefault();
	alert("hola mundo ");
	}).validate({
		debug: false,
		rules: {
			"name": {
			required: true
			}
		},
		messages:{
			"name": {
				required: "Introduce tu nombre."
				}
		}
	});
});
