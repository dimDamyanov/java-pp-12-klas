package week02.Task02;

import week02.Task01.Employee;

public class CommisionEmployee extends Employee{
	private double grossSales;
	private double commisionRate;
	
	public CommisionEmployee() {}
	public CommisionEmployee(String firstName, String lastName, String socialSecurityNumber, double grossSales, double commisionRate) {
		super(firstName, lastName, socialSecurityNumber);
		this.setGrossSales(grossSales);
		this.setCommisionRate(commisionRate);
	}
	
	@Override
	public double getPaymentAmount() {
		return grossSales * commisionRate;
	}

	public double getGrossSales() {
		return grossSales;
	}

	public void setGrossSales(double grossSales) {
		if (!(grossSales > 0))
			throw new IllegalArgumentException("Invalid gross sales!");
		this.grossSales = grossSales;
	}

	public double getCommisionRate() {
		return commisionRate;
	}

	public void setCommisionRate(double commisionRate) {
		if(!(commisionRate > 0 && commisionRate < 1))
			throw new IllegalArgumentException("Invalid commision rate!");
		this.commisionRate = commisionRate;
	}
	
	@Override
	public String toString() {
		return String.format("commision employee: %s\ngross sales: %.2f\ncommision rate: %.2f", super.toString(), this.grossSales, this.commisionRate);
	}
}
