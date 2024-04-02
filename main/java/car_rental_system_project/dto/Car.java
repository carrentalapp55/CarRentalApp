package car_rental_system_project.dto;

import java.util.Arrays;

public class Car {
	private String brand;
	private String Model;
	
	private String fuel;
	private double price;
	private int capacity;
	private byte[] photo;
	
	public String getModel() {
		return Model;
	}
	public void setModel(String model) {
		Model = model;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getFuel() {
		return fuel;
	}
	public void setFuel(String fuel) {
		this.fuel = fuel;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getCapacity() {
		return capacity;
	}
	public void setCapacity(int capacity) {
		this.capacity = capacity;
	}
	public byte[] getPhoto() {
		return photo;
	}
	public void setPhoto(byte[] photo) {
		this.photo = photo;
	}
	@Override
	public String toString() {
		return "Car [ Model=" + Model + ", brand=" + brand + ", fuel=" + fuel + ", price=" + price
				+ ", capacity=" + capacity + ", photo=" + Arrays.toString(photo) + "]";
	}
	
	
	

}
