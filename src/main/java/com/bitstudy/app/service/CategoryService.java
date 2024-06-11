package com.bitstudy.app.service;

import com.bitstudy.app.dao.CategoryDao;
import com.bitstudy.app.dao.Category_filterDao;
import com.bitstudy.app.domain.CategoryDto;
import com.bitstudy.app.domain.Category_filterDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.*;

@Service
public class CategoryService {

    @Autowired
    private CategoryDao categoryDao;

    @Autowired
    private Category_filterDao category_filterDao; // category_filterDao 선언 및 주입

    public CategoryDto select(int p_seqno) {
        return categoryDao.select(p_seqno);
    }

    public CategoryDto getCategoryByName(String p_name) {
        return categoryDao.selectByName(p_name);
    }

    public CategoryDto getCategoryByPrice(String p_price) {
        return categoryDao.selectByPrice(p_price);
    }

    public int getCount() {
        return categoryDao.count();
    }

    public CategoryDto read(Integer p_seqno) {
        return categoryDao.select(p_seqno);
    }

    public List<CategoryDto> getList() {
        return categoryDao.selectAll();
    }

    public List<CategoryDto> getPage(Map<String, Object> map) {
        return categoryDao.selectPage(map);
    }

    public List<Category_filterDto> getProductsByMultipleConditions(List<String> colors, Integer minPrice, Integer maxPrice, String sizeCount, String gender, String orderBy) {
        Map<String, Object> map = new HashMap<>();
        map.put("colors", colors);
        map.put("minPrice", minPrice);
        map.put("maxPrice", maxPrice);
        map.put("sizeCount", sizeCount);
        map.put("gender", gender);
        map.put("orderBy", orderBy);

        if (colors == null) {
            map.put("colors", new ArrayList<>());
        }
        if (minPrice == null) {
            map.put("minPrice", 0);
        }
        if (maxPrice == null) {
            map.put("maxPrice", Integer.MAX_VALUE);
        }
        if (sizeCount == null || sizeCount.isEmpty()) {
            map.put("sizeCount", null);
        }
        if (gender == null || gender.isEmpty()) {
            map.put("gender", null);
        }
        System.out.println("서비스 map: " + map);
        return category_filterDao.selectProductsByMultiple(map);
    }

    public List<Category_filterDto> getProductsByMultipleConditions(List<String> colors, Integer minPrice, Integer maxPrice, String sizeCount, String pDate, String pPop, String gender, String orderBy) {

        Map<String, Object> map = new HashMap<>();
        map.put("colors", colors);
        map.put("minPrice", minPrice);
        map.put("maxPrice", maxPrice);
        map.put("sizeCount", sizeCount);
        map.put("p_date", pDate);
        map.put("p_pop", pPop);
        map.put("gender", gender);
        map.put("orderBy", orderBy);

        if (colors == null) {
            map.put("colors", new ArrayList<>());
        }
        if (minPrice == null) {
            map.put("minPrice", 0);
        }
        if (maxPrice == null) {
            map.put("maxPrice", Integer.MAX_VALUE);
        }
        if (sizeCount == null || sizeCount.isEmpty()) {
            map.put("sizeCount", null);
        }
        if (gender == null || gender.isEmpty()) {
            map.put("gender", null);
        }
        System.out.println("서비스 map: " + map);
        return category_filterDao.selectProductsByMultiple(map);
    }
}
