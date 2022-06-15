package org.zerock.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class BoardServiceTests {

	@Autowired
	private BoardService service;
	
	//목록보기
	@Test
	public void testGetList() {
		Criteria cri = new Criteria();
		service.getList(cri).forEach(vo -> log.info(vo));
	}
	//
	@Test
	public void testInsert() {
		BoardVO vo = new BoardVO();
		vo.setTitle("제목1");
		vo.setContent("내용1");
		vo.setWriter("글쓴이1");
		service.register(vo);
	}
	
	@Test
	public void testRead() {
		log.info("상세보기 : " + service.get(41L));
	}
	
	@Test
	public void testDelete() {
		log.info("삭제된 글의 개수는 : " + service.remove(61L));
	}
	
	@Test
	public void testUpdate() {
		BoardVO vo = new BoardVO();
		vo.setBno(81L);
		vo.setTitle("aaaa");
		vo.setContent("bbbb");
		vo.setWriter("cccc");
		service.modify(vo);
	}

}
