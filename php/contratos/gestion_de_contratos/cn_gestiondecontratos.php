<?php
class cn_gestiondecontratos extends sagep_cn
{
	protected $s__datos;

	//--------------------------------------------------------------------------------------
	//---- dr_contratos --------------------------------------------------------------------
	//--------------------------------------------------------------------------------------

	function resetear()
	{
		$this->dep('dr_contratos')->resetear();
	}

	function sincronizar()
	{
		$this->dep('dr_contratos')->sincronizar();
	}

	function eliminar()
	{
		$this->dep('dr_contratos')->eliminar_todo();
	}

	function cargar($seleccion)
	{
		$this->dep('dr_contratos')->cargar($seleccion);
	}

	//----------------------------------------------------------------------------------------
	//---- dt_contratos ----------------------------------------------------------------------
	//----------------------------------------------------------------------------------------

	function get_contratos()
	{
		$datos = $this->dep('dr_contratos')->tabla('dt_contratos')->get();
		return $datos;
	}

	function hay_cursor()
	{
		if ($this->dep('dr_contratos')->tabla('dt_contratos')->esta_cargada()) {
			return $this->dep('dr_contratos')->tabla('dt_contratos')->hay_cursor();
		}
	}

	function set_contratos($datos)
	{
		$this->dep('dr_contratos')->tabla('dt_contratos')->set($datos);
	}

	function set_cursor($seleccion)
	{
		$id_fila = $this->dep('dr_contratos')->tabla('dt_contratos')->get_id_fila_condicion($seleccion)[0];
		$this->dep('dr_contratos')->tabla('dt_contratos')->set_cursor($id_fila);
	}

	//-----------------------------------------------------------------------------------
	//---- dt_roles ---------------------------------------------------------------------
	//-----------------------------------------------------------------------------------

	function procesar_filas_roles($datos)
	{
		$this->dep('dr_contratos')->tabla('dt_roles')->procesar_filas($datos);
	}

	function get_roles()
	{
		$datos = $this->dep('dr_contratos')->tabla('dt_roles')->get_filas();
		return $datos;
	}

	//-----------------------------------------------------------------------------------
	//---- dt_detalle ---------------------------------------------------------------------
	//-----------------------------------------------------------------------------------

	function hay_cursor_detalle()
	{
		if ($this->dep('dr_contratos')->tabla('dt_detalles_contrato')->esta_cargada()) {
			return $this->dep('dr_contratos')->tabla('dt_detalles_contrato')->hay_cursor();
		}
	}

	function set_cursor_detalle($seleccion)
	{
		ei_arbol($seleccion);
		$id_fila = $this->dep('dr_contratos')->tabla('dt_detalles_contrato')->get_filas(array ($seleccion), true);
		ei_arbol($id_fila);
		//$this->dep('dr_contratos')->tabla('dt_detalles_contrato')->set_cursor($id_fila);
		return $id_fila;
	}

	function get_unDetalle()
	{
		if ($this->dep('dr_contratos')->tabla('dt_detalles_contrato')->esta_cargada()) {
			$array = $this->dep('dr_contratos')->tabla('dt_detalles_contrato')->get();
			// foreach ($array as $key => $value) {
			// 	$id = $value['id_contrato'];
			// 	$cantidad = dao_carreras::set_solo_lectura_cod_plan_estudio($id);
			// 	if ($cantidad > 0) {
			// 		$array[$key]['alumnos_asociados'] = 'Si';
			// 	} else {
			// 		$array[$key]['alumnos_asociados'] = 'No';
			// 	}
			}
			return $array;
		}

		function cargar_detalle($seleccion)
		{
			$this->dep('dr_contratos')->cargar($seleccion);
		}




	function procesar_filas_detalle($datos)
	{
		$this->dep('dr_contratos')->tabla('dt_detalles_contrato')->procesar_filas($datos);
	}

	function get_detalle()
	{
		$datos = $this->dep('dr_contratos')->tabla('dt_detalles_contrato')->get_filas();
		return $datos;
	}

}
?>
