// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(document).ready(function()	{
	$("a.link_excluir").bind("click", function(e)	{
		id_link = $(this)[0].id;

		if(window.id_excluir_habilitado == id_link) {
			return true;
		}

		else {
			e.preventDefault();
			e.stopPropagation();
	



			$("#dialog-confirm").dialog({
				resizable:false,
				height:240,
				width:500,
				modal: true,
				buttons: {
					'Sim, desejo excluir': function() { 
						window.id_excluir_habilitado = id_link;
						$("#" + id_link).trigger('click');
						$("#" + id_link).parents("tr").fadeOut("fast");
						$(this).dialog("close");
						
					},
					"Não":function() {$(this).dialog("close")}
				}
			})

		}
	})

})

