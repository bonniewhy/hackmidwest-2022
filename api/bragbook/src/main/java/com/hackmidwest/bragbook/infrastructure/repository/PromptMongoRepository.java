package com.hackmidwest.bragbook.infrastructure.repository;

import com.hackmidwest.bragbook.domain.entity.Prompt;
import org.springframework.data.mongodb.repository.MongoRepository;

public interface PromptMongoRepository extends MongoRepository<Prompt, String> {

}
