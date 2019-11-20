package com.schoolTao.dao;

import com.schoolTao.pojo.Need;
import com.schoolTao.pojo.NeedExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface NeedMapper {
    long countByExample(NeedExample example);

    int deleteByExample(NeedExample example);

    int deleteByPrimaryKey(Integer needId);

    int insert(Need record);

    int insertSelective(Need record);

    List<Need> selectByExample(NeedExample example);
    
    List<Need> selectNeedAndUser(NeedExample example);

    Need selectByPrimaryKey(Integer needId);

    int updateByExampleSelective(@Param("record") Need record, @Param("example") NeedExample example);

    int updateByExample(@Param("record") Need record, @Param("example") NeedExample example);

    int updateByPrimaryKeySelective(Need record);

    int updateByPrimaryKey(Need record);
    
    int incNum(Integer needId);

	int addNum(Integer needId);
}