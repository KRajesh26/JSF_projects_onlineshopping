<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
try
{
Connection con=ConnectionProvider.getCon();
Statement st=con.createStatement();
String q1="create table users(name varchar(30),email varchar(30)primary key,mobileNumber bigint,securityQuestion varchar(100),answer varchar(100),password varchar(100),address varchar(300),city varchar(30),state varchar(40),country varchar(50))";
String q2="create table product(id int,name varchar(40),category varchar(40),price bigint,active varchar(10))";
String q3="create table cart(email varchar(80),product_id int,quantity int,price bigint,total bigint,address varchar(100),city varchar(50),state varchar(30),country varchar(40),mobileNumber bigint,orderDate varchar(60),deliveryDate varchar(80),paymentMethod varchar(80),transactionId varchar(90),status varchar(10))";
String q4="create table message(id int AUTO_INCREMENT,email varchar(100),subject varchar(200),body varchar(1000),PRIMARY KEY(id))";
System.out.println(q1);
System.out.println(q2);
System.out.println(q3);
System.out.println(q4);
st.execute(q1);
st.execute(q2);
st.execute(q3);
st.execute(q4);
System.out.print("Table created !!!");
con.close();
}
catch(Exception e)
{
	System.out.print(e);
	}
%>