package board;

import java.sql.Date;

public class BoardDO {
	//필드(프로퍼티, 중간저장소)
	private int seq, cnt;
	private String title, writer, content;
	private Date regDate;

	//필드 하나당 getter, setter 메소드
	public int getSeq() {return seq;}
	public void setSeq(int seq) {this.seq = seq;}

	public int getCnt() {return cnt;}
	public void setCnt(int cnt) {this.cnt = cnt;}

	public String getTitle() {return title;}
	public void setTitle(String title) {this.title = title;}
	
	public String getWriter() {return writer;}
	public void setWriter(String writer) {this.writer = writer;}
	
	public String getContent() {return content;}
	public void setContent(String content) {this.content = content;}
	
	public Date getRegDate() {return regDate;}
	public void setRegDate(Date regDate) {this.regDate = regDate;}

}
