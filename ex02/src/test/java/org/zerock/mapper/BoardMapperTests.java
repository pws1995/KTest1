package org.zerock.mapper;

import java.util.List;

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
public class BoardMapperTests {
	
	@Autowired
	private BoardMapper mapper;
	@Test
	public void testGetList() {
		List<BoardVO> list = mapper.getList();
		log.info(list);
		mapper.getList().forEach(vo -> log.info(vo));
	}
	
	@Test
	public void testGetListWithPaging() {
		Criteria cri = new Criteria();
		mapper.getListWithPaging(cri).forEach(vo -> log.info(vo));
	}
	
	@Test
	public void testInsert() {
		BoardVO vo = new BoardVO();
		vo.setTitle("제목1");
		vo.setContent("내용1");
		vo.setWriter("글쓴이1");
		mapper.insert(vo);
	}
	
	@Test
	public void testRead() {
		log.info("상세보기 : " + mapper.read(1L));
	}
	
	@Test
	public void testDelete() {
		log.info("삭제된 글의 개수는 : " + mapper.delete(21L));
	}
	
	@Test
	public void testUpdate() {
		BoardVO vo = new BoardVO();
		vo.setBno(41L);
		vo.setTitle("aaaa");
		vo.setContent("bbbb");
		vo.setWriter("cccc");
		log.info("수정된 글의 개수는 : " + mapper.update(vo));
	}
	
	@Test
	public void testInsertSelectKey() {
		BoardVO vo = new BoardVO();
		vo.setTitle("제목1");
		vo.setContent("내용1");
		vo.setWriter("글쓴이1");
		
		mapper.insertSelectKey(vo);
		log.info("등록된 글번호는 " + vo.getBno());
	}
}
