$( document ).ready(
function ()
{
$divPartialCollapse = $(".boutonPartialCollapse").parent() ; 
$prePartialCollapse = $divPartialCollapse.children("figure").children("pre")
$prePartialCollapse.css("height","200px") ;
$prePartialCollapse.addClass("plie") ; 
}
) ; 
function deplierReplier(identifiant) {
$lepre = $("#"+identifiant+" > figure > pre ") ; 
if ($lepre.hasClass("plie"))
{
$lepre.css("height","auto") ;
$lepre.removeClass("plie") ; 
}
else
{
$lepre.css("height","200px") ;
$lepre.addClass("plie") ; 
}
}

