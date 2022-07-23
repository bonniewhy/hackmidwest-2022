package com.hackmidwest.bragbook.domain.repository;

import com.hackmidwest.bragbook.domain.entity.Journey;

import java.util.List;

public interface JourneyRepository {
    Journey getJourneyByTitle(String title);
    List<Journey> getAll();
}
