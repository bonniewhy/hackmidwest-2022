package com.hackmidwest.bragbook.exception;

public class TypeNotFoundException extends RuntimeException {

    public static final String MESSAGE = "No type found with matching ID.";

    public TypeNotFoundException() {
        super(MESSAGE);
    }
}
