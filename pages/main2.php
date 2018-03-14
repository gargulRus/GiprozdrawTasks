<div class="buttnons">
  </div>

<?php
$month=array(
           1=>'январь',
           'Февраль',
           'март',
           'апрель',
           'май',
           'Июнь',
           'Июль',
           'Август',
           'Сентябрь',
           'Октябрь',
           'Ноябрь',
           'Декабрь'
           );
$pp= 1;

$list = array();
$result = query("SELECT id, name FROM objects");
while($data = mysqli_fetch_assoc($result)){ 

    $result2 = query("SELECT id, name, date_start FROM plans WHERE object_id=".$data['id']);
    $planarr=array();
    while($plan = mysqli_fetch_assoc($result2)){ 
        $planarr[date('n',strtotime($plan['date_start']))]=array(
              'id'=>$plan['id'],
              'name'=>$plan['name'],
              'date_start'=>$plan['date_start']
          );
    }
    $list[]=array(
        'id'=>$data['id'],
        'name'=>$data['name'],
        'plan'=>$planarr
    );
}
echo "   <div class='div-table'>";
   echo "
   <table class='table table-bordered table-hover table-condensed list-object'>
        <tr>
            <th>П.П.</th>
            <th>Предмет договора (контракта)</th>
            <th>Январь 2018</th>
            <th>Февраль 2018</th>
            <th>Март 2018</th>
            <th>Апрель 2018</th>
            <th>Май 2018</th>
            <th>Июнь 2018</th>
            <th>Июль 2018</th>
            <th>Август 2018</th>
            <th>Сентябрь 2018</th>
            <th>Октябрь 2018</th>
            <th>Ноябрь 2018</th>
            <th>Декабрь 2018</th>
        </tr>";
    foreach ($list as $key => $row) {
        echo '<tr>';
        echo '<td>' . $pp . '</td>';
        echo '<td>'. $row['name'] .'</td>';
   
        foreach ($month as $key_m => $col) {
            if(isset($row['plan'][$key_m])){
                  echo '<td alt="' . $row['plan'][$key_m]['id'] . '">
                  '. $row['plan'][$key_m]['name'] .'</td>';
            }else{
                echo '<td></td>';
            }
        }
        echo '</tr>';
    $pp++;
  }
       echo "</table>";

?>

<div id="renameobject" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
            <button class="close" data-dismiss="modal">x</button>
            <h4 class="modal-title">Переименовать объект</h4>
            </div>
            <div class="modal-body">
                 <form method="POST" action="/?save=renameobject" id="renameobj">
                    <div class="form-group">
                    <input name='name' type='text' value="" placeholder="Имя" id="obname" class="form-control">
                </div>
           
                     <input name='id' type='hidden' value="" id="obid">
            
                 <div class="form-group text-right">
                     <input type="submit" class="btn btn-success" value="Сохранить"/>
                   </div>
            </form>
        </div>
        </div>
    </div>
</div>

<div id="renameplan" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
            <button class="close" data-dismiss="modal">x</button>
            <h4 class="modal-title">Переименовать объект</h4>
            </div>
            <div class="modal-body">
                 <form method="POST" action="/?save=renameplan" id="renameplanform">
                    <div class="form-group">
                    <input name='name' type='text' value="" placeholder="Имя" id="plname" class="form-control">
                </div>
           
                     <input name='id' type='hidden' value="" id="plid">
                     <input name='object-id' type='hidden' value="" id="plobjectid">
                     <input name='date' type='hidden' value="" id="pldate">            
                 <div class="form-group text-right">
                     <input type="submit" class="btn btn-success" value="Сохранить"/>
                   </div>
            </form>
        </div>
        </div>
    </div>
</div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script type="text/javascript">
$( document ).ready(function() {
    $('.openform').click(function(){
        $('#obname').val( $(this).attr('data-name'));
        $('#obid').val( $(this).attr('data-id') );
    });

    $('#renameobj').submit(function(){
            $.post( $(this).attr('action'), $(this).serialize(), function( data ) {
              $('#renameobj').html( data );
            });
        return false;
    });

    $('.openformplan').click(function(){
        $('#plname').val( $(this).attr('data-name'));
        $('#plid').val( $(this).attr('data-id') );
        $('#pldate').val( $(this).attr('data-month') );
        $('#plobjectid').val( $(this).attr('data-object-id') );
    });

        $('#renameplanform').submit(function(){
                $.post( $(this).attr('action'), $(this).serialize(), function( data ) {
              $('#renameplanform').html( data );
            });
        return false;
    });
});
</script>