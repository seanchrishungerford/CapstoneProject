package com.finalproject;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;


@Repository
public interface AProductRepository extends CrudRepository<AProduct, Long> {

	
	public AProduct findByName(String name);
	

	public AProduct findByGenre(String genre);
	
	public AProduct findByDescription(String description);
	
	public AProduct findByPrice(double price);

}
