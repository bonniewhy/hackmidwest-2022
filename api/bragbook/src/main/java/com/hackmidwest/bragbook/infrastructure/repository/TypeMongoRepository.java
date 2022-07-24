package com.hackmidwest.bragbook.infrastructure.repository;

import com.hackmidwest.bragbook.domain.entity.Type;
import org.springframework.data.mongodb.repository.MongoRepository;

public interface TypeMongoRepository extends MongoRepository<Type, String> {

}