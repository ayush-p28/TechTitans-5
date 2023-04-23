package models;
import java.sql.*;
public class User {
    private Integer userId;
    private String name;
    private String contact;
    private String whatsapp;
    private Integer city_id;
    private String email;
    private String password;
    private String address;
    private String pic;
    private String seller;
    private String otp;
    private int status_id;
    public User(){

    }
    public User(String email,String password){
        this.email = email;
        this.password = password;
    }
    public boolean loginUser(String email, String password){
        boolean flag = false;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/toysdb?user=root&password=1234");
            String query = "select * from users where email=? and password=?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1,email);
            ps.setString(2,password);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                flag=true;
            }
            con.close();
        }catch(SQLException|ClassNotFoundException e){
            e.printStackTrace();
        }
        return flag;
    }
    
    public boolean addUser(){
        boolean flag = false;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/toysdb?user=root&password=1234");
            String query = "insert into users (name,email,password,contact) value (?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1,name);
            ps.setString(2,email);
            ps.setString(3,password);
            ps.setString(4,contact);
            ps.executeUpdate();
            con.close();
            flag = true;
        }catch(SQLException|ClassNotFoundException e){
            e.printStackTrace();
        }
        return flag;
    }
    public boolean addPassword(String ypassword,String yemail){
        boolean flag = false;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/toysdb?user=root&password=1234");
            String query = "UPDATE users SET password=? where email=?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1,ypassword);
            ps.setString(2,yemail);
            ps.executeUpdate();
            con.close();
            flag = true;
        }catch(SQLException|ClassNotFoundException e){
            e.printStackTrace();
        }
        return flag;
    }
    public void setUserId(Integer userId){
        this.userId = userId;
    }
    public int getUserId(){
        return userId;
    }
    public void setName(String name){
        this.name = name;
    }
    public String getName(){
        return name;
    }
    public void setContact(String contact){
        this.contact = contact;
    }
    public String getContact(){
        return contact;
    }
    public void setWhatsapp(String whatsapp){
        this.whatsapp = whatsapp;
    }
    public String getWhatsapp(){
        return whatsapp;
    }
    public void setCity_id(Integer city_id){
        this.city_id = city_id;
    }
    public Integer getCity_id(){
        return city_id;
    }
    public void setEmail(String email){
        this.email = email;
    }
    public String getEmail(){
        return email;
    }
    public void setPassword(String password){
        this.password = password;
    }
    public String getPassword(){
        return password;
    }
    
    public void setAddress(String address){
        this.address = address;
    }
    public String getAddress(){
        return address;
    }
    public void setPic(String pic){
        this.pic = pic;
    }
    public String getPic(){
        return pic;
    }
    public void setOtp(String otp){
        this.otp = otp;
    }
    public String getOtp(){
        return otp;
    }
    public void setStatus_id(int status_id){
        this.status_id = status_id;
    }
    public int getStatus_id(){
        return status_id;
    }
    public String getSeller(){
        return seller;
    }
    public void setSeller(String seller){
        this.seller = seller;
    }
}
