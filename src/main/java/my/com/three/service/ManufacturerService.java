
package my.com.three.service;

import my.com.three.model.Manufacturer;

import java.util.List;
/**
 *
 * @author Yevgeni
 */
public interface ManufacturerService {
    	 void addManufacturer(Manufacturer manufacturer);

	 List<Manufacturer> listManufacturer();
        
         void deleteManufacturer(Integer id);
}
