package week02.Task03;

public class Truck extends Car{
	private int Tonnage;

	public int getTonnage() {
		return Tonnage;
	}

	public void setTonnage(int tonnage) {
		if (!(tonnage > 0))
			throw new IllegalArgumentException("Invalid tonnage!");
		Tonnage = tonnage;
	}
	
	@Override
	public double Price() {
		if (this.getYearsFromRelease() <= 5)
			return this.getValue();
		else if (this.getTonnage() <= 5)
			return this.getValue() * 0.3;
		else if (this.getTonnage() > 5 && this.getTonnage() <= 10)
			return this.getValue() * 0.6;
		else
			return this.getValue() * 0.8;
	}
}
