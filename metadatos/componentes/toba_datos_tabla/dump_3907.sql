------------------------------------------------------------
--[3907]--  - dr_entidadesfinancieras - dt_entidad_financiera 
------------------------------------------------------------

------------------------------------------------------------
-- apex_objeto
------------------------------------------------------------

--- INICIO Grupo de desarrollo 0
INSERT INTO apex_objeto (proyecto, objeto, anterior, identificador, reflexivo, clase_proyecto, clase, punto_montaje, subclase, subclase_archivo, objeto_categoria_proyecto, objeto_categoria, nombre, titulo, colapsable, descripcion, fuente_datos_proyecto, fuente_datos, solicitud_registrar, solicitud_obj_obs_tipo, solicitud_obj_observacion, parametro_a, parametro_b, parametro_c, parametro_d, parametro_e, parametro_f, usuario, creacion, posicion_botonera) VALUES (
	'sagep', --proyecto
	'3907', --objeto
	NULL, --anterior
	NULL, --identificador
	NULL, --reflexivo
	'toba', --clase_proyecto
	'toba_datos_tabla', --clase
	'30', --punto_montaje
	'dt_entidades_financieras', --subclase
	'datos/dt_entidades_financieras.php', --subclase_archivo
	NULL, --objeto_categoria_proyecto
	NULL, --objeto_categoria
	'- dr_entidadesfinancieras - dt_entidad_financiera', --nombre
	NULL, --titulo
	NULL, --colapsable
	NULL, --descripcion
	'sagep', --fuente_datos_proyecto
	'sagep', --fuente_datos
	NULL, --solicitud_registrar
	NULL, --solicitud_obj_obs_tipo
	NULL, --solicitud_obj_observacion
	NULL, --parametro_a
	NULL, --parametro_b
	NULL, --parametro_c
	NULL, --parametro_d
	NULL, --parametro_e
	NULL, --parametro_f
	NULL, --usuario
	'2017-06-10 20:30:51', --creacion
	NULL  --posicion_botonera
);
--- FIN Grupo de desarrollo 0

------------------------------------------------------------
-- apex_objeto_db_registros
------------------------------------------------------------
INSERT INTO apex_objeto_db_registros (objeto_proyecto, objeto, max_registros, min_registros, punto_montaje, ap, ap_clase, ap_archivo, tabla, tabla_ext, alias, modificar_claves, fuente_datos_proyecto, fuente_datos, permite_actualizacion_automatica, esquema, esquema_ext) VALUES (
	'sagep', --objeto_proyecto
	'3907', --objeto
	NULL, --max_registros
	NULL, --min_registros
	'30', --punto_montaje
	'1', --ap
	NULL, --ap_clase
	NULL, --ap_archivo
	'entidades_financieras', --tabla
	NULL, --tabla_ext
	NULL, --alias
	'0', --modificar_claves
	'sagep', --fuente_datos_proyecto
	'sagep', --fuente_datos
	'1', --permite_actualizacion_automatica
	'es_sagep', --esquema
	'es_sagep'  --esquema_ext
);

------------------------------------------------------------
-- apex_objeto_db_registros_col
------------------------------------------------------------

--- INICIO Grupo de desarrollo 0
INSERT INTO apex_objeto_db_registros_col (objeto_proyecto, objeto, col_id, columna, tipo, pk, secuencia, largo, no_nulo, no_nulo_db, externa, tabla) VALUES (
	'sagep', --objeto_proyecto
	'3907', --objeto
	'1735', --col_id
	'id_entidad_financiera', --columna
	'E', --tipo
	'1', --pk
	'entidades_financieras_id_entidad_financiera_seq', --secuencia
	NULL, --largo
	NULL, --no_nulo
	'1', --no_nulo_db
	'0', --externa
	'entidades_financieras'  --tabla
);
INSERT INTO apex_objeto_db_registros_col (objeto_proyecto, objeto, col_id, columna, tipo, pk, secuencia, largo, no_nulo, no_nulo_db, externa, tabla) VALUES (
	'sagep', --objeto_proyecto
	'3907', --objeto
	'1736', --col_id
	'nombre_enfi', --columna
	'C', --tipo
	'0', --pk
	'', --secuencia
	'40', --largo
	NULL, --no_nulo
	'1', --no_nulo_db
	'0', --externa
	'entidades_financieras'  --tabla
);
--- FIN Grupo de desarrollo 0
