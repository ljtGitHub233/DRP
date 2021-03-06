package com.drp.service;

import java.util.List;

import com.drp.pojo.Inventory;

/**
 * @author 刘江涛
 * @ClassName: IInventoryService
 * @Description: 业务逻辑层接口：库存
 * @date 2017年11月1日 下午2:21:22
 */
public interface IInventoryService {
    Inventory add(Inventory inventory);

    void delete(Integer id);

    void deleteByIds(List<Integer> ids);

    Inventory update(Inventory inventory);

    Inventory findOne(Integer id);

    List<Inventory> findAll();

}
