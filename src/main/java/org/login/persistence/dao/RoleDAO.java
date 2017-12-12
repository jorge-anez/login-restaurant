package org.login.persistence.dao;

import org.login.persistence.model.Role;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface RoleDAO extends JpaRepository<Role, Long> {

    @Query("SELECT r FROM Role r LEFT JOIN FETCH r.privileges p WHERE r.name = :name")
    Role findByName(@Param("name") String name);

    @Query("SELECT DISTINCT r FROM Role r LEFT JOIN FETCH r.privileges INNER JOIN r.users u WHERE u.username = :username")
    List<Role> findRoleForUser(@Param("username") String username);
}