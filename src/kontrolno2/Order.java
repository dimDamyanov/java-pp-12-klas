package kontrolno2;

public interface Order {
	public String getRecipient();
	public Currency getCurrency();
	public void addItem(Product item);
	public String getOrderItemsInfo();
}
