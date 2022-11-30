package kontrolno;

import java.util.ArrayList;
import java.util.Iterator;

public class Board {
	ArrayList<Task> taskList = new ArrayList<Task>();
	
	public Board() {}
	
	public Board(ArrayList<Task> taskList) {
		this.taskList = taskList;
	}
	
	public void addItem(Task task) {
		this.taskList.add(task);
	}
	
	public void totalItems() {
		Iterator<Task> it = this.taskList.iterator();
		while (it.hasNext()) {
			System.out.println(it.next().toString());
		}
	}
}
