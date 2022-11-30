package kontrolno;

import java.util.Date;

enum Status {
	open,
	todo,
	inprogress,
	done
};

public abstract class BoardItem {
	private String title;
	private Date dueDate;
	private Status status;
	
	public BoardItem() {}
	
	public BoardItem(String title, Date dueDate) {
		this.setTitle(title);
		this.setDueDate(dueDate);
	}
	
	public BoardItem(String title, Date dueDate, Status status) {
		this.setTitle(title);
		this.setDueDate(dueDate);
		this.setStatus(status);
	}
	
	public abstract void moveForward();
	public abstract void moveBackward();
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		if (!(title.length() > 2))
			throw new IllegalArgumentException("Invalid title!");
		this.title = title;
	}
	public Date getDueDate() {
		return dueDate;
	}
	public void setDueDate(Date dueDate) {
		this.dueDate = dueDate;
	}

	public Status getStatus() {
		return status;
	}

	public void setStatus(Status status) {
		this.status = status;
	}
	
	@SuppressWarnings("deprecation")
	public String toString() {
		return String.format("Task: %s\nDue date: %s\nStatus: %s", this.getTitle(), this.getDueDate().toLocaleString(), this.getStatus().name());
	}
}
