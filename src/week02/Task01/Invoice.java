package week02.Task01;

public class Invoice implements Payable {
	String partNumber;
	String partDescription;
	private int quantity;
	private double pricePerItem;
	
	public Invoice() {}
	
	public Invoice(String partNumber, String partDescription, int quantity, double pricePerItem) {
		this.partNumber = partNumber;
		this.partDescription = partDescription;
		this.setQuantity(quantity);
		this.setPricePerItem(pricePerItem);
	}
	
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		if (!(quantity > 0))
			throw new IllegalArgumentException("Invalid quantity!");
		this.quantity = quantity;
	}
	public double getPricePerItem() {
		return pricePerItem;
	}
	public void setPricePerItem(double pricePerItem) {
		if (!(pricePerItem > 0))
			throw new IllegalArgumentException("Invalid price per item");
		this.pricePerItem = pricePerItem;
	}
	
	public String toString() {
		return String.format("%s - %s", this.partNumber, this.partDescription);
	}
	
	@Override
	public double getPaymentAmount() {
		return this.quantity * this.pricePerItem;
	}
}
