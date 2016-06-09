/*
 * #{copyright}#
 */
package com.hand.hap.job.mapper;

import java.util.List;

import com.hand.hap.job.dto.JobRunningInfoDto;

/**
 *
 * @author liyan.shi@hand-china.com
 */
public interface JobRunningInfoDtoMapper {
    int deleteByPrimaryKey(Long jobRunningInfoId);

    int insert(JobRunningInfoDto record);
    
    List<JobRunningInfoDto> select(JobRunningInfoDto example);

    JobRunningInfoDto selectByPrimaryKey(Long jobRunningInfoId);

    int updateByPrimaryKeySelective(JobRunningInfoDto record);

    int updateByPrimaryKey(JobRunningInfoDto record);
    
    void deleteByNameGroup(JobRunningInfoDto example);
}