package my.com.three.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import javax.imageio.stream.ImageInputStream;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;


import com.sun.deploy.util.ArrayUtil;
import my.com.three.model.Manufacturer;
import my.com.three.service.ManufacturerService;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContextAware;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.ServletContextAware;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class ImgController implements ServletContextAware {
    @Autowired
    private ManufacturerService manufacturerService;

    private static ImgController instance = new ImgController();

    private ImgController() {

    }

    public static ImgController getInstance() {
        return ImgController.instance;
    }


    String saveDirectory = "E:/img/";
    public ArrayList<String> imgList = new ArrayList<String>();
    ServletContext servletContext;


    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String saveImg(HttpServletRequest request, @RequestParam(value = "img", required = false) MultipartFile img, Model model) {
        String filename = img.getOriginalFilename();
        System.out.println(filename + "img");
        String path1 = servletContext.getRealPath("/WEB-INF/classes/img/");
        System.out.println(path1 + "    path1");
        if (!filename.equals("")) {
            try {
                img.transferTo(new File(saveDirectory + filename));

            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        getImg();
        int k = 0;
        for (String i : imgList) {
            i = imgList.get(k);
            System.out.println(i + "from ImgController");
            k++;
        }
        return "redirect:/admin/addps";
    }

    @RequestMapping(value = "admin/addps", method = RequestMethod.GET)
    public String getAddps(Model model) {
        imgList = showImg();
        List<Manufacturer> manList = manufacturerService.listManufacturer();
        model.addAttribute("imgList", imgList);
        model.addAttribute("manufacturerList", manList);
        return "addps";
    }

    @Override
    public void setServletContext(ServletContext servletContext) {
        this.servletContext = servletContext;
    }

    private void getImg() {

        String path1 = servletContext.getRealPath("/WEB-INF/classes/img/");
        File[] fList;
        File F = new File(saveDirectory);
        fList = F.listFiles();
        File[] f2list;
        File F2 = new File(path1);
        f2list = F2.listFiles();
        File f1;

        for (int i = 0; i < fList.length; i++) {
            if (fList[i].isFile()) {
                try {
                    f1 = fList[i].getAbsoluteFile();
                    if (!f1.equals(f2list)) {
                        String name = f1.getName();
                        File targetFile = new File(path1 + name);
                        FileUtils.copyFile(f1, targetFile);
                        //  imgList.add(targetFile.getName());
                    }

                } catch (Exception e) {
                }
            }
        }
    }

    private ArrayList<String> showImg() {
        String path1 = servletContext.getRealPath("/WEB-INF/classes/img/");

        File[] fList;
        File F = new File(path1);
        fList = F.listFiles();

        for (int i = 0; i < fList.length; i++) {
            //Нужны только папки в место isFile() пишим isDirectory()
            if (fList[i].isFile()) {
                String s = fList[i].getName();
                if (!imgList.contains(s)) {
                    imgList.add(fList[i].getName());
                }
            }
        }

        return imgList;
    }
}/*int k = 0;
        for (String i : imgList) {

            i = name.get(k);
            System.out.println(i + "from ImgController");
            k++;
       }*/

