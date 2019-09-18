<html>
<head><title>PÁGINA NA RAIZ DO SERVIDOR</title></head>
<body>
<h1 align="center">PÁGINA NA RAIZ DO SERVIDOR</h1>

<b>
<?php
   echo "<p>Meu primeiro <i>comando</i> PHP!!!!</p>";

   $v = 10;
   echo "<p>Valor inteiro: ".$v;
   $v = 5.3456;
   echo "<br>Valor real: ".$v;
   $v = "ETIM INFORMÁTICA";
   echo "<br>String: ".$v;
   echo "</p>";
?>
<p>
<?php
   $n1 = 7.0;
   $n2 = 6.0;
   $media = ($n1 + $n2) / 2;
   echo "<br>Nota 1: ".$n1;
   echo "<br>Nota 2: ".$n2;
   echo "<br>Media: " .$media;
?>
</p>
</b>
</body>
</html>
