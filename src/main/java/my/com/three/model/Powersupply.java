package my.com.three.model;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;


@Entity
public class Powersupply {
    private int id;
    private String name;
    private String manufacturer;
    private int price;
    private int power;
    private String pfc;
    private int kpd;
    private String sertification;
    private String modern;
    private String img;

    @Id
    @Column(name = "id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "name")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Basic
    @Column(name = "manufacturer")
    public String getManufacturer() {
        return manufacturer;
    }

    public void setManufacturer(String manufacturer) {
        this.manufacturer = manufacturer;
    }

    @Basic
    @Column(name = "price")
    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    @Basic
    @Column(name = "power")
    public Integer getPower() {
        return power;
    }

    public void setPower(Integer power) {
        this.power = power;
    }

    @Basic
    @Column(name = "pfc")
    public String getPfc() {
        return pfc;
    }

    public void setPfc(String pfc) {
        this.pfc = pfc;
    }

    @Basic
    @Column(name = "kpd")
    public Integer getKpd() {
        return kpd;
    }

    public void setKpd(Integer kpd) {
        this.kpd = kpd;
    }

    @Basic
    @Column(name = "sertification")
    public String getSertification() {
        return sertification;
    }

    public void setSertification(String sertification) {
        this.sertification = sertification;
    }

    @Basic
    @Column(name = "modern")
    public String getModern() {
        return modern;
    }

    public void setModern(String modern) {
        this.modern = modern;
    }
    public void setImg(String i){
        img=i;
    }

    public String getImg(){

        return img;
    }
}
