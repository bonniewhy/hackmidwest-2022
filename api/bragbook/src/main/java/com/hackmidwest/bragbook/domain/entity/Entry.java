package com.hackmidwest.bragbook.domain.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

import java.time.ZonedDateTime;
import java.util.List;

@Document("entries")
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
public class Entry {

    @Id
    private String id;

    private String title;
    private String body;
    private List<Type> types;
    private List<Person> people;
    private boolean isPublic;
    private List<Status> status;
    private ZonedDateTime completedDate;

}
