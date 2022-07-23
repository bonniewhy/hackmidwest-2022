package com.hackmidwest.bragbook.domain.service;

import com.hackmidwest.bragbook.domain.entity.Journey;

public interface JourneyService {
    String saveJourney(Journey journey);
    Journey getJourneyById(String journeyId);
    Journey updateJourney(String journeyId, Journey journey);
    void deleteJourney(String journeyId);
}
