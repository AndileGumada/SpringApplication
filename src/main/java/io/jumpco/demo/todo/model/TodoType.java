package io.jumpco.demo.todo.model;

public enum TodoType {
	
	TASK("TASK"),
	BUG("BUG"),
	FEATURE ("FEATURE"),
	ENHANCEMENT("ENHANCEMENT"),
	MAINTENANCE("MAINTENANCE");

	private String name;

	TodoType(String name) {
		this.name = name;
	}
	public  String getName(){
		return  name;
	}
}