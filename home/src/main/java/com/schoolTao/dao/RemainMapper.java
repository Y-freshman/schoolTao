package com.schoolTao.dao;

import com.schoolTao.pojo.Remain;
import com.schoolTao.pojo.RemainExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface RemainMapper {
    long countByExample(RemainExample example);

    int deleteByExample(RemainExample example);

    int deleteByPrimaryKey(Integer remainId);

    int insert(Remain record);

    int insertSelective(Remain record);

    List<Remain> selectByExample(RemainExample example);

    Remain selectByPrimaryKey(Integer remainId);

    int updateByExampleSelective(@Param("record") Remain record, @Param("example") RemainExample example);

    int updateByExample(@Param("record") Remain record, @Param("example") RemainExample example);

    int updateByPrimaryKeySelective(Remain record);

    int updateByPrimaryKey(Remain record);
}