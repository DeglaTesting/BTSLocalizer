<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>News Website Layout - free CSS template</title>
<meta name="keywords" content="News Layout, free css template, free website, CSS, HTML" />
<meta name="description" content="News Website Layout - free HTML CSS template provided by templatemo.com" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="tabcontent.css" />
<script type="text/javascript" src="tabcontent.js">

</script>
<!--  HTML CSS Template Designed by w w w . t e m p l a t e m o . c o m  --> 
</head>
<body>
<div id="templatemo_container">

	<div id="templatemo_top_panel">
        <div id="templatemo_sitetitle">
            Localisateur des BTS
        </div>
        <div id="templatemo_currentdate">
			<script type="text/javascript">
				<!--
				var m_names = new Array("January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December");
				var d_names = new Array("Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday");
				
				var currentTime = new Date()
				var day = currentTime.getDay()
				var month = currentTime.getMonth() + 1
				var date = currentTime.getDate()
				var year = currentTime.getFullYear()
				document.write( d_names[day] + ", " + date + " " + m_names[month] + " " + year + ", ")
				var currentTime = new Date()
				var hours = currentTime.getHours()
				var minutes = currentTime.getMinutes()
				if (minutes < 10){
				minutes = "0" + minutes
				}
				document.write(hours + ":" + minutes + " ")
				if(hours > 11){
				document.write("PM")
				} else {
				document.write("AM")
				}
				//-->
			</script>
        </div>
    </div> <!-- end of top panel -->
    
    <div id="templatemo_menu">
        <ul>
            <li><a href="index.jsp">Home</a></li>
            <li><a href="map.jsp">MAP Des BTS</a></li>
            <li><a href="addbts.jsp" class="current">Ajouter de nouveaux BTS</a></li>  
            <li><a href="contact.jsp">Contact</a></li> 
                       
        </ul> 
	</div>
    
	<div id="templatemo_content">

    	<div id="templatemo_main_leftcol">
        	<div class="templatemo_leftcol_subcol">
            
            	<div id="templatemo_topnews">
                    <h2>Ajouter  des antennes BTS:</h2>
                <html:form action="signin" method="post" focus="login">
					<div>
					<p><strong>Chemin de fichier CSV:</strong></br> </br>
					  <input type="file" name="csv" id="csv" /></p></br>
                    <p><input type="submit" id="save" value="Enregistrer" /></p>
					</div>
				</html:form>
            	</div>
        	</div> <!-- end of left column -->
        	
            <div class="templatemo_leftcol_subcol">
				<div class="regular_section">
                    
				</div>
            </div>
            
            <div class="tab_section">
                
            <!-- end -->

            </div>
    	</div> <!-- end of left column -->
        
      <div id="templatemo_main_rightcol">
        	<div class="templatemo_rcol_sectionwithborder">
           	  <div id="templatemo_video_section">
                <h2>Cellule BTS:</h2>
                <p><img src="images/img04.png" alt="image" width="350" height="268" /></p>
                <h2>&nbsp;</h2>
           	  </div>
            </div>
      </div>
    </div>
    
    <div id="templatemo_footer">
    	<div class="footer_leftcol"> <a href="http://www.fst.rnu.tn"><strong>Faculté des Science de Tunis</strong></a><br />
          <a href="http://www.facebook.com/groups/MPSRTEL/">Mastère Professionnel Système de Réseaux et Télécommunication</a><br /><br />
            <p>Réaliser par: <strong>Regaig Anis </strong>et<strong> Alibi Mohamed</strong> </p>
    	</div>
        <div class="footer_rightcol"><strong>University of Tunis El Manar -        University Campus Tunis<br />
        FST Campus Universitaire           2092 El Manar Tunis</strong></div>
        
    </div> <!-- end of footer -->
<!--  HTML CSS Template Designed by w w w . t e m p l a t e m o . c o m  --> 
</div>
</body>
</html>