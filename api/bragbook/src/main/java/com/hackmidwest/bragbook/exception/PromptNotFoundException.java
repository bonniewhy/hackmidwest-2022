package com.hackmidwest.bragbook.exception;

public class PromptNotFoundException extends RuntimeException {

    public static final String MESSAGE = "No prompt found with matching ID.";

    public PromptNotFoundException() {
        super(MESSAGE);
    }
}
