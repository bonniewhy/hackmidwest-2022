package com.hackmidwest.bragbook.domain.service;

import com.hackmidwest.bragbook.domain.entity.Type;

import java.util.List;

public interface TypeService {
    String saveType(Type type);
    Type getTypeById(String typeId);
    List<Type> getAllTypes();
    Type updateType(String typeId, Type type);
    void deleteType(String typeId);
}
