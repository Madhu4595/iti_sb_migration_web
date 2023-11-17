/**
 * 
 */
	function generateCaptcha()
    {
        //var alpha = new Array('A','B','C','D','E','F','G','H','I','J','K','L','M','N','P','Q','R','S','T','U','V','W','X','Y','Z');
        var alpha = new Array('1','2','3','4','5','6','7','8','9','0');
        var i;
        for (i=0;i<4;i++){
          var a = alpha[Math.floor(Math.random() * alpha.length)];
          var b = alpha[Math.floor(Math.random() * alpha.length)];
          var c = alpha[Math.floor(Math.random() * alpha.length)];
          var d = alpha[Math.floor(Math.random() * alpha.length)];
         }
       var code = a + '' + b + '' + '' + c + '' + d;
       document.getElementById("mainCaptcha").value = code;
     }
