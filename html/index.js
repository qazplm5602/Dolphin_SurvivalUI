window.addEventListener('message', function(event) {
    var nui = event.data;
    if (nui.type == "deathscreen") {
        if (nui.setDisplay == true) {
    		$("#deathscreen").css('display', 'flex');
    	} else {
    		$("#deathscreen").css('display', 'none');
    	}
        $(".button1").click(function(){
          $.post('http://Dolphin_SurvivalUI/emscall', JSON.stringify({id:1}));
      });
    }
});
