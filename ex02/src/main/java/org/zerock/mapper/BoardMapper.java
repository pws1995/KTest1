package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;

public interface BoardMapper {
	//목록보기
	public List<BoardVO> getList();
	
	//목록보기(페이지 처리)
	public List<BoardVO> getListWithPaging(Criteria cri);

	//글목록	-등록, 삭제, 수정일 경우 리턴이 int 이면 처리된 글의 개수가 반납된다.
	public void insert(BoardVO vo);
	
	//글등록 (등록된 글번호를 알아야하는경우 즉, PK값을 알아야 하는경우)
	public void insertSelectKey(BoardVO vo);
	
	//글 상세보기
	public BoardVO read(Long bno);
	//글 수정
	public int update(BoardVO bno);
	//글 삭제
	public int delete(Long bno);
	//글 개수
	public long count();
		
	
		
	
}
