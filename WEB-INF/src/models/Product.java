package models;
import java.util.*;
import java.sql.*;
public class Product{
    private Integer product_Id;
    private String img;
    private String name;
    private Integer price;
    private String details;
    private Integer stock;
    private Integer min_age;
    private Integer discount;
    public Product(String name,Integer price,String details,Integer min_age, Integer discount){
        this.name = name;
        this.price = price;
        this.details = details;
        this.min_age = min_age;
        this.discount = discount;
    }
    public Product(Integer product_Id, String img,String name,Integer price,String details,Integer stock,Integer min_age,Integer discount){
        this.product_Id = product_Id;
        this.img = img;
        this.name = name;
        this.price = price;
        this.details = details;
        this.stock = stock;
        this.min_age = min_age;
        this.discount = discount;
    }

    public Product(Integer id){
        this.product_Id = id;
    }
    public Product(){

    }
    public boolean deleteProduct(Integer id){
        boolean flag = false;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/toysdb?user=root&password=1234");
            String query = "delete from products where product_Id="+id;
            PreparedStatement ps = con.prepareStatement(query);
            
            int i = ps.executeUpdate();
            if(i == 1){
                System.out.println("Product deleted");
                flag = true;
            }
            con.close();
        }catch(SQLException|ClassNotFoundException e){
            e.printStackTrace();
        }
        return flag;
    }
    public boolean addProduct(){
        boolean flag = false;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/toysdb?user=root&password=1234");
            String query = "insert into products (name,price,details,min_age,discount,img) value (?,?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1,name);
            ps.setInt(2,price);
            ps.setString(3,details);
            ps.setInt(4,min_age);
            ps.setInt(5,discount);
            ps.setString(6,img);
            int i = ps.executeUpdate();
            if(i==1){
                System.out.println("product added ");
                flag=true;
            }
            con.close();
        }catch(SQLException|ClassNotFoundException e){
            e.printStackTrace();
        }
        return flag;
    }
    public static ArrayList showProducts(){
        ArrayList<Product> list = new ArrayList();

        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/toysdb?user=root&password=1234");
            String query = "select * from products";
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                list.add(new Product(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getInt(4),rs.getString(5),rs.getInt(6),rs.getInt(7),rs.getInt(8)));
            }
            con.close();
        }catch(SQLException|ClassNotFoundException e){
            e.printStackTrace();
        }
        return list;
    }
    public Integer getProductId(){
        return product_Id;
    }
    public void setProductId(Integer product_Id){
        this.product_Id = product_Id;
    }
    public void setName(String name){
        this.name = name;
    }
    public String getName(){
        return name;
    }
    public void setPrice(Integer price){
        this.price = price;
    }
    public Integer getPrice(){
        return price;
    }
    public void setDetails(String details){
        this.details = details;
    }
    public String getDetails(){
        return details;
    }
    public void setMinAge(Integer min_age){
        this.min_age = min_age;
    }
    public Integer getMinAge(){
        return min_age;
    }
    public void setDiscount(Integer discount){
        this.discount = discount;
    }
    public Integer getDiscount(){
        return discount;
    }
    public void setImg(String img){
        this.img = img;
    }
    public String getImg(){
        return img;
    }
    public Integer getStock(){
        return stock;
    }
}