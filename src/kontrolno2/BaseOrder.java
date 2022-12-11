package kontrolno2;

import java.util.ArrayList;
import java.util.Iterator;

enum Currency {
	bgn,
	eur,
	aud
};

public class BaseOrder implements Order {

	private String recipient;
	private Currency currency;
	public ArrayList<Product> productList = new ArrayList<Product>();
	
	@Override
	public String getRecipient() {
		return this.recipient;
	}

	@Override
	public void addItem(Product item) {
		this.productList.add(item);
	}

	@Override
	public String getOrderItemsInfo() {
		StringBuilder sb = new StringBuilder();
		Iterator<Product> it = this.productList.iterator();
		while (it.hasNext()) {
			sb.append("\n" + it.next().toString());
		}
		return sb.toString();
	}

	public void setRecipient(String recipient) {
		if (!(recipient.length() > 2))
			throw new IllegalArgumentException("Invalid recipient!");
		this.recipient = recipient;
	}

	@Override
	public Currency getCurrency() {
		return this.currency;
	}
	
	public double calclulateTotalPrice() {
		double total = 0;
		Iterator<Product> it = this.productList.iterator();
		while (it.hasNext()) {
			total += it.next().getPrice();
		}		
		return total;
	}
}
