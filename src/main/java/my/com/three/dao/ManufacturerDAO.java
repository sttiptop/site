/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package my.com.three.dao;

import my.com.three.model.Manufacturer;

import java.util.List;


/**
 *
 * @author Yevgeni
 */
public interface ManufacturerDAO {

     void addManufacturer(Manufacturer manufacturer);

     List<Manufacturer> listManufacturer();

     void deleteManufacturer(Integer id);
}
