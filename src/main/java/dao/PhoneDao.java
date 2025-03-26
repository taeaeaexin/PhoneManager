package dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import common.DBManager;
import dto.PhoneDto;

public class PhoneDao {
    public int insertPhone(PhoneDto Phone) {
        int ret = -1;
        String sql = "insert into Phone values ( ?, ?, ?, ? ); ";

        Connection con = null;
        PreparedStatement pstmt = null;

        try {
            con = DBManager.getConnection();

            pstmt = con.prepareStatement(sql);
            pstmt.setInt(1, Phone.getPhoneId());
            pstmt.setString(2, Phone.getPhoneName());
            pstmt.setString(3, Phone.getPublisher());
            pstmt.setInt(4, Phone.getPrice());

            ret = pstmt.executeUpdate();

        }catch(SQLException e) {
            e.printStackTrace();
        }finally {
            DBManager.releaseConnection(pstmt, con);
        }

        return ret;
    }

    public int updatePhone(PhoneDto Phone) {
        int ret = -1;
        String sql = "update Phone set Phonename = ?, publisher = ?, price = ? where Phoneid = ?; ";

        Connection con = null;
        PreparedStatement pstmt = null;

        try {
            con = DBManager.getConnection();

            pstmt = con.prepareStatement(sql);

            pstmt.setString(1, Phone.getPhoneName());
            pstmt.setString(2, Phone.getPublisher());
            pstmt.setInt(3, Phone.getPrice());
            pstmt.setInt(4, Phone.getPhoneId());

            ret = pstmt.executeUpdate();

        }catch(SQLException e) {
            e.printStackTrace();
        }finally {
            DBManager.releaseConnection(pstmt, con);
        }

        return ret;
    }

    public int deletePhone(int PhoneId) {
        int ret = -1;
        String sql = "delete from Phone where Phoneid = ?; ";

        Connection con = null;
        PreparedStatement pstmt = null;

        try {
            con = DBManager.getConnection();

            pstmt = con.prepareStatement(sql);
            pstmt.setInt(1, PhoneId);

            ret = pstmt.executeUpdate();

        }catch(SQLException e) {
            e.printStackTrace();
        }finally {
            DBManager.releaseConnection(pstmt, con);
        }

        return ret;
    }

    public List<PhoneDto> listPhone() {
        List<PhoneDto> list = new ArrayList<>();
        String sql = "select * from Phone; ";

        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try {
            con = DBManager.getConnection();

            pstmt = con.prepareStatement(sql);
            rs = pstmt.executeQuery();
            while(rs.next()) {
                PhoneDto Phone = new PhoneDto();
                Phone.setPhoneId(rs.getInt("Phoneid"));
                Phone.setPhoneName(rs.getString("Phonename"));
                Phone.setPublisher(rs.getString("publisher"));
                Phone.setPrice(rs.getInt("price"));
                list.add(Phone);
            }

        }catch(SQLException e) {
            e.printStackTrace();
        }finally {
            DBManager.releaseConnection(rs, pstmt, con);
        }

        return list;
    }

    public List<PhoneDto> listPhoneSearch(String searchWord) {
        List<PhoneDto> list = new ArrayList<>();
        String sql = "select * from Phone where Phonename like ? ";

        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try {
            con = DBManager.getConnection();

            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, "%" + searchWord + "%");
            rs = pstmt.executeQuery();
            while(rs.next()) {
                PhoneDto Phone = new PhoneDto();
                Phone.setPhoneId(rs.getInt("Phoneid"));
                Phone.setPhoneName(rs.getString("Phonename"));
                Phone.setPublisher(rs.getString("publisher"));
                Phone.setPrice(rs.getInt("price"));
                list.add(Phone);
            }

        }catch(SQLException e) {
            e.printStackTrace();
        }finally {
            DBManager.releaseConnection(rs, pstmt, con);
        }

        return list;
    }

    public PhoneDto detailPhone(int Phoneid) {
        PhoneDto Phone = null;
        String sql = "select * from Phone where Phoneid = ?; ";

        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try {
            con = DBManager.getConnection();

            pstmt = con.prepareStatement(sql);
            pstmt.setInt(1, Phoneid);
            rs = pstmt.executeQuery();
            if(rs.next()) {
                Phone = new PhoneDto();
                Phone.setPhoneId(rs.getInt("Phoneid"));
                Phone.setPhoneName(rs.getString("Phonename"));
                Phone.setPublisher(rs.getString("publisher"));
                Phone.setPrice(rs.getInt("price"));
            }

        }catch(SQLException e) {
            e.printStackTrace();
        }finally {
            DBManager.releaseConnection(rs, pstmt, con);
        }

        return Phone;
    }
}