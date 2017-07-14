package co.com.pruebas.model;


public class Producto {

	private int id;
	private String nombre;
	private float valor;
	private String pais;
	
	public Producto() {
	}
	
	public Producto(int id, String nombre, float valor, String pais) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.valor = valor;
		this.pais = pais;
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
	public float getValor() {
		return valor;
	}
	public void setSalario(float valor) {
		this.valor = valor;
	}
	public String getPais() {
		return pais;
	}
	public void setPais(String pais) {
		this.pais = pais;
	}
	
	
}
