package com.hackmidwest.bragbook.domain.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

import java.util.List;

@Document("type")
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
public class Type {
    @Id
    private String id;

    public String title;
    public List<Journey> journeys;
    public List<Entry> entries;
    public List<Person> people;
    public boolean isPublic;
}
