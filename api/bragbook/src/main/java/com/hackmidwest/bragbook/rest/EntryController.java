package com.hackmidwest.bragbook.rest;

import com.hackmidwest.bragbook.domain.entity.Entry;
import com.hackmidwest.bragbook.domain.service.EntryService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RequiredArgsConstructor
@RestController
@RequestMapping("/entry")
public class EntryController {

    private final EntryService entryService;

    @PostMapping(consumes = {MediaType.APPLICATION_JSON_VALUE})
    public String saveEntry(@RequestBody Entry entry) {
        String savedEntryId = entryService.saveEntry(entry);
        return "entry saved: " + savedEntryId;
    }

    @GetMapping(path = "/{entryId}")
    public Entry getEntryById(@PathVariable String entryId) {
        return entryService.getEntryById(entryId);
    }

    @GetMapping(path = "/")
    public List<Entry> getAllEntries() {
        return entryService.getAllEntries();
    }

    @PutMapping(path = "/{entryId}", consumes = {MediaType.APPLICATION_JSON_VALUE})
    public Entry updateEntry(@PathVariable String entryId, @RequestBody Entry entry) {
        return entryService.updateEntry(entryId, entry);
    }

    @DeleteMapping(path = "/{entryId}")
    public String deleteEntry(@PathVariable String entryId) {
        entryService.deleteEntry(entryId);
        return "entry deleted";
    }
}
