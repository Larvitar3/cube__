package com.threebee.starentertainment.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.threebee.starentertainment.entity.MembershipEntity;

public interface IMembershipRepository extends JpaRepository<MembershipEntity, Integer>{

}
