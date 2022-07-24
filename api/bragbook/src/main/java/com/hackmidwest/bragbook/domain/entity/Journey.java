package com.hackmidwest.bragbook.domain.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

import java.time.ZonedDateTime;
import java.util.List;

@Document("journeys")
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
public class Journey {

    @Id
    private String id;

    private String title;
    private String description;
    private List<Prompt> prompts;
    private ZonedDateTime startDate;
    private ZonedDateTime completedDate;
    private boolean completed;

}
