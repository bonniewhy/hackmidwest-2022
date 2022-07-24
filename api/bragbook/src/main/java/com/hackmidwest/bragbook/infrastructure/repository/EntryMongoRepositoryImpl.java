package com.hackmidwest.bragbook.infrastructure.repository;

import com.hackmidwest.bragbook.domain.entity.Entry;
import com.hackmidwest.bragbook.domain.repository.EntryRepository;
import com.hackmidwest.bragbook.exception.EntryNotFoundException;
import org.springframework.context.annotation.Lazy;

import java.util.List;
import java.util.Optional;

public class EntryMongoRepositoryImpl implements EntryRepository {

    private final EntryMongoRepository entryRepository;

    public EntryMongoRepositoryImpl(@Lazy EntryMongoRepository entryRepository) {
        this.entryRepository = entryRepository;
    }

    @Override
    public Entry saveEntry(Entry entry) {
        return entryRepository.save(entry);
    }

    @Override
    public Entry getEntryById(String entryId) {
        Optional<Entry> entry = entryRepository.findById(entryId);

        if (entry.isPresent()) {
            return entry.get();
        } else {
            throw new EntryNotFoundException();
        }
    }

    @Override
    public List<Entry> getAllEntries() {
        return entryRepository.findAll();
    }

    @Override
    public void deleteEntry(String entryId) {
        entryRepository.deleteById(entryId);
    }
}
