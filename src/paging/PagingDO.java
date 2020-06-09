package paging;

public class PagingDO {
	//paging
	private int totalCount; 	//��ü �Խñ� ��(get)
	private int currentPage; 	//���� ������(get)
	private int totalPage;		//��ü ������ ��(get)
	
	//pagination
	private int displayPage = 5;	//�� �������� ��� ������(���� set)
	private int displayRow = 10;	//�� �������� ��� ��(���� set)
	private int beginPage;			//����¡ ���� ������ ��
	private int endPage;			//����¡ ���� ������ ��
	
	public int getTotalCount() {return totalCount;}
	public void setTotalCount(int totalCount) {this.totalCount = totalCount;}
	
	public int getCurrentPage() {return currentPage;}
	public void setCurrentPage(int currentPage) {this.currentPage = currentPage;}
	
	public int getTotalPage() {return totalPage;}
	public void setTotalPage(int totalPage) {this.totalPage = totalPage;}

	public int getDisplayPage() {return displayPage;}
	public void setDisplayPage(int displayPage) {this.displayPage = displayPage;}

	public int getDisplayRow() {return displayRow;}
	public void setDisplayRow(int displayRow) {this.displayRow = displayRow;}

	public int getBeginPage() {return beginPage;}
	public void setBeginPage(int beginPage) {this.beginPage = beginPage;}
	
	public int getEndPage() {return endPage;}
	public void setEndPage(int endPage) {this.endPage = endPage;}
	
	@Override
	public String toString(){
		return "PagingDO [totalCount=" + totalCount + ", currentPage=" + currentPage + ", totalPage=" + totalPage
				+ ", displayPage=" + displayPage + ", displayRow=" + displayRow + ", beginPage=" + beginPage
				+ ", endPage=" + endPage + "]";
	}
}
