package com.hackmidwest.bragbook.exception;

public class JourneyNotFoundException extends RuntimeException {

    public static final String MESSAGE = "No journey found with matching ID.";

    public JourneyNotFoundException() {
        super(MESSAGE);
    }
}
