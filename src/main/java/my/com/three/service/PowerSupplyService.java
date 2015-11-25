/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package my.com.three.service;

import my.com.three.model.Powersupply;

import java.util.List;


/**
 *
 * @author Yevgeni
 */
public interface PowerSupplyService {

    public void addPowerSupply(Powersupply powerSupply);

    public List<Powersupply> listPowerSupply();

    public void deletePowerSupply(Integer id);

    /*public List<Powersupply> listPowerSupply(String name);*/

    public List<Powersupply> listPowerSupply(String name, int min);

    public List<Powersupply> listPowerSupplyNameAndMax(String name, int max);

    public List<Powersupply> listPowerSupply(String name, int min, int max);

    public List<Powersupply> listPowerSupplyMax(int max);

    public List<Powersupply> listPowerSupplyMin(int min);

    public List<Powersupply> listPowerSupply(int min, int max);

    public List<Powersupply> listPowerSupplyTest(String s);
}
