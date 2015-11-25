/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package my.com.three.service;


import my.com.three.dao.ManufacturerDAO;
import my.com.three.model.Manufacturer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 *
 * @author Yevgeni
 */
@Service
public class ManufacturerServiceImpl implements ManufacturerService {

    @Autowired
    private ManufacturerDAO manufacturerDAO;

    @Transactional
    @Override
    public void addManufacturer(Manufacturer manufacturer) {
        manufacturerDAO.addManufacturer(manufacturer);
    }

    @Transactional
    @Override
    public List<Manufacturer> listManufacturer() {

        return manufacturerDAO.listManufacturer();
    }
    @Transactional
    @Override
    public void deleteManufacturer(Integer id){
        manufacturerDAO.deleteManufacturer(id);
    }
}
