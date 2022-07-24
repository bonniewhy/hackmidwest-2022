package com.hackmidwest.bragbook.infrastructure.repository;

import com.hackmidwest.bragbook.domain.entity.Affirmation;
import org.springframework.data.mongodb.repository.MongoRepository;

public interface AffirmationMongoRepository extends MongoRepository<Affirmation, String> {
}
