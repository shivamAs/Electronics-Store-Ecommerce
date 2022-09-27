package com.sky.stores.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.sky.stores.entity.Customer;

public interface UserAdmRepository extends JpaRepository<Customer,Long>
{

}
