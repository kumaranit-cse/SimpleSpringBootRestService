package com.in28minutes.springboot.rest.example.student;

import org.jspecify.annotations.NonNull;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface StudentRepository extends JpaRepository<@NonNull Student, @NonNull Long> {

}
