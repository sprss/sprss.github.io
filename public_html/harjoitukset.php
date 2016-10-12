<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html"/>
<title>Miikan harjoitukset</title>
<link rel="stylesheet" href="tyyli.css" type="text/css" />
<link rel="SHORTCUT ICON" href="favicon.ico"
       type="image/x-icon"/>
</head>
<body>

	<!--yeea-->	
  <div id="keskitys">
  
    
    
     
        <div id="ylareuna">
<a href="index.html">
       	 <img src="headi.jpg" alt="kuva aallosta"  title="Valoisaa" height="105" width="648"/>

</a>
        </div>

        
        <div id="navigointi">
        	<ul>
            	<li><a href="index.html">Etusivu </a></li>
                <li><a href="harjoitukset.html">Harjoitukset </a></li>
                <li><a href="projekti.html">Projekti</a></li>
            </ul>
        </div>
        
        <div id="sisalto">
     <h1> Harjoitukset </h1>
        
        



<br />


<h3> PHP alkeiden treenailua </h3>


	<?php
		$paivamaara = date("d.m.Y");
		print "Tänään on ".$paivamaara;
	?>

 <?php echo '<p>Tämä on PHP-koodia nyt sitten!</p>'; ?> 
<?php
echo '<p> Selain jota käytät on '.$_SERVER['HTTP_USER_AGENT'].'</p>';
?>

<form action="action.php" method="post">
 <p>Sun nimes: <input type="text" name="name" /></p>
 <p>Sun ikäs: <input type="text" name="age" /></p>
 <p><input type="submit" /></p>
</form>








        <p><a href="#" title="palaa alkuun"> Takaisin ylös</a></p>
        
        
        
        </div>
        


        
        <div id="alareuna">
        <p> &copy; Miika Pihkala 77227N </p>
        </div>
        
        
        
        
  </div>
    




</body>
</html>

