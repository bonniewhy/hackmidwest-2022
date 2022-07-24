package com.hackmidwest.bragbook.domain.service;

import com.hackmidwest.bragbook.domain.entity.Person;
import com.hackmidwest.bragbook.domain.repository.PersonRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class PersonServiceImpl implements PersonService{

    private final PersonRepository personRepository;

    @Override
    public String savePerson(Person person) {
        Person savedPerson = personRepository.savePerson(person);
        return savedPerson.getId();
    }

    @Override
    public Person getPersonById(String personId) {
        return personRepository.getPersonById(personId);
    }

    @Override
    public List<Person> getAllPeople() {
        return personRepository.getAllPeople();
    }

    @Override
    public Person updatePerson(String personId, Person person) {
        Person personToUpdate = personRepository.getPersonById(personId);
        Person updatedPerson = new Person().builder()
                .id(personToUpdate.getId())
                .firstName(person.getFirstName())
                .lastName(person.getLastName())
                .city(person.getCity())
                .state(person.getState())
                .photo(person.getPhoto())
                .email(person.getEmail())
                .password(person.getPassword())
                .phoneNumber(person.getPhoneNumber())
                .dateCreated(person.getDateCreated())
                .lastLoggedIn(person.getLastLoggedIn())
                .profile(person.getProfile())
                .build();

        personRepository.savePerson(updatedPerson);
        return updatedPerson;
    }

    @Override
    public void deletePerson(String personId) {
        personRepository.deletePerson(personId);
    }
}
