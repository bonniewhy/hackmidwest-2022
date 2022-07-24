package com.hackmidwest.bragbook.exception;

public class AffirmationNotFoundException extends RuntimeException {

    public static final String MESSAGE = "No affirmation found with matching ID.";

    public AffirmationNotFoundException() { super(MESSAGE); }

}
