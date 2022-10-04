package week02.Task02;

import java.util.ArrayList;
import java.util.Iterator;

import week02.Task01.Invoice;
import week02.Task01.Payable;
import week02.Task01.SalariedEmployee;

public class PayableTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ArrayList<Payable> payables = new ArrayList<Payable>();
		payables.add(new Invoice("895654", "LED-Red - 0.05W, 1.2V", 50, 0.05));
		payables.add(new SalariedEmployee("Ivan", "Malinov", "6905166021", 512));
		payables.add(new CommisionEmployee("Georgi", "Ivanov - Gonzo", "7607025066", 12584, 0.12));
		payables.add(new HourlyEmployee("Dimitar", "Penev - Penata", "4507124862", 12, 40));
		payables.add(new BasePlusCommissionEmployee("Bilal", "Bari", "9801196098", 94568, 0.15, 5000));
		
		Iterator<Payable> iterator = payables.iterator();
		while (iterator.hasNext())
			System.out.println(iterator.next().getPaymentAmount());
	}
}
