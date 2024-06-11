package com.bitstudy.app.dao;

import com.bitstudy.app.domain.Category_filterDto;
import java.util.List;
import java.util.Map;

public interface Category_filterDao {
    List<Category_filterDto> selectProductsByMultiple(Map<String, Object> params);
}
