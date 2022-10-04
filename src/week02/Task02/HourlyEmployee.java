package week02.Task02;

import week02.Task01.Employee;

public class HourlyEmployee extends Employee{
	private double wage;
	private double hours;
	
	public HourlyEmployee() {}
	
	public HourlyEmployee(String firstName, String lastName, String socialSecurityNumber, double wage, double hours) {
		super(firstName, lastName, socialSecurityNumber);
		this.setWage(wage);
		this.setHours(hours);
	}
	
	public double getWage() {
		return wage;
	}
	public void setWage(double wage) {
		if (!(wage > 0))
			throw new IllegalArgumentException("Invalid wage!");
		this.wage = wage;
	}
	public double getHours() {
		return hours;
	}
	public void setHours(double hours) {
		if(!(hours > 0 && hours <= 168))
			throw new IllegalArgumentException("Invalid hours");
		this.hours = hours;
	}
	
	@Override
	public double getPaymentAmount() {
		if (this.hours <= 40)
			return this.wage * this.hours;
		else
			return (40 * this.wage) + ((this.hours - 40) * wage) * 1.5; 
	}
	
	@Override
	public String toString() {
		return String.format("hourly employee: %s\nhourly wage: %.2f; hours worked: %.2f", super.toString(), this.wage, this.hours);
	}
}
