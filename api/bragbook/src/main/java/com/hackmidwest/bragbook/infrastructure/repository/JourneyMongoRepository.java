package com.hackmidwest.bragbook.infrastructure.repository;

import com.hackmidwest.bragbook.domain.entity.Journey;
import org.springframework.data.mongodb.repository.MongoRepository;

public interface JourneyMongoRepository extends MongoRepository<Journey, String> {

}
