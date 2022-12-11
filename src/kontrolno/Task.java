package kontrolno;

public class Task extends BoardItem{
	private String assignee;
	
	public Task(String assignee) {
		this.setAssignee(assignee);
		this.setStatus(Status.todo);
	}
	
	public String getAssignee() {
		return assignee;
	}
	public void setAssignee(String assignee) {
		if (!(assignee.length() > 2))
			throw new IllegalArgumentException("Invalid assignee!");
		this.assignee = assignee;
	}
	
	@Override
	public void moveForward() {
		switch (this.getStatus()) {
		case todo:
			this.setStatus(Status.inprogress);
			break;
		case inprogress:
			this.setStatus(Status.done);
		default:
			break;
		}
	}
	
	@Override
	public void moveBackward() {
		switch (this.getStatus()) {
		case done:
			this.setStatus(Status.inprogress);
			break;
		case inprogress:
			this.setStatus(Status.todo);
		default:
			break;
		}
	}
	
	@Override
	public String toString() {
		return String.format("%s\nAssignee: %s\n", super.toString(), this.getAssignee());
	}

}
