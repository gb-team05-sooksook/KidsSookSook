package com.app;

public class PageDTO {
	
	private int startRow;
	private int endPage;
	private int startPage;
	private int realEndPage;
	
	private boolean prev;
	private boolean next;
	
	/**
	 * @param page 현재 페이지
	 * @param total 총 게시글 갯수
	 * @param rowCount 한 페이지에 출력되는 게시글의 개수
	 * @param pageCount 한 페이지에서 나오는 페이지 버튼의 개수
	 * @return 페이지 처리를 위한 pageDTO 객체 리턴
	 */
	public PageDTO createPageDTO(int page, Long total, int rowCount, int pageCount) {
		this.startRow = (page - 1) * rowCount;
		this.endPage = (int)(Math.ceil(page / (double)pageCount) * pageCount);
		this.startPage = endPage - (pageCount - 1);
		this.realEndPage = (int)Math.ceil(total / (double)pageCount);
		
		this.prev = startPage > 1;
		this.next = false;
		
		this.endPage = this.endPage > this.realEndPage ? this.realEndPage : this.endPage;
		this.next = this.endPage != this.realEndPage;
		
		return this;
	}

	public int getStartRow() {
		return startRow;
	}

	public int getEndPage() {
		return endPage;
	}

	public int getStartPage() {
		return startPage;
	}

	public int getRealEndPage() {
		return realEndPage;
	}

	public boolean isPrev() {
		return prev;
	}

	public boolean isNext() {
		return next;
	}

	@Override
	public String toString() {
		return "PageDTO [startRow=" + startRow + ", endPage=" + endPage + ", startPage=" + startPage + ", realEndPage="
				+ realEndPage + ", prev=" + prev + ", next=" + next + "]";
	}
}