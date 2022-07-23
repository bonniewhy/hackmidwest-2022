package com.hackmidwest.bragbook.domain.service;

import com.hackmidwest.bragbook.domain.entity.Journey;

public interface JourneyService {
    Journey updateJourney(String journeyId, Journey journey);
}
