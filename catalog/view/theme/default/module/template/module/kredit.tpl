<div id="content" >
 <form action="" method="post">
	 <fieldset id="calculator">
		
		<div id="result" class="form-group required"></div>
		<div class="form-group required">
		<div class="input-group">
		 <span class="input-group-btn">
			<button type="button" title="Principal Amount" class="btn btn-default"><i class="fa fa-bullseye"></i></button>
		 </span>
		 <input type="text" name="principal" id="principal" value="" placeholder="Məhsulun qiyməti (Azn)" class="form-control">		  
		</div>
		</div>
		
		<div class="form-group required">
		<div class="input-group">
		 <span class="input-group-btn">
			<button type="button" title="" class="btn btn-default"><i class="fa fa-clock-o"></i></button>
		 </span>
		 <input type="text" name="time" id="time" value="" placeholder="Ödəmə Müddəti (Ay)" class="form-control">		 
		</div>		
		</div>
		<div class="form-group required">
		<div class="form-group">
		<select name="time_term" id="time_term" class="form-control">
                
				<option value="months">Ay</option>
				
		 </select>
		 </div>
		 </div>
		 
		 <div class="form-group required">
			<div class="buttons">			  
				<input type="button" onclick="kreditihesabla()" value="Hesabla" class="btn btn-primary btn-lg btn-block" />
			</div>
		 </div>
		 
		 

<div id="kreditin" style="display:none;">
<table style="width:100%; text-align:center;">
  <tr style="height:40px; border: 1px solid black;">
    <th style="border: 1px solid black; padding:10px;">Qiymət</th>
    <th style="border: 1px solid black; padding:10px;">İlkin Ödəniş</th>
    <th style="border: 1px solid black; padding:10px;">Müddət</th> 
    <th style="border: 1px solid black; padding:10px;">Aylıq Ödəniş</th>
  </tr>
  <tr style="height:40px; padding:10px; border: 1px solid black;">
    <td style="border: 1px solid black; padding:10px;"><div id="qiymeti"> </div></td>
    <td style="border: 1px solid black; padding:10px;"><div id="ilkode"> </div></td>
    <td style="border: 1px solid black; padding:10px;"><div id="muddeti"> </div></td> 
    <td style="border: 1px solid black; padding:10px;"><div id="ayliqi"></div></td>
  </tr>
  
</table>
</div>
                 
		
	 </fieldset>
 </form>
</div>
<script>
function kreditihesabla(){

  var principal = document.getElementById("principal").value;
  var rate = principal * 0.3;
  var time = document.getElementById("time").value;
 

  var son = parseInt(( (principal - rate) + (principal - rate)*0.3) / time);
   
  

  
  document.getElementById("kreditin").style.display = 'block';
  
document.getElementById('qiymeti').innerHTML = principal + " Azn";
document.getElementById('muddeti').innerHTML = time + " Ay";
document.getElementById('ilkode').innerHTML = rate + " Azn";
document.getElementById('ayliqi').innerHTML = son + " Azn";
  
}
</script>


