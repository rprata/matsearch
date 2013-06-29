<?php
	$menor_igual = $_GET['menor_igual'];
	$maior_igual = $_GET['maior_igual'];
	$field = $_GET['field'];

	$server = "localhost";
	$user = "notor532_mat";
	$passwd = "renanprata";
	$db = "notor532_matsearch";

	$conexao = mysql_connect($server, $user, $passwd);
	mysql_select_db($db);

	if (strlen($menor_igual) > 0 && strlen($maior_igual > 0))
	{
		$query = "SELECT * FROM materiais WHERE ".$field." <= '".$menor_igual."' AND ".$field." >= '".$maior_igual."'";
	}
	else if (strlen($menor_igual) > 0)
	{
		$query = "SELECT * FROM materiais WHERE ".$field." <= '".$menor_igual."'";
	}
	else if (strlen($maior_igual) > 0)
	{
		$query = "SELECT * FROM materiais WHERE ".$field." >= '".$maior_igual."'";
	}
	else
	{
		$query = "SELECT * FROM materiais";
	}

	$result = mysql_query($query);
	$num = mysql_numrows($result);

	$i = 0;

	if($num == 0)
	{
		header('HTTP/1.1 500 Internal Server Booboo');
        header('Content-Type: application/json');
        die('ERROR');
	}
	else 
	{
		echo "<thead>
			    <tr>
			    	<th>Nome</th>
			    	<th>Sigla</th>
			    	<th>Número atômico</th>
			        <th>Densidade (g/cm³)</th>
			        <th>Resistência à Tração (MPa)</th>
			  		<th>Módulo de Elasticidade (GPa)</th>
			        <th>Resistividade Elétrica (Ω.cm)</th>
			        <th>Calor Específico (cal/g.°C)</th>
			        <th>Condutividade Térmica (W/m.K)</th>
			        <th>Ponto de Fusão (°C)</th>
			        <th>Coeficiente de reflexão (nm)</th>
			        <th>No. CAS</th>
			    </tr>
			    </thead>;
			    <tbody>";


		while ($i < $num) 
		{
			$f1 = mysql_result($result,$i,"nome");
			$f2 = mysql_result($result,$i,"sigla");
			$f3 = mysql_result($result,$i,"numero_atomico");
			$f4 = mysql_result($result,$i,"densidade");
			$f5 = mysql_result($result,$i,"resistencia_tracao");
			$f6 = mysql_result($result,$i,"modulo_elasticidade");
			$f7 = mysql_result($result,$i,"resistividade_eletrica");
			$f8 = mysql_result($result,$i,"calor_especifico");
			$f9 = mysql_result($result,$i,"condutividade_termica");
			$f10 = mysql_result($result,$i,"ponto_fusao");
			$f11 = mysql_result($result,$i,"coeficiente_reflexao");
			$f12 = mysql_result($result,$i,"cas");
			echo "<tr>";
			echo "<td>".$f1."</td>";
			echo "<td>".$f2."</td>";
			echo "<td>".$f3."</td>";
			echo "<td>".$f4."</td>";
			echo "<td>".$f5."</td>";
			echo "<td>".$f6."</td>";
			echo "<td>".$f7."</td>";
			echo "<td>".$f8."</td>";
			echo "<td>".$f9."</td>";
			echo "<td>".$f10."</td>";
			echo "<td>".$f11."</td>";
			echo "<td>".$f12."</td>";
			echo "<tr>";
			$i = $i + 1;
		}

		echo "</tbody>";
	}


	mysql_close($conexao);
?>