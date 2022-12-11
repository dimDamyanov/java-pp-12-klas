package kontrolno2;

public class Product {
	private String name;
	private double price;
	private Currency currency;
	
	public Product() {}
	public Product(String name, double price, Currency currency) {
		this.setName(name);
		this.setPrice(price);
		this.setCurrency(currency);
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		if (!(name.length() > 3))
			throw new IllegalArgumentException("Invalid name!");
		this.name = name;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		if (!(price > 0))
			throw new IllegalArgumentException("Invalid price!");
		this.price = price;
	}
	public Currency getCurrency() {
		return currency;
	}
	public void setCurrency(Currency currency) {
		this.currency = currency;
	}
	
	public String toString() {
		return String.format("Name: %s\nPrice: %.2f\nCurrency: %s\n", this.getName(), this.getPrice(), this.getCurrency().name());
	}

}
