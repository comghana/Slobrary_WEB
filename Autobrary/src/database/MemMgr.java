package database;

import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.Vector;

import database.MemBean;
import database.DBConnectionMgr;
import database.MemBean;

public class MemMgr {
	
	private DBConnectionMgr pool = null;

    public MemMgr() {
        try {
            pool = DBConnectionMgr.getInstance();
        } catch (Exception e) {
            System.out.println("Error !!");
        }
    }
    
    public Vector getMemberList() {
        Connection con = null;
        Statement stmt = null;
        ResultSet rs = null;
        Vector vecList = new Vector();

        try {
            con = pool.getConnection();
            String strQuery = "select * from member";
            stmt = con.createStatement();
            rs = stmt.executeQuery(strQuery);

            while (rs.next()) {
                MemBean memBean = new MemBean();
                memBean.setRFID(rs.getString("RFID"));
                memBean.setMem_id(rs.getString("mem_id"));
                memBean.setMem_pw(rs.getString("passwd"));
                memBean.setMem_name(rs.getString("name"));
                memBean.setMem_gender(rs.getString("gender"));
                memBean.setMem_phone(rs.getString("phone"));
                memBean.setMem_birth(rs.getString("birth"));
                memBean.setMem_date(rs.getString("add_date"));
                memBean.setLoan_status(rs.getString("loan_status"));
                vecList.add(memBean);
            }
        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
            pool.freeConnection(con, stmt, rs);
        }
        return vecList;
    }
    
    public MemBean getMember(String mem_id) {
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        MemBean memBean = null;

        try {
            con = pool.getConnection();
            String strQuery = "select * from member where mem_id=?;";
            pstmt = con.prepareStatement(strQuery);
            pstmt.setString(1, mem_id);
            rs = pstmt.executeQuery();

            if (rs.next()) {
            	memBean = new MemBean();
            	
            	memBean.setRFID(rs.getString("RFID"));
            	memBean.setMem_id(rs.getString("mem_id"));
            	memBean.setMem_name(rs.getString("name"));
            	memBean.setMem_gender(rs.getString("gender"));
            	memBean.setMem_phone(rs.getString("phone"));    	 
            	memBean.setMem_birth(rs.getString("birth"));
                memBean.setMem_adress(rs.getString("adress"));
            	memBean.setMem_mail(rs.getString("email"));
            	memBean.setLoan_status(rs.getString("loan_status"));
            	memBean.setMem_date(rs.getString("add_date"));
            }
        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
            pool.freeConnection(con, pstmt, rs);
        }
        return memBean;
    }
    
    public MemBean getMemberr(String RFID) {
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        MemBean memBean = null;

        try {
            con = pool.getConnection();
            String strQuery = "select * from member where RFID=?;";
            pstmt = con.prepareStatement(strQuery);
            pstmt.setString(1, RFID);
            rs = pstmt.executeQuery();

            if (rs.next()) {
            	memBean = new MemBean();
            	
            	memBean.setRFID(rs.getString("RFID"));
            	memBean.setMem_id(rs.getString("mem_id"));
            	memBean.setMem_name(rs.getString("name"));
            	memBean.setMem_gender(rs.getString("gender"));
            	memBean.setMem_phone(rs.getString("phone"));    	 
            	memBean.setMem_birth(rs.getString("birth"));
                memBean.setMem_adress(rs.getString("adress"));
            	memBean.setMem_mail(rs.getString("email"));
            	memBean.setLoan_status(rs.getString("loan_status"));
            	memBean.setMem_date(rs.getString("add_date"));
            }
        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
            pool.freeConnection(con, pstmt, rs);
        }
        return memBean;
    }
    
    public boolean deleteMember(MemBean memBean) {
    	Connection con = null;
        PreparedStatement pstmt = null;
        boolean flag = false;
       
        try {
        	con = pool.getConnection();
        	pstmt = con.prepareStatement("delete from member where mem_id = ?");
        	pstmt.setString(1, memBean.getMem_id());
            int count = pstmt.executeUpdate();
            if (count == 1) {
                flag = true;
            }
        }catch (Exception ex) {//
            System.out.println("Exception" + ex);
        } finally {
            pool.freeConnection(con, pstmt);
        }
        return flag;
    }

}