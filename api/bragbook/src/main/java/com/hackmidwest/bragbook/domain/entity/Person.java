package com.hackmidwest.bragbook.domain.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

import java.time.ZonedDateTime;
import java.util.List;

@Document("person")
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
public class Person {

    @Id
    private String id;

    private String firstName;
    private String lastName;
    private String city;
    private String state;
    private String photo;
    private String email;
    private String password;
    private String phoneNumber;
    private ZonedDateTime dateCreated;
    private ZonedDateTime lastLoggedIn;
    private String profile;

}
