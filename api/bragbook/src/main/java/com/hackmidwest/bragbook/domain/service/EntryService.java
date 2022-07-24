package com.hackmidwest.bragbook.domain.service;

import com.hackmidwest.bragbook.domain.entity.Entry;

import java.util.List;

public interface EntryService {
    String saveEntry(Entry entry);

    Entry getEntryById(String entryId);

    List<Entry> getAllEntries();

    Entry updateEntry(String entryId, Entry entry);

    void deleteEntry(String entryId);
}
