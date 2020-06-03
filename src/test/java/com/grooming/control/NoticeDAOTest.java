package com.grooming.control;

import java.util.List;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.grooming.dao.NoticeDAO;
import com.grooming.dto.NoticeDTO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class NoticeDAOTest {
	
	@Inject
	private NoticeDAO noticedao;
	
	@Test
	public void insertTest() {
		NoticeDTO noticedto = new NoticeDTO();
		noticedto.setNt_title("공지6");
		noticedto.setAd_id("admin");
		noticedto.setNt_con("ck");
		
		noticedao.insertOne(noticedto);	
	}
	
//	@Test
//	public void selectAll() {
//		List<NoticeDTO> list = noticedao.selectList();
//		for(NoticeDTO dto : list) {
//			System.out.println(dto.getNt_no() + "글번호," + dto.getNt_title());
//		}
//	}
	
	
}
