$(document).ready(function(){
				$("#ubhpass").hide();
				$("#ubhkontak").hide();
				$("#pilihan").hide();
				$("#show1").click(function(){
					$("#buttons").hide();
					$("#ubhpass").fadeIn();
					$("#pilihan").fadeIn();
					$("#pilihan").click(function(){
						$("#pilihan").hide();
						$("#ubhpass").hide();
						$("#buttons").fadeIn('slow');	
					});					
				});
				$("#show2").click(function(){
					$("#buttons").hide();
					$("#ubhkontak").fadeIn();
					$("#pilihan").fadeIn();
					$("#pilihan").click(function(){
						$("#pilihan").hide();
						$("#ubhkontak").hide();
						$("#buttons").fadeIn('slow');						
					});					
				});				
			});