/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package my.com.three.service;


import my.com.three.dao.PowerSupplyDao;
import my.com.three.model.Powersupply;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 *
 * @author Yevgeni
 */
@Service
public class PowerSupplyServiceImpl implements PowerSupplyService {

    @Autowired
    private PowerSupplyDao powerSupplyDAO;

    @Transactional
    @Override
    public void addPowerSupply(Powersupply powerSupply) {
        powerSupplyDAO.addPowerSupply(powerSupply);
    }

    @Transactional
    @Override
    public List<Powersupply> listPowerSupply() {

        return powerSupplyDAO.listPowerSupply();
    }

    @Transactional
    @Override
    public void deletePowerSupply(Integer id) {
        powerSupplyDAO.deletePowerSupply(id);
    }

   /* @Override
    public List<Powersupply> listPowerSupply(String name) {
        return powerSupplyDAO.listPowerSupply(name);
    }*/

    @Override
    public List<Powersupply> listPowerSupply(String name, int min) {
        return powerSupplyDAO.listPowerSupply(name, min);
    }

    @Override
    public List<Powersupply> listPowerSupplyNameAndMax(String name, int max) {
        return powerSupplyDAO.listPowerSupplyNameAndMax(name, max);
    }

    @Override
    public List<Powersupply> listPowerSupply(String name, int min, int max) {
        return powerSupplyDAO.listPowerSupply(name, min, max);
    }

    @Override
    public List<Powersupply> listPowerSupplyMax(int max) {
        return powerSupplyDAO.listPowerSupplyMax(max);
    }

    @Override
    public List<Powersupply> listPowerSupplyMin(int min) {
        return powerSupplyDAO.listPowerSupplyMin(min);
    }

    @Override
    public List<Powersupply> listPowerSupply(int min, int max) {
        return powerSupplyDAO.listPowerSupply(min, max);
    }

    @Transactional
    @Override
    public List<Powersupply> listPowerSupplyTest(String s) {
        return powerSupplyDAO.listPowerSupplyTest(s);
    }
}
