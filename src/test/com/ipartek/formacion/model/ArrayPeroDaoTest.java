package com.ipartek.formacion.model;

import static org.junit.Assert.*;

import javax.validation.constraints.AssertTrue;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

import com.ipartek.formacion.modelo.pojos.Perro;

public class ArrayPeroDaoTest {
	
	private static ArrayPeroDaoTest dao;
	private static Perro mock = new Perro(); 
	private static final int MOCK_ID_INEXISTENTE = -1;
	private static final int MOCK_ID = 1;
	private static int indice = 1;
	private static final String MOCK_NOMBRE = "pulgas"

	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		
		dao = ArrayPerroDao.getInstance();
		
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
		dao = null;
		
	}

	@Before
	public void setUp() throws Exception {
		mock = new Perro(MOCK_ID, MOCK_NOMBRE);
		dao.create(mock);
		indice++;
	}

	@After
	public void tearDown() throws Exception {
		mock = null;
	}

	@Test
	public void testGetAll() {
		
		assertEquals(1, dao.testGetAll().size());
		
		dao.delete(mock.getId());

		assertEquals(0, dao.testGetAll().size());
		
	}

	@Test
	public void testGetById() {

		assertNull(gao getById(-1));

		Perro p = dao.testGetById();
		assertSame("Debería existir pulgas", p, mock);
		
	}

	@Test
	public void testDelete() {

		try {
			
			// Solucionar teardown()
			Perro pEliminar = new Perro("Pulgas 345");
			dao.create(pEliminar);
			Perro p = dao.delete(pEliminar.getId());
			assertSame(p, pEliminar);
			
			// assertSame("No queda ninguno", 0, dao.testGetAll().size());
		
			dao.delete(MOCK_ID_INEXISTENTE);
			fail("Debería haber lanzado Exception.");
			
		} catch (Exception e) {
			AssertTrue("Lanzada Exception correctamente, al eliminar un perro que no existe.", true)
		}

	}

	@Test
	public void testUpdate() {
		//TODO testUpdate
		
	}

	@Test
	public void testCreate() {
		//TODO testCreate
		
	}

}
