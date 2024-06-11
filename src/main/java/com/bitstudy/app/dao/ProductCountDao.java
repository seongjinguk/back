package com.bitstudy.app.dao;

import com.bitstudy.app.domain.ProductBuyDto;

import java.util.List;

public interface ProductCountDao {
    List<ProductBuyDto> show(int p_seqno, int ps_size);

    List<ProductBuyDto> size(int p_seqno);

    ProductBuyDto count(int ps_size);
    int updateProduct(ProductBuyDto productBuyDto);
}
