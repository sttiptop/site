/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package my.com.three.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Properties;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import my.com.three.model.Manufacturer;
import my.com.three.model.Powersupply;
import my.com.three.service.ManufacturerService;
import my.com.three.service.PowerSupplyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


/**
 * @author Yevgeni
 */
@Controller
public class NewClass {

    @Autowired
    private ManufacturerService manufacturerService;
    @Autowired
    private PowerSupplyService powerSupplyService;

    //MAIN
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String home(Locale locale) {
        return "redirect:/index";
    }

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String ToIndex() {
            return "index";
    }

    @RequestMapping(value = "/goToIndex", method = RequestMethod.GET)
    public String goToIndex() {
        System.out.print("goToIndex");
        return "redirect:/index";
    }

    //POWERSUPPLY
    @RequestMapping(value = "/powersupply", method = RequestMethod.GET)
    public String goTOPowersupply(Model model) {
        List<Powersupply> psList = powerSupplyService.listPowerSupply();
        for (Powersupply p : psList) {
            System.out.println(p);
        }
        // model.addAttribute("ps", new PowerSupply());
        List<Manufacturer> manList = manufacturerService.listManufacturer();
        model.addAttribute("manufacturerList", manList);
        model.addAttribute("List", psList);
        return "powersuppl";
    }

    @RequestMapping(value = "/powersupply", method = RequestMethod.POST)
    public String researchPowerSupply(Model model, HttpServletRequest request) {
        int min;
        int max;
        try {
            min = Integer.parseInt(request.getParameter("min"));
        } catch (NumberFormatException e) {
            min = 0;

        }
        try {
            max = Integer.parseInt(request.getParameter("max"));
        } catch (NumberFormatException e) {
            max = 0;
        }
        String man = request.getParameter("man");

        String sql = researchList(man, min, max);
        List<Powersupply> psList = powerSupplyService.listPowerSupplyTest(sql);
        List<Manufacturer> manList = manufacturerService.listManufacturer();
        model.addAttribute("manufacturerList", manList);
        model.addAttribute("List", psList);

        return "powersuppl";
    }

    private String researchList(String name, int min, int max) {
        String query = null;
        if (!name.equals("")) {
            if (min == 0 && max == 0) {
                query = "from Powersupply where manufacturer='" + name + "'";
            }
            if (min != 0 && max != 0) {
                query = "from Powersupply where manufacturer='" + name + "' AND price BETWEEN " + min + " AND " + max;
            }
            if (min == 0 || max == 0) {
                if (min == 0) {
                    query = "from Powersupply where manufacturer='" + name + "' AND price<" + max;
                }
                if (max == 0) {
                    query = "from Powersupply where manufacturer='" + name + "' AND price>" + min;
                }
            }
        } else {
            if (min != 0 && max != 0) {
                query = "from Powersupply where price BETWEEN " + min + " AND " + max;
            }
            if (min == 0 || max == 0) {
                if (min == 0) {
                    query = "from Powersupply where price<" + max;
                }
                if (max == 0) {
                    query = "from Powersupply where price>" + min;
                }
            }
        }
        System.out.println(query + "sdgfsdgfdsgsdgdfsg");
        return query;
    }


    //ADMIN
    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    public String getAdmin() {
        return "admin";

    }

    @RequestMapping(value = "/admin/backToAdmin", method = RequestMethod.GET)
    public String returnToAdmin() {
        return "redirect:/admin";

    }

    //ADMIN-MANUFACTURER
    @RequestMapping(value = "admin/manufacturer", method = RequestMethod.GET)
    public String getManufacturer(Model model
    ) {
        List<Manufacturer> manList = manufacturerService.listManufacturer();

        model.addAttribute("manufacturerList", manList);
        return "manufacturer";
    }

    @RequestMapping(value = "admin/manufacturer.go", method = RequestMethod.POST)
    public ModelAndView refreshTwoManufacturer(HttpServletRequest request
    ) {
        //logger.info("Welcome home!!!! The client locale is {}.", locale);
        ModelAndView modelAndView = new ModelAndView();
        Manufacturer manufacturer = new Manufacturer();
        //manufacturer.setId(i);
        manufacturer.setManufacturer(request.getParameter("manufacturerName"));
        manufacturerService.addManufacturer(manufacturer);
        modelAndView.setViewName("manufacturer");
        modelAndView.addObject("manufacturer", new Manufacturer());
        modelAndView.addObject("manufacturerList", manufacturerService.listManufacturer());
        return modelAndView;
    }

    @RequestMapping(value = "admin/manufacturer/{contactId}")
    public String deleteContact(@PathVariable("contactId") Integer contactId, Model model
    ) {
        manufacturerService.deleteManufacturer(contactId);
        List<Manufacturer> manList = manufacturerService.listManufacturer();
        model.addAttribute("manufacturerList", manList);
        return "redirect:/admin/manufacturer";
    }


    //ADMIN-PS
    /*@RequestMapping(value = "admin/addps", method = RequestMethod.GET)
    public String getAddps(Model model) {

        List<Manufacturer> manList = manufacturerService.listManufacturer();
        List<String> imgList=ImgController.getInstance().();
        System.out.print(imgList+""+"List");
        model.addAttribute("imgList",imgList);
        model.addAttribute("manufacturerList", manList);
        return "addps";
    }*/

    @RequestMapping(value = "admin/addps/backAddPs", method = RequestMethod.GET)
    public String backToAddPs() {
        return "redirect:/admin/addps";
    }

    @RequestMapping(value = "admin/addps/powersupplylist", method = RequestMethod.POST)
    public String getPowersupplylist(HttpServletRequest request, Model model
    ) {
        System.out.print("+++");
        Powersupply powerSupply = new Powersupply();
        powerSupply.setName(request.getParameter("ps"));
        powerSupply.setManufacturer(request.getParameter("man"));
        powerSupply.setPrice(Integer.parseInt(request.getParameter("price")));
        powerSupply.setPower(Integer.parseInt(request.getParameter("power")));
        powerSupply.setPfc(request.getParameter("pfc"));
        powerSupply.setKpd(Integer.parseInt(request.getParameter("kpd")));
        powerSupply.setSertification(request.getParameter("sertification"));
        powerSupply.setModern(request.getParameter("modern"));
        powerSupply.setImg(request.getParameter("img"));
        powerSupplyService.addPowerSupply(powerSupply);
        //model.addAttribute("powersupply", powerSupply);
        model.addAttribute("powersupplyList", powerSupplyService.listPowerSupply());
        System.out.print(model);
        return "powersuppLylist";
    }

    @RequestMapping(value = "admin/addps/powersupplylist", method = RequestMethod.GET)
    public String showPowersupplylist(Model model) {
        model.addAttribute("powersupplyList", powerSupplyService.listPowerSupply());
        System.out.print(model);
        return "powersuppLylist";
    }
}
