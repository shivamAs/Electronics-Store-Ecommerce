package com.sky.stores.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.sky.stores.entity.Contact;

public interface ContactRepository extends JpaRepository<Contact, Long> {

}
