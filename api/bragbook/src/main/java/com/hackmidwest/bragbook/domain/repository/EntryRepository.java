package com.hackmidwest.bragbook.domain.repository;

import com.hackmidwest.bragbook.domain.entity.Entry;

import java.util.List;

public interface EntryRepository {
    Entry saveEntry(Entry entry);

    Entry getEntryById(String entryId);

    List<Entry> getAllEntries();

    void deleteEntry(String entryId);
}
