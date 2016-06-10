/*
 * #{copyright}#
 */

package com.hand.hap.system.mapper;

import java.util.List;

import com.hand.hap.system.dto.Profile;

/**
 * @author Frank.li
 */
public interface ProfileMapper {
    int deleteByPrimaryKey(Profile record);

    int insert(Profile record);

    int insertSelective(Profile record);

    Profile selectByPrimaryKey(Long profileId);

    List<Profile> selectProfiles(Profile example);

    int updateByPrimaryKeySelective(Profile record);

    int updateByPrimaryKey(Profile record);

    Profile selectByName(String profileName);
}