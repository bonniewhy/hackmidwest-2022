package com.hackmidwest.bragbook.rest;

import com.hackmidwest.bragbook.domain.entity.Person;
import com.hackmidwest.bragbook.domain.service.PersonService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RequiredArgsConstructor
@RestController
@RequestMapping("/person")
public class PersonController {

    private final PersonService personService;

    @PostMapping(consumes = {MediaType.APPLICATION_JSON_VALUE})
    public String savePerson(@RequestBody Person person) {
        String savedPersonId = personService.savePerson(person);
        return "person saved: " + savedPersonId;
    }

    @GetMapping(path = "/{personId}")
    public Person getPersonById(@PathVariable String personId) {
        return personService.getPersonById(personId);
    }

    @GetMapping(path = "/")
    public List<Person> getAllPeople() {
        return personService.getAllPeople();
    }

    @PutMapping(path = "/{personId}", consumes = {MediaType.APPLICATION_JSON_VALUE})
    public Person updatePerson(@PathVariable String personId, @RequestBody Person person) {
        return personService.updatePerson(personId, person);
    }

    @DeleteMapping(path = "/{personId}")
    public String deletePerson(@PathVariable String personId) {
        personService.deletePerson(personId);
        return "person deleted";
    }
}
