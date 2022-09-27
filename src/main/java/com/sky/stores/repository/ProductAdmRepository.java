package com.sky.stores.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.sky.stores.entity.Product;

public interface ProductAdmRepository extends JpaRepository<Product, Long> {
}
