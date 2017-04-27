
<html>
<body bgcolor="#66CC00">
<div>
<style>
	div{
		text-align: center;
		padding:200px 0px 0px 0px;
		font-size: 30;
		background-color: #003333;
		margin:100px;
		padding:20px 50px 50px 50px;
		border:5px white;
		color:white;
		line-height: 2;
		font-family:"Arial";
		border-radius:100px;

	}
</style>
<?php

$conn= mysql_connect("localhost","root","");
mysql_select_db("messmanagement");
if(!$conn)
 echo error;

$id=$_POST['roll'];

$sql = "select * from student where RNo = ".$id;

$disp=mysql_query($sql);

$result=mysql_fetch_array($disp);

 //echo json_encode($result);

 
 if($result){

 	 echo "<br/> RNo: ".$result['RNo']; 	
     echo "<br/> Name:".$result['Name'];
     echo "<br/> RoomNo: ".$result['RoomNo'];
     echo "<br/> AmountDamage:".$result['AmountDamage'];
     echo "<br/> AmountFood: ".$result['AmountFood'];
}


//when result is an array object
/*for($i=0; $i<count($result);$i++){

	echo "<br/> RNo".$result[$i]['RNo']; 	
     echo "<br/> Name".$result[$i]['Name'];
     echo "<br/> RoomNo".$result[$i]['RoomNo'];
     echo "<br/> AmountDamage".$result[$i]['AmountDamage'];
     echo "<br/> AmountFood".$result[$i]['AmountFood'];
	 
}*/
?>
</div>
</body>
</html>