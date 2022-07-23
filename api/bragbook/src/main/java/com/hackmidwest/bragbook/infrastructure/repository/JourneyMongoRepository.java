package com.hackmidwest.bragbook.infrastructure.repository;

import com.hackmidwest.bragbook.domain.entity.Journey;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.mongodb.repository.Query;

import java.util.List;

public interface JourneyMongoRepository extends MongoRepository<Journey, String> {

    @Query("{title: '?0'}")
    Journey findItemByTitle(String title);

    // TODO: Figure out what the query is, if anything.
//    @Query("")
    List<Journey> findAll();
}
