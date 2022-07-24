package com.hackmidwest.bragbook.exception.handler;

import org.springframework.http.HttpStatus;
import org.springframework.util.StringUtils;
import org.springframework.web.method.annotation.MethodArgumentTypeMismatchException;

import java.util.HashMap;
import java.util.Map;

public class ExceptionBuilder {
    public static final String TITLE = "title";
    public static final String STATUS = "status";
    public static final String DETAIL = "detail";

    /**
     * Builds Error in consistent structure.
     * @param title - name of error being returned
     * @param status - HTTP status of error returned
     * @param detail - more information about why error was returned
     * @return
     */
    public static Map<String, Object> buildError(String title, HttpStatus status, Object detail) {
        // These three if statements are for development-time problems.
        if (StringUtils.isEmpty(title)) {
            throw new IllegalArgumentException(TITLE + " is required");
        }
        if (status == null) {
            throw new IllegalArgumentException(STATUS + " is required");
        }
        if (StringUtils.isEmpty(detail)) {
            throw new IllegalArgumentException(DETAIL + " is required");
        }
        Map<String, Object> map = new HashMap<>();
        map.put(TITLE, title);
        map.put(STATUS, status.value());
        map.put(DETAIL, detail);
        return map;
    }

    /**
     * Builds consistent message for MethodArgumentTypeMismatchException.
     * @param exception - exception that a message is being made for.
     * @return
     */
    public static String argumentTypeMismatchMessage(MethodArgumentTypeMismatchException exception) {
        String paramName = exception.getParameter().getParameterName();
        String expectedType = exception.getParameter().getParameterType().getSimpleName();
        return "'" + paramName + "' does not match expected type: " + expectedType;
    }
}
