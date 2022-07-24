package com.hackmidwest.bragbook.domain.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;
import java.time.ZonedDateTime;

@Document("prompts")
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
public class Prompt {
    @Id
    private String id;

    public String body;
    public String title;
    public Journey journey;
    public boolean completed;
    public Entry entry;
    public ZonedDateTime completedDate;
}
