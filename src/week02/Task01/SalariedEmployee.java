package week02.Task01;

public class SalariedEmployee extends Employee {
	private double weeklySalary;

	public SalariedEmployee() {};
	public SalariedEmployee(String firstName, String lastName, String socialSecurityNumber, double weeklySalary) {
		super(firstName, lastName, socialSecurityNumber);
		this.setWeeklySalary(weeklySalary);
	}
	
	public double getWeeklySalary() {
		return weeklySalary;
	}

	public void setWeeklySalary(double weeklySalary) {
		if (!(weeklySalary > 0))
			throw new IllegalArgumentException("Invalid weekly salary!");
		this.weeklySalary = weeklySalary;
	}
	
	@Override
	public double getPaymentAmount() {
		return weeklySalary;
	}
}
