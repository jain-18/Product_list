package productcrudapp.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private String name;
    private  String descriptive;
    private long price;

    public int getId() {
        return id;
    }

    public Product setId(int id) {
        this.id = id;
        return this;
    }

    public String getName() {
        return name;
    }

    public Product setName(String name) {
        this.name = name;
        return this;
    }

    public String getDescriptive() {
        return descriptive;
    }

    public Product setDescriptive(String descriptive) {
        this.descriptive = descriptive;
        return this;
    }

    public long getPrice() {
        return price;
    }

    public Product setPrice(long price) {
        this.price = price;
        return this;
    }

    public Product() {
    }

    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", descriptive='" + descriptive + '\'' +
                ", price=" + price +
                '}';
    }


}
