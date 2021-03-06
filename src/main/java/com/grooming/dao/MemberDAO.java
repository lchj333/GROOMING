package com.grooming.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.grooming.dto.MemberDTO;


@Repository
public class MemberDAO {
	
	@Inject
	SqlSession ss;

	public void setSs(SqlSession ss) {
		this.ss = ss;
	}
	
	// 회원가입 메소드
	public void joinMember(MemberDTO memberDto) {
		ss.insert("joinMember", memberDto);
	}
	
	// 회원전체 전체 조회 메소드
	public List<MemberDTO> selectMemberAll(){
		return ss.selectList("selectMemberAll");
	}
	
	// 회원전체 전체 조회 메소드
	public List<MemberDTO> agreedDesigner(){
		return ss.selectList("agreedDesigner");
	}
	
	// ID로 회원 개별 조회 메소드
	public MemberDTO selectOne(String mb_id) {
		return ss.selectOne("selectMemberOne", mb_id);
	}
	
	// ID 중복 체크
	public int idCheck(MemberDTO memberDto) {
		return ss.selectOne("idCheck", memberDto);
	}
	
	// ID 찾기(name,email 일치여부)
	public MemberDTO idFind(MemberDTO memberDto) {
		return ss.selectOne("idFind", memberDto);
	}
	
	// PW 찾기(id,email 일치여부)
	public MemberDTO pwFind(MemberDTO memberDto) {
		return ss.selectOne("pwFind", memberDto);
	}
	
	// PW체크
	public int checkPw(MemberDTO memberDto) {
		return ss.selectOne("checkPw", memberDto);
	}
	
	// PW 변경
	public void changePw(MemberDTO memberDto) {
		ss.update("changePw", memberDto);
	}
	// Email체크
	public int checkEmail(MemberDTO memberDto) {
		return ss.selectOne("checkEmail", memberDto);
	}
	
	// Email변경
	public void changeEmail(MemberDTO memberDto) {
		ss.update("changeEmail", memberDto);
	}
	
	// 기본정보 변경
	public void changeInfo(MemberDTO memberDto) {
		ss.update("changeInfo", memberDto);
	}
	
	// 미용사 사용신청 메소드
	public void designerCheck(MemberDTO memberDto) {
		ss.update("designerCheck", memberDto);
	}

	
	
	
	
}
