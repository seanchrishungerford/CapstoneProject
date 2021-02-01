package com.finalproject;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
@Repository
public interface AnOrderRepository extends CrudRepository<AnOrder, Long> {

 
	
}
