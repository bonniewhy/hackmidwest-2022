package com.hackmidwest.bragbook.domain.repository;

import com.hackmidwest.bragbook.domain.entity.Person;

import java.util.List;

public interface PersonRepository {
    Person getPersonById(String personId);
    List<Person> getAllPeople();
    Person savePerson(Person person);
    void deletePerson(String personId);
}
