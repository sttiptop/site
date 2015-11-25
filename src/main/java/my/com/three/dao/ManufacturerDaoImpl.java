/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package my.com.three.dao;


import my.com.three.model.Manufacturer;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 *
 * @author Yevgeni
 */
@Repository
public class ManufacturerDaoImpl implements ManufacturerDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void addManufacturer(Manufacturer manufacturer) {
        Query query = sessionFactory.getCurrentSession().createQuery("from Manufacturer where manufacturer=?");

        Manufacturer man = (Manufacturer) query.setString(0, manufacturer.getManufacturer()).uniqueResult();
        if (null == man) {
            sessionFactory.getCurrentSession().save(manufacturer);
        }
    }

    @SuppressWarnings("unchecked")
    @Override
    public List<Manufacturer> listManufacturer() {

        return sessionFactory.getCurrentSession().createQuery("from Manufacturer").list();
    }

    @Override
    public void deleteManufacturer(Integer id) {
        Manufacturer manufacturer =sessionFactory.getCurrentSession().load(
                Manufacturer.class, id);
        if (null != manufacturer) {
            sessionFactory.getCurrentSession().delete(manufacturer);
        }
    }

}
