package io.jumpco.demo.todo.model;

public enum TodoType {
	
	TASK("T"),
	BUG("B"),
	FEATURE ("F"),
	ENHANCEMENT("E"),
	MAINTENANCE("M");

	private String name;

	TodoType(String name) {
		this.name = name;
	}
	public  String getName(){
		return  name;
	}
}