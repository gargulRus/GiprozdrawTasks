<?php
//$rename = filter_string($_POST['name']);
$rename = filter_input(INPUT_POST, 'name', FILTER_SANITIZE_SPECIAL_CHARS);
$action;
$id = $_POST['id'];

// Проверяем что пришло от чекбокса
if(isset($_POST['deletplan'])){
	$del=1;
  }else{
	 $del=2;
  }
// И если 2(false) то меняет задачу
// А если 1(true) то удаляем задачу из базы
if ($del==2){
		if (is_numeric( $id)){

			$result = query ("UPDATE plans SET name = '$rename' WHERE id='$id'");
            $action=" переименовывается";
			
		}else {
			$object_id = $_POST['object-id'];
			$date_start = '2018-'.sprintf('%02d', $_POST['date']).'-01';
			if (is_numeric( $object_id)){
				$query = "INSERT INTO `plans` (`object_id`, `name`, `date_start`) VALUES ('".$object_id."', '".$rename."', '".$date_start."' )";
				$result = query ($query);
			}
			$action=" создается";
		}
 
	}else {
	  $result2 = query ("DELETE FROM plans WHERE id='$id'");
	  $action=" удаляется";
  }


?>

<div class="fomrobject">
<h4>Задача<?php echo $action; ?>  <i class="fas fa-sync fa-spin"></i></h4>

<script type="text/javascript">
$( document ).ready(function() {
	setTimeout(function(){ location.reload(); }, 1500);
 

});
</script>
</div>