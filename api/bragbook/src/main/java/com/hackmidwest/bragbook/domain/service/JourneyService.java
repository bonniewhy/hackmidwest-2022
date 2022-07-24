package com.hackmidwest.bragbook.domain.service;

import com.hackmidwest.bragbook.domain.entity.Journey;

import java.util.List;

public interface JourneyService {
    String saveJourney(Journey journey);
    Journey getJourneyById(String journeyId);
    List<Journey> getAllJourneys();
    Journey updateJourney(String journeyId, Journey journey);
    void deleteJourney(String journeyId);
}
