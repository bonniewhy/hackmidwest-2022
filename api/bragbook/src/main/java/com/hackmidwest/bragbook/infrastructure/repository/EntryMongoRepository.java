package com.hackmidwest.bragbook.infrastructure.repository;

import com.hackmidwest.bragbook.domain.entity.Entry;
import org.springframework.data.mongodb.repository.MongoRepository;

public interface EntryMongoRepository extends MongoRepository<Entry, String> {
}
