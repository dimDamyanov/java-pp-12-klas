package week02.Task02;

public class BasePlusCommissionEmployee extends CommisionEmployee {
	private double baseSalary;

	public BasePlusCommissionEmployee() {}
	public BasePlusCommissionEmployee(String firstName, String lastName, String socialSecurityNumber, double grossSales, double commisionRate, double baseSalary) {
		super(firstName, lastName, socialSecurityNumber, grossSales, commisionRate);
		this.setBaseSalary(baseSalary);
	}
	
	public double getBaseSalary() {
		return baseSalary;
	}

	public void setBaseSalary(double baseSalary) {
		if (!(baseSalary > 0))
			throw new IllegalArgumentException("Invalid base salary");
		this.baseSalary = baseSalary;
	}
	
	@Override
	public double getPaymentAmount() {
		return super.getPaymentAmount() + this.baseSalary;
	}
	
	@Override
	public String toString() {
		return String.format("base salaried commision employee: %s\nbase salary: %.2f", super.toString(), this.baseSalary);
	}
}
