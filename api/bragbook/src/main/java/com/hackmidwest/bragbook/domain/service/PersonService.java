package com.hackmidwest.bragbook.domain.service;

import com.hackmidwest.bragbook.domain.entity.Person;

import java.util.List;

public interface PersonService {
    String savePerson(Person person);
    Person getPersonById(String personId);
    List<Person> getAllPeople();
    Person updatePerson(String personId, Person person);
    void deletePerson(String personId);
}
