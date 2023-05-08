package semi.Project.muktopia.member.model.dao;

import static semi.Project.muktopia.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;
import java.util.Properties;
import java.util.ArrayList;

import semi.Project.muktopia.member.model.vo.Member;


public class AdminDAO {
	
	Statement st;
	PreparedStatement pstmt;
	ResultSet rs;
	Properties prop;
	public AdminDAO() {
		try {
			prop = new Properties();
			String filePath = AdminDAO.class.getResource("/semi/Project/muktopia/sql/admin-sql.xml").getPath();
			prop.loadFromXML(new FileInputStream (filePath));
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
//
//	public Admin adminlogin(Connection conn, Admin mem) throws Exception{
//	
//		// 결과 저장용 변수 선언
//		Admin loginMember = null;
//		
//		try {
//			// SQL 얻어오기
//			String sql = prop.getProperty("adminlogin");
//			
//			// PreparedStatement 생성 및 SQL 적재
//			pstmt = conn.prepareStatement(sql);
//			
//			pstmt.setString(1, mem.getAdminEmail());
//			pstmt.setString(2, mem.getAdminPw());
//			
//			// SQL 수행
//			rs = pstmt.executeQuery();
//			
//			if(rs.next()) {
//				
//				loginMember = new Admin();
//				
//				loginMember.setAdmin_No(  rs.getInt("ADMIN_NO") );
//				loginMember.setAdminEmail( 	rs.getString("ADMIN_EMAIL") );
//				
//				
//				
//				
//			}
//			
//			
//		} finally {
//			close(rs);
//			close(pstmt);
//		}
//		
//		return loginMember; // null 또는 Member 객체 주소
//	}

	public Member adminlogin(Connection conn, Member mem) throws Exception{

		// 결과 저장용 변수 선언
		Member loginMember = null;
		
		try {
			// SQL 얻어오기
			String sql = prop.getProperty("adminlogin");
			
			// PreparedStatement 생성 및 SQL 적재
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, mem.getMemberEmail());
			pstmt.setString(2, mem.getMemberPw());
			
			// SQL 수행
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				
				loginMember = new Member();
				
				loginMember.setMemberNo(  rs.getInt("MEMBER_NO") );
				loginMember.setMemberEmail( 	rs.getString("MEMBER_EMAIL") );
				
				
				
				
			}
			
			
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return loginMember; // null 또는 Member 객체 주소
	}

	/** 멤버전체를 가져오는 DAO
	 * @param conn
	 * @return
	 */
	public List<Member> memberLoad(Connection conn) throws Exception {
		List<Member> memberList = new ArrayList<>();
		
		try {
			String sql = prop.getProperty("memberLoad");
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Member mem = new Member();
				mem.setMemberNo(rs.getInt("MEMBER_NO"));
				mem.setMemberEmail(rs.getString("MEMBER_EMAIL"));
				mem.setMemberNick(rs.getString("MEMBER_NICK"));
				mem.setMemberTel(rs.getString("MEMBER_TEL"));
				mem.setMemberBirth(rs.getString("MEMBER_BIRTH"));
				mem.setEnrollDate(rs.getString("ENROLL_DATE"));
				mem.setMemberAddress(rs.getString("MEMBER_ADDR"));
				mem.setSecessionFlag(rs.getString("SECESSION_FL"));
				mem.setIsAdmin(rs.getString("IS_ADMIN"));
				
				memberList.add(mem);
				
			}
			
		}finally {
			close(rs);
			close(pstmt);
		}
		
		return memberList;
	}

	/** 관리자가 멤버를 탈퇴키는 DAO
	 * @return
	 * @throws SQLException 
	 */
	public int DeleteMember(Connection conn, int memberNo ) throws SQLException {
		int result = 0;
		
		try{
			String sql = prop.getProperty("deleteMember");
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memberNo);
			result = pstmt.executeUpdate();
			
			
		}finally {
		
			close(pstmt);
		}
		return result;
	}
		
		
		
	}


