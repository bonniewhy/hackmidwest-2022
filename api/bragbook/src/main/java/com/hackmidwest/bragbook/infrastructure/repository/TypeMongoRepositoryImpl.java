package com.hackmidwest.bragbook.infrastructure.repository;

import com.hackmidwest.bragbook.domain.entity.Type;
import com.hackmidwest.bragbook.domain.repository.TypeRepository;
import com.hackmidwest.bragbook.exception.TypeNotFoundException;
import org.springframework.context.annotation.Lazy;

import java.util.List;
import java.util.Optional;

public class TypeMongoRepositoryImpl implements TypeRepository {
    private TypeMongoRepository typeRepository;

    public TypeMongoRepositoryImpl(@Lazy TypeMongoRepository typeRepository) {
        this.typeRepository = typeRepository;
    }

    @Override
    public Type getTypeById(String typeId) {
        Optional<Type> type = typeRepository.findById(typeId);

        if (type.isPresent()) {
            return type.get();
        } else {
            throw new TypeNotFoundException();
        }
    }

    @Override
    public List<Type> getAllTypes() {
        return typeRepository.findAll();
    }

    @Override
    public Type saveType(Type type) {
        return typeRepository.save(type);
    }

    @Override
    public void deleteType(String typeId) {
        typeRepository.deleteById(typeId);
    }
}
