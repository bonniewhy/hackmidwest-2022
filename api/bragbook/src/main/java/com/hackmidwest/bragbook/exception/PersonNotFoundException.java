package com.hackmidwest.bragbook.exception;

public class PersonNotFoundException extends RuntimeException {

    public static final String MESSAGE = "No person found with matching ID.";

    public PersonNotFoundException() {
        super(MESSAGE);
    }
}
