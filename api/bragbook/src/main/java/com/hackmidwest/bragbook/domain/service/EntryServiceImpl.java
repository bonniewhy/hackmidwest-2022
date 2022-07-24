package com.hackmidwest.bragbook.domain.service;

import com.hackmidwest.bragbook.domain.entity.Entry;
import com.hackmidwest.bragbook.domain.repository.EntryRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class EntryServiceImpl implements EntryService {

    private final EntryRepository entryRepository;

    @Override
    public String saveEntry(Entry entry) {
        Entry savedEntry = entryRepository.saveEntry(entry);
        return savedEntry.getId();
    }

    @Override
    public Entry getEntryById(String entryId) {
        return entryRepository.getEntryById(entryId);
    }

    @Override
    public List<Entry> getAllEntries() {
        return entryRepository.getAllEntries();
    }

    @Override
    public Entry updateEntry(String entryId, Entry entry) {
        Entry entryToUpdate = entryRepository.getEntryById(entryId);
        Entry updatedEntry = new Entry().builder()
                .id(entryToUpdate.getId())
                .title(entry.getTitle())
                .body(entry.getBody())
                .types(entry.getTypes())
                .people(entry.getPeople())
                .isPublic(entry.isPublic())
                .status(entry.getStatus())
                .completedDate(entry.getCompletedDate())
                .build();

        entryRepository.saveEntry(entry);
        return updatedEntry;
    }

    @Override
    public void deleteEntry(String entryId) {
        entryRepository.deleteEntry(entryId);
    }
}
