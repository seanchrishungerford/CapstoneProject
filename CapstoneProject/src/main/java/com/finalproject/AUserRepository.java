package com.finalproject;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface AUserRepository extends CrudRepository<AUser, Long> {

//    @Query("SELECT u FROM auser u WHERE u.username = :username")
//    public AUser getUserByUsername(@Param("username") String username);
	AUser getUserByUsername(String username);
//	
//    @Query("SELECT u FROM auser u WHERE u.password = :password")
//    public AUser getUserByPassword(@Param("password") String password);
	AUser getUserByPassword(String password);
}
