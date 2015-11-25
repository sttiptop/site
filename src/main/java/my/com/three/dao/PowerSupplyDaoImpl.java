/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package my.com.three.dao;

import java.util.List;

import my.com.three.model.Powersupply;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Yevgeni
 */
@Repository
public class PowerSupplyDaoImpl implements PowerSupplyDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void addPowerSupply(Powersupply powerSupply) {
        sessionFactory.getCurrentSession().save(powerSupply);
        /*  Query query = sessionFactory.getCurrentSession().createQuery("from Powersupply where name=?");

         PowerSupply ps = (PowerSupply) query.setString(0, powerSupply.getName()).uniqueResult();
         if (null == ps) {
         sessionFactory.getCurrentSession().save(powerSupply);
         }*/
    }

    @SuppressWarnings("unchecked")
    @Override
    public List<Powersupply> listPowerSupply() {

        return sessionFactory.getCurrentSession().createQuery("from Powersupply").list();
    }

    @Override
    public void deletePowerSupply(Integer id) {
        Powersupply manufacturer =  sessionFactory.getCurrentSession().load(
                Powersupply.class, id);
        if (null != manufacturer) {
            sessionFactory.getCurrentSession().delete(manufacturer);
        }
    }

    /*@Override
    public List<Powersupply> listPowerSupply(String name) {

        Query query = sessionFactory.getCurrentSession().createQuery("from Powersupply where manufacturer=?");
        return query.setString(0, name).list();

    }*/

    @Override
    public List<Powersupply> listPowerSupply(String name, int min) {
        Query query = sessionFactory.getCurrentSession().createQuery("from Powersupply where manufacturer=?");
        query.setString(0, name).uniqueResult();
        return null;

    }

    @Override
    public List<Powersupply> listPowerSupply(String name, int min, int max) {
        return null;

    }

    @Override
    public List<Powersupply> listPowerSupply(int min, int max) {
        return null;

    }

    @Override
    public List<Powersupply> listPowerSupplyNameAndMax(String name, int max) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Powersupply> listPowerSupplyMax(int max) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Powersupply> listPowerSupplyMin(int min) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    @SuppressWarnings("unchecked")
    @Override
    public List<Powersupply> listPowerSupplyTest(String s) {
        return sessionFactory.getCurrentSession().createQuery(s).list();
    }
}
