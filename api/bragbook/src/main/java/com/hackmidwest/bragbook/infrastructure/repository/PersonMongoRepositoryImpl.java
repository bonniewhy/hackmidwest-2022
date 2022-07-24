package com.hackmidwest.bragbook.infrastructure.repository;

import com.hackmidwest.bragbook.domain.entity.Person;
import com.hackmidwest.bragbook.domain.repository.PersonRepository;
import com.hackmidwest.bragbook.exception.PersonNotFoundException;
import org.springframework.context.annotation.Lazy;

import java.util.List;
import java.util.Optional;

public class PersonMongoRepositoryImpl implements PersonRepository {

    private final PersonMongoRepository personRepository;

    public PersonMongoRepositoryImpl(@Lazy PersonMongoRepository personRepository) {
        this.personRepository = personRepository;
    }

    @Override
    public Person savePerson(Person person) {
        return personRepository.save(person);
    }

    @Override
    public Person getPersonById(String personId) {
        Optional<Person> person = personRepository.findById(personId);

        if (person.isPresent()) {
            return person.get();
        } else {
            throw new PersonNotFoundException();
        }
    }

    @Override
    public List<Person> getAllPeople() {
        return personRepository.findAll();
    }

    @Override
    public void deletePerson(String personId) {
        personRepository.deleteById(personId);
    }
}