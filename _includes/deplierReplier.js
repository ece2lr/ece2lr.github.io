//C'est vraiment trop lent de charger etc en même temps que de déplier et de scroller 

function charger($unDiv){
  $unDiv.load($unDiv.attr("lien")+" .entry", 
      function(){
        $unDiv.addClass("ouvert") ; 
        MathJax.Hub.Queue(["Typeset",MathJax.Hub,$unDiv.get(0)]);
      }) ; 
}
function chargerOuvrir($unDiv){
  $unDiv.load($unDiv.attr("lien")+" .entry", 
      function(){
        $unDiv.addClass("ouvert") ; 
        $unDiv.slideDown(1000) ; 
        MathJax.Hub.Queue(["Typeset",MathJax.Hub,$unDiv.get(0)]);
      }) ; 
}

//function deplier($unDiv){
//  //$unDiv.text("clique") ; 
//  $unDiv.load($unDiv.attr("lien")+" .entry",
//      function(){
//        $unDiv.addClass("ouvert") ; 
//        $unDiv.slideDown(1000
//            , function(){
//              $('html, body').animate({ scrollTop: $unDiv.parent().offset().top }, 800);
//            }
//            ); 
//      }) ; 
//}
function replier($unDiv){
  $unDiv.slideUp(50) ; 
  $unDiv.removeClass("ouvert") ; 
}
$(document).ready( function() {
  $lesCollapses = $("#tableColles > .aCollapser").hide() ; 
  $panelPrecedent = $lesCollapses.first() ; 
  charger($panelPrecedent) ; 
  $panelPrecedent.show() ; 
  $(".boutonDeplieur").on("click", function(){
    var $this = $(this) ; 
    $monPanel = $this.parent().parent().next() ; 
    if ($monPanel.hasClass("ouvert"))
    {
      replier($monPanel) ; 
    }
    else
    {
      chargerOuvrir($monPanel) ; 
    }
  }) ; 
}) ; 
//  $lesCollapses = $("#tableColles > .aCollapser").hide() ; 
//  $panelPrecedent = $lesCollapses.first() ; 
//  charger($panelPrecedent) ; 
//  $panelPrecedent.show() ; 
//  $(".boutonDeplieur").on("click", function() {
//    var $this = $(this) ; 
//    $monPanel = $this.parent().parent().next() ; 
//    //$monPanel.text("clique") ; 
//    //deplier($monPanel) ; 
//    if ($monPanel.hasClass("ouvert"))
//    {
//      replier($monPanel) ; 
//    }
//    else
//    {
//      //replier($panelPrecedent) ; 
//      //deplier($monPanel) ; 
//      $panelPrecedent.slideUp(50, function(){
//        //charger($monPanel) ; 
//        chargerOuvrir($monPanel) ; 
//        //        $monPanel.load($monPanel.attr("lien")+" .entry",
//        //            function(){
//        //              $monPanel.addClass("ouvert") ; 
//        //              $monPanel.slideDown(1000
//        //                  //, function(){
//        //                  //  $('html, body').animate({ scrollTop: $(this).parent().offset().top }, 800);
//        //                  //}
//        //                  ); 
//      }) ; 
//      $panelPrecedent = $monPanel ; 
//      }) ; 
//    } 
//    ;
//  }) ;
