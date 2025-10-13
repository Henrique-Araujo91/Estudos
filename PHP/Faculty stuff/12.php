<?php

 $i = 2;
 while ($i <= 20) {
	echo $i . "<br>";
	$i+=2;
 }

 /*Sintaxe alternativa*/
 $i = 2;
 while ($i <= 20):
	echo $i . "<br>";
	$i+=2;
 endwhile;