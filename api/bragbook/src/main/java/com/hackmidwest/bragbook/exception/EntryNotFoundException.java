package com.hackmidwest.bragbook.exception;

public class EntryNotFoundException extends RuntimeException {

    public static final String MESSAGE = "No entry found with matching ID.";

    public EntryNotFoundException() { super(MESSAGE); }

}
