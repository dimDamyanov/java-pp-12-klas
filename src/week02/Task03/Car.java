package week02.Task03;

import java.util.Calendar;

public class Car {
	private String Brand;
	private int Year;
	private int mileage;
	private double value;

	public String getBrand() {
		return Brand;
	}

	public void setBrand(String brand) {
		Brand = brand;
	}

	public int getYear() {
		return Year;
	}

	public void setYear(int year) {
		if (!(year > 0 && year <= Calendar.getInstance().get(Calendar.YEAR)))
			throw new IllegalArgumentException("Invalid year!");
		Year = year;
	}

	public int getMileage() {
		return mileage;
	}

	public void setMileage(int mileage) {
		this.mileage = mileage;
	}

	public double getValue() {
		return value;
	}

	public void setValue(double value) {
		this.value = value;
	}
	
	public int getYearsFromRelease() {
		return Calendar.getInstance().get(Calendar.YEAR) - this.getYear();
	}
	
	public double Price() {
		if (this.getYearsFromRelease() <= 3)
			return this.getValue() * 0.8;
		else if (this.getYearsFromRelease() >= 4 && this.getYearsFromRelease() <= 6)
			return this.getValue() * 0.6;
		else
			return this.getValue() * 0.3;
	}
}
