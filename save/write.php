<?php
  if(isset($_POST['name'])){

        $name = filter_input(INPUT_POST, 'name', FILTER_SANITIZE_SPECIAL_CHARS);
        $result = query ("INSERT INTO objects (name) VALUES ('$name')");
  }

?>

<div class="fomrobject">
<h4>Объект создается   <i class="fas fa-sync fa-spin"></i></h4>

<script type="text/javascript">
$( document ).ready(function() {
	setTimeout(function(){ location.reload(); }, 1500);
 

});
</script>
</div>