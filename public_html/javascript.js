// JavaScript Document
    
	function tyhjennaKentat() {
		if (!confirm("Haluatko tyhjentää kentät?")) {
			return false;
	}
	
		}
	function lahetaLomake(){
		var nimi  = document.getElementById("nimi").value;
		var teksti  = document.getElementById("teksti").value;
		
		
		if (nimi.length < 3) {
			document.getElementById("nimi").focus();
			confirm("Et ole antanut nimeä");
			return false;	
		}
		if (teksti.length < 30) {
			document.getElementById("teksti").focus();
			confirm("Et ole kirjoittanut tekstiä riittävästi");
			return false;	
		}
		
		
		
	}
	
	
	
	
	
