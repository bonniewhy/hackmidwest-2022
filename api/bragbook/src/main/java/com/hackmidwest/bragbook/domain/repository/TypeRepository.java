package com.hackmidwest.bragbook.domain.repository;
import com.hackmidwest.bragbook.domain.entity.Type;

import java.util.List;

public interface TypeRepository {

        Type getTypeById(String typeId);
        List<Type> getAllTypes();
        Type saveType(Type type);
        void deleteType(String typeId);
    }
