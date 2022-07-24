package com.hackmidwest.bragbook.domain.service;

import com.hackmidwest.bragbook.domain.entity.Person;
import com.hackmidwest.bragbook.domain.entity.Type;
import com.hackmidwest.bragbook.domain.repository.TypeRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class TypeServiceImpl implements TypeService{

    private final TypeRepository typeRepository;

    @Override
    public String saveType(Type type) {
        Type savedType = typeRepository.saveType(type);
        return savedType.getId();
    }

    @Override
    public List<Type> getAllTypes() {
        return typeRepository.getAllTypes();
    }

    @Override
    public Type getTypeById(String typeId) {
        return typeRepository.getTypeById(typeId);
    }

    @Override
    public Type updateType(String typeId, Type type) {
        Type typeToUpdate = typeRepository.getTypeById(typeId);
        Type updatedType = new Type().builder()
                .id(typeToUpdate.getId())
                .title(type.getTitle())
                .journeys(type.getJourneys())
                .entries(type.getEntries())
                .people(type.getPeople())
                .isPublic(type.isPublic())
                .build();

        typeRepository.saveType(updatedType);
        return updatedType;
    }

    @Override
    public void deleteType(String typeId) {
        typeRepository.deleteType(typeId);
    }
}
