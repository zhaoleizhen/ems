package com.baizhi.dao;

import com.baizhi.entity.GAdmin;
import java.util.List;

public interface GAdminMapper {
    int deleteByPrimaryKey(String id);

    int insert(GAdmin record);

    GAdmin selectByPrimaryKey(String id);

    List<GAdmin> selectAll();

    int updateByPrimaryKey(GAdmin record);
}