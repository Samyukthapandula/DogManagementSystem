/**
 * 
 */
package com.example.DMS.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.example.DMS.models.Dog;

/**
 * @author Samyuktha Pandula
 *
 */
public interface DogRepository extends CrudRepository<Dog,Integer> {

	List<Dog> findByName(String name);
}
