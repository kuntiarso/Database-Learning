package com.kun.learn.postgres.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.kun.learn.postgres.exception.ResourceNotFoundException;
import com.kun.learn.postgres.model.Person;
import com.kun.learn.postgres.repository.PersonRepository;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/person")
public class PersonController {

    @Autowired
    private PersonRepository personRepository;

    // get all person
    @GetMapping("/get-all")
    public List<Person> getAllPerson() {
        return this.personRepository.findAll();
    }

    // get person by id
    @GetMapping("/get-by-id/{id}")
    public ResponseEntity<Person> getPersonById(@PathVariable(value = "id") Long personId)
            throws ResourceNotFoundException {
        Person person = personRepository.findById(personId)
                .orElseThrow(() -> new ResourceNotFoundException("person with id " + personId + " is not found!"));

        return ResponseEntity.ok().body(person);
    }

    // post person
    @PostMapping("/create")
    public JSONObject createPerson(@RequestBody Person personBody) {
        Map<Object, Object> res = new HashMap<>();

        Person person = new Person();
        person.setFirstName(personBody.getFirstName());
        person.setLastName(personBody.getLastName());
        person.setEmail(personBody.getEmail());
        person.setGender(personBody.getGender());
        person.setDateOfBirth(new Date());
        person.setCountryOfBirth(personBody.getCountryOfBirth());
        personRepository.save(person);

        res.put("code", "200");
        res.put("person_id", person.getId().toString());

        return new JSONObject(res);

    }

    // update person
    @PutMapping("/update/{id}")
    public ResponseEntity<Person> updatePerson(@PathVariable(value = "id") Long personId,
            @RequestBody Person personBody) throws ResourceNotFoundException {
        Person person = personRepository.findById(personId)
                .orElseThrow(() -> new ResourceNotFoundException("person with id " + personId + " is not found"));

        person.setFirstName(personBody.getFirstName());
        person.setLastName(personBody.getLastName());
        person.setEmail(personBody.getEmail());
        person.setGender(personBody.getGender());
        person.setDateOfBirth(new Date());
        person.setCountryOfBirth(personBody.getCountryOfBirth());

        return ResponseEntity.ok(this.personRepository.save(person));
    }

    // detele person
    @DeleteMapping("/delete/{id}")
    public Map<String, Boolean> deletePerson(@PathVariable(value = "id") Long personId)
            throws ResourceNotFoundException {
        Person person = personRepository.findById(personId)
                .orElseThrow(() -> new ResourceNotFoundException("person with id " + personId + " is not found"));

        this.personRepository.delete(person);

        Map<String, Boolean> response = new HashMap<>();
        response.put("deleted", Boolean.TRUE);

        return response;
    }

}
