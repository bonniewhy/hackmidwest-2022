package com.hackmidwest.bragbook.domain.service;

import com.hackmidwest.bragbook.domain.entity.Type;

public interface TypeService {
    String saveType(Type type);
    Type getTypeById(String typeId);
    Type updateType(String typeId, Type type);
    void deleteType(String typeId);
}
