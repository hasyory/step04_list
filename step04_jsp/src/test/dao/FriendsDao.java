package test.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import test.dto.FriendsDto;
import test.dto.MemberDto;
import test.util.DBConnect;

public class FriendsDao {
	private static FriendsDao dao;
	private FriendsDao() {};
	public static FriendsDao getInstance() {
		if(dao==null) {
			dao=new FriendsDao();
		}
		return dao;
	}
	//회원한명의 정보를 수정 반영하는 메소드
	public boolean update(FriendsDto dto) {
		Connection conn=null;
		PreparedStatement pstmt=null;
		boolean isSuccess=false; //저장성공여부확인
		try {
			conn=new DBConnect().getConn();
			String sql="UPDATE friends SET name=?,phone=? WHERE num=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, dto.getName());
			pstmt.setInt(2, dto.getPhone());
			pstmt.setInt(3,dto.getNum());
			
			int flag=pstmt.executeUpdate();
			if(flag>0) {
				isSuccess=true;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			} catch (Exception e) {}
		}
		return isSuccess;
	}
	//회원 한명의 정보를 리턴해주는 메소드
	public FriendsDto getData(int num) {
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		FriendsDto dto=null;
		conn=new DBConnect().getConn();
	}
	public List<FriendsDto> getList(){
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		List<FriendsDto> list=new ArrayList<>();
		try {
			conn=new DBConnect().getConn();
			String sql="SELECT num,name,addr FROM member ORDER BY num DESC";
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				int num=rs.getInt("num");
				String name=rs.getString("name");
				int phone=rs.getInt("phone");
				//회원정보를 MemberDto 에 담고
				FriendsDto dto=new FriendsDto(num,name,phone);
				//ArrayList 객체에 누적 시킨다.
				list.add(dto);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			}catch(Exception e) {}
		}
		return list;
	}
}
