package com.hackmidwest.bragbook.domain.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document("affirmations")
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
public class Affirmation {

    @Id
    private String id;

    private String title;
    private Person person;
    private boolean isPublic;
}
