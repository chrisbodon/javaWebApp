package com.ipartek.formacion.modelo.pojos;

public class Producto {
	
	private int id;
	private String nombre;
	private double precio;
	private String foto;
	private String descripcion;
	private int descuento;
	
	private Producto(int id, String nombre, double precio, String foto, String descripcion, int descuento) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.precio = precio;
		this.foto = foto;
		this.descripcion = descripcion;
		this.descuento = descuento;
	}
	
	private Producto() {
		super();
		this.id = 0;
		this.nombre = "";
		this.precio = 0;
		this.foto = "";
		this.descripcion = "";
		this.descuento = 0;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public double getPrecio() {
		return precio;
	}

	public void setPrecio(double precio) {
		this.precio = precio;
	}

	public String getFoto() {
		return foto;
	}

	public void setFoto(String foto) {
		this.foto = foto;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public int getDescuento() {
		return descuento;
	}

	public void setDescuento(int descuento) {
		this.descuento = descuento;
	}

	@Override
	public String toString() {
		return "Producto [id=" + id + ", nombre=" + nombre + ", precio=" + precio + ", foto=" + foto + ", descripcion="
				+ descripcion + ", descuento=" + descuento + "]";
	}
	
	
}
