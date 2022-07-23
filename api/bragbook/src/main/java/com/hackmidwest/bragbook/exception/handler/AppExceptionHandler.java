package com.hackmidwest.bragbook.exception.handler;

import com.hackmidwest.bragbook.exception.JourneyNotFoundException;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import java.util.Collections;
import java.util.Map;

@RestControllerAdvice
public class AppExceptionHandler {
    public static final String JOURNEY_NOT_FOUND = "Journey Not Found";

    @ExceptionHandler(JourneyNotFoundException.class)
    public ResponseEntity<Object> handleException(JourneyNotFoundException exception) {
        Map<String, Object> map = ExceptionBuilder.buildError(JOURNEY_NOT_FOUND, HttpStatus.NOT_FOUND,
                exception.getLocalizedMessage() == null ? JOURNEY_NOT_FOUND : exception.getLocalizedMessage());
        return new ResponseEntity<>(Collections.singletonList(map), HttpStatus.BAD_REQUEST);
    }
}
