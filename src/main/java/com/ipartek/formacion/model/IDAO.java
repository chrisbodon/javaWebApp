package com.ipartek.formacion.model;

import java.util.List;

import com.ipartek.formacion.modelo.pojos.Perro;

public interface IDAO<P> {

	/**
	 * Obtiene todos los datos.
	 * @return
	 */
	List<P> getAll();
	
	/**
	 * Recupera un pojo, por su identificador.
	 * @param id identificador
	 * @return pojo si lo ecuentra, y null si no lo hace.
	 */
	P getById(int id);

	/**
	 * Elimina
	 * @param id
	 * @return Pojo eliminado
	 * @throws Exception si no se puede eliminar, o no lo ha encontrado
	 */
	P delete(int id) throws Exception;

	/**
	 * Modifica un Pojo
	 * @param id identificador
	 * @param pojo contiene los datos a modificar
	 * @return Pojo modificado
	 * @throws Exception si no se puede modificar o no lo encuentra
	 */
	P update(int id, P pojo) throws Exception;

	/**
	 * Crea un nuevo Pojo
	 * @param Pojo a crear
	 * @return Pojo creado con el id nuevo
	 * @throws Exception si no se puede crear
	 */
	P create(P pojo) throws Exception;
}
