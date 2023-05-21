package com.learnify.business.dao;

import com.learnify.business.entity.*;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import com.learnify.business.helper.*;
public class PostDao {
	Connection con;
   

    public PostDao(Connection con) {
        this.con = con;
    }

    public ArrayList<Category> getAllCategories() {
        ArrayList<Category> list = new ArrayList<>();

        try {

            String q = "select * from categories";
            Statement st = this.con.createStatement();
            ResultSet set = st.executeQuery(q);
            while (set.next()) {
                int cid = set.getInt("cid");
                String name = set.getString("cname");
                String description = set.getString("description");
                Category c = new Category(cid, name, description);
                list.add(c);
              
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    public boolean savePost(Post p) {
        boolean f = false;
        try {

            String q = "insert into uploadCourse(pTitle,pShortDescription,pDescription,pPic,catId,pAbout,pInstructor,pNote,week1,week2,week3,week4) values(?,?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement pstmt = con.prepareStatement(q);
            pstmt.setString(1, p.getpTitle());
            pstmt.setString(2, p.getpShortDescription());
            pstmt.setString(3, p.getpDescription());
            pstmt.setString(4, p.getpPic());
            pstmt.setInt(5, p.getCatId());
//            pstmt.setInt(6, p.getUserId());
            pstmt.setString(6, p.getpAbout());
            pstmt.setString(7, p.getpInstructor());
            pstmt.setString(8, p.getpNote());
            pstmt.setString(9, p.getWeek1());
            pstmt.setString(10,p.getWeek2());
            pstmt.setString(11, p.getWeek3());
            pstmt.setString(12, p.getWeek4());
            pstmt.executeUpdate();
            f = true;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return f;
    }

//    get all the posts
    public List<Post> getAllPosts() {

        List<Post> list = new ArrayList<>();
        //fetch all the post
        try {

            PreparedStatement p = con.prepareStatement("select * from uploadCourse order by pid desc");

            ResultSet set = p.executeQuery();

            while (set.next()) {

                int pid = set.getInt("pid");
                String pTitle = set.getString("pTitle");
                String pShortDescription = set.getString("pShortDescription");
                String pDescription = set.getString("pDescription");
                String pPic = set.getString("pPic");
                Timestamp date = set.getTimestamp("pDate");
                int catId = set.getInt("catId");
//                int userId = set.getInt("userId");
                String pAbout = set.getString("pAbout");
                String pInstructor = set.getNString("pInstructor");
                String pNote = set.getNString("pNote");
                String week1 = set.getString("week1");
                String week2 = set.getString("week2");
                String week3 = set.getString("week3");
                String week4 = set.getString("week4");
                Post post = new Post(pid, pTitle, pShortDescription, pDescription, pPic, date, catId,pAbout,pInstructor,pNote,week1,week2,week3,week4);

                list.add(post);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<Post> getPostByCatId(int catId) {
        List<Post> list = new ArrayList<>();
        //fetch all post by id
        //fetch all the post
        try {

            PreparedStatement p = con.prepareStatement("select * from uploadCourse where catId=?");
            p.setInt(1, catId);
            ResultSet set = p.executeQuery();

            while (set.next()) {

                int pid = set.getInt("pid");
                String pTitle = set.getString("pTitle");
                String pShortDescription = set.getString("pShortDescription");
                String pDescription = set.getString("pDescription");
                String pPic = set.getString("pPic");
                Timestamp date = set.getTimestamp("pDate");
                String pAbout = set.getString("pAbout");
                String pInstructor = set.getNString("pInstructor");
                String pNote = set.getNString("pNote");
                String week1 = set.getString("week1");
                String week2 = set.getString("week2");
                String week3 = set.getString("week3");
                String week4 = set.getString("week4");
//                int userId = set.getInt("userId");
                Post post = new Post(pid, pTitle, pShortDescription, pDescription, pPic, date, catId,pAbout,pInstructor,pNote,week1,week2,week3,week4);

                list.add(post);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public Post getPostByPostId(int postId) {
        Post post = null;
        String q = "select * from uploadCourse where pid=?";
        try {
            PreparedStatement p = this.con.prepareStatement(q);
            p.setInt(1, postId);

            ResultSet set = p.executeQuery();

            if (set.next()) {

                int pid = set.getInt("pid");
                String pTitle = set.getString("pTitle");
                String pShortDescription = set.getString("pShortDescription");
                String pDescription = set.getString("pDescription");
                String pPic = set.getString("pPic");
                Timestamp date = set.getTimestamp("pDate");
                int cid=set.getInt("catId");
//                int userId = set.getInt("userId");
                String pAbout = set.getString("pAbout");
                String pInstructor = set.getString("pInstructor");
                String pNote = set.getString("pNote");
                String week1 = set.getString("week1");
                String week2 = set.getString("week2");
                String week3 = set.getString("week3");
                String week4 = set.getString("week4");
                
                post = new Post(pid, pTitle, pShortDescription, pDescription, pPic, date, cid,pAbout,pInstructor,pNote,week1,week2,week3,week4);

            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return post;
    }

	public static void main(String[] args) {
		PostDao p = new PostDao(ConnectionProvider.getConnection());
		p.getAllCategories();
	}	
	
}