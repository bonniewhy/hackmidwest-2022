package com.hackmidwest.bragbook.domain.entity;

import java.time.ZonedDateTime;
import java.util.List;

public class Entry {
    String title;
    String body;
    ZonedDateTime type;
    List<Person> people;
    boolean isPublic;
    List<Status> status;
    ZonedDateTime completedDate;
}
