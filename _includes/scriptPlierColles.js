$(document).ready( function() {
  $lesCollapses = $("#tableColles > .aCollapser").hide() ; 
  var $panelPrecedent = $lesCollapses.first() ; 
  //var $boutonPrecedent = $(".boutonDeplieur").first() ; 
  //charger($panelPrecedent) ; 
  $panelPrecedent.show() ; 
  //$boutonPrecedent.text("Replier") ; 
  //$panelPrecedent.addClass("ouvert") ; 
  $(".boutonDeplieur").on("click", function(){
    var $this = $(this) ; 
    $panelActuel = $this.parent().parent().next() ; 
    if ( $panelActuel.is(":visible") )
    {
      $panelActuel.slideUp(300, 
          function(){
            //$this.text("Déplier") ;
          }) ;  
      //$panelActuel.removeClass("ouvert") ; 
    }
    else
    {
      if ( $panelPrecedent.is(":visible") )
      {
        $panelPrecedent.slideUp(300, 
            function(){
              //$boutonPrecedent.text("Déplier") ;
      //        $this.text("Replier") ;
      //        $boutonPrecedent.text("Déplier") ;
              $panelActuel.slideDown(700) ; //, 
              //            function(){
              //            }
              //            ) ; 
              //      //$panelActuel.addClass("ouvert") ; 
            }) ; 
      }
      else
      {
        //$this.text("Replier") ;
        $panelActuel.slideDown(700) ; //, 
      }
      $panelPrecedent = $panelActuel ; 
      //$boutonPrecedent=$this ; 
    }
  }) ; 
}) ; 


