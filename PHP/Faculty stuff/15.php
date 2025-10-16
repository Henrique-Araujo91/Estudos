<?php
 $carros = Array("Fusca", "Monza", "Passat");

 foreach($carros as $carro){
	echo $carro . "<br>";
 }

 for ($i = 0; $i < count($carros); $i++) {
	echo $carros[$i] . "<br>";
 }