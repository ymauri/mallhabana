<form id="configuration_form" class="defaultForm form-horizontal mallhabana" action="" method="post" enctype="multipart/form-data" novalidate="">
	
	<div class="panel" id="fieldset_0">
		<div class="panel-heading">
			Despacho por Proveedor
		</div>
		<div class="form-wrapper">											
			<div class="form-group">
				<label class="control-label col-lg-3 required">Seleccione</label>
				<div class="col-lg-9">
					<select name="provider">
						{foreach $suppliers as $supplier}
							<option value="{$supplier->id_supplier}">{$supplier->name}</option>
						{/foreach}
					</select>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-lg-3 required">Día</label>
				<div class="col-lg-9">
					<select name="day">
					{for $i=1 to 31}
						<option value="{$i}">{$i}</option>
					{/for}
					</select>
				</div>
			</div>	
			<div class="form-group">
				<label class="control-label col-lg-3 required">Mes</label>
				<div class="col-lg-9">
					<select name="month">
						<option value="01">Enero</option>
						<option value="02">Febrero</option>
						<option value="03">Marzo</option>
						<option value="04">Abril</option>
						<option value="05">Mayo</option>
						<option value="06">Junio</option>
						<option value="07">Julio</option>
						<option value="08">Agosto</option>
						<option value="09">Septiembre</option>
						<option value="10">Octubre</option>
						<option value="11">Noviembre</option>
						<option value="12">Diciembre</option>
					</select>
				</div>
			</div>		
			<div class="form-group">
				<label class="control-label col-lg-3 required">Año</label>
				<div class="col-lg-9">
					<select name="year">
					{for $i=2020 to ((int)date(Y)) + 1}
						<option value="{$i}">{$i}</option>
					{/for}
					</select>
				</div>
			</div>																
		</div><!-- /.form-wrapper -->						
					
		<div class="panel-footer">
			<button type="submit" value="1" id="configuration_form_submit_btn" name="submitDespacho" class="btn btn-default pull-right">
				<i class="process-icon-download"></i> Generar
			</button>	
			<button type="submit" value="1" id="configuration_form_submit_btn" name="submitDespachoFullOrder" class="btn btn-default pull-right">
				<i class="process-icon-download"></i> Ordenes
			</button>					
		</div>
	</div>
</form>