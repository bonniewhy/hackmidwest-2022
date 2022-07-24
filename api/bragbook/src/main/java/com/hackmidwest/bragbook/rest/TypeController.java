package com.hackmidwest.bragbook.rest;

import com.hackmidwest.bragbook.domain.entity.Journey;
import com.hackmidwest.bragbook.domain.entity.Type;
import com.hackmidwest.bragbook.domain.service.TypeService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RequiredArgsConstructor
@RestController
@RequestMapping("/type")
public class TypeController {
    private final TypeService typeService;

    @GetMapping(path = "/{typeId}")
    public Type getTypeByTitle(@PathVariable String typeId) {
        return typeService.getTypeById(typeId);
    }

    @GetMapping(path = "/")
    public List<Type> getAllTypes() {
        return typeService.getAllTypes();
    }

    @PostMapping(consumes = {MediaType.APPLICATION_JSON_VALUE})
    public String saveType(@RequestBody Type type) {
        String savedTypeId = typeService.saveType(type);
        return "type saved: " + savedTypeId;
    }

    @PutMapping(path = "/{typeId}", consumes = {MediaType.APPLICATION_JSON_VALUE})
    public Type updateType(@PathVariable String typeId, @RequestBody Type type) {
        return typeService.updateType(typeId, type);
    }

    @DeleteMapping(path = "/{typeId}")
    public String deleteType(@PathVariable String typeId) {
        typeService.deleteType(typeId);
        return "type deleted";
    }
}
