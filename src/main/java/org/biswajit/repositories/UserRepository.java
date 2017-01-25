package org.biswajit.repositories;

import org.biswajit.data.enitites.AutoUser;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository 
public interface UserRepository extends JpaRepository<AutoUser, Long> {

}

