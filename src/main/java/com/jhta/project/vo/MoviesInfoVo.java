package com.jhta.project.vo;

import java.sql.Date;
//����� ��ȭ�󼼺��� Ŭ������ �� �󼼳�����(�帣,������,����,�⿬,�ٰŸ�) ��� �ִ� VO
public class MoviesInfoVo {
	private String genreName; //�帣�̸�
	private Date filmStart; //������
	private String filmHead; //����
	private String castName; //�⿬��
	private String filmStory; //�ٰŸ�
	
	public MoviesInfoVo() {}
	public MoviesInfoVo(String genreName, Date filmStart, String filmHead, String castName, String filmStory) {
		this.genreName = genreName;
		this.filmStart = filmStart;
		this.filmHead = filmHead;
		this.castName = castName;
		this.filmStory = filmStory;
	}
	public String getGenreName() {
		return genreName;
	}
	public void setGenreName(String genreName) {
		this.genreName = genreName;
	}
	public Date getFilmStart() {
		return filmStart;
	}
	public void setFilmStart(Date filmStart) {
		this.filmStart = filmStart;
	}
	public String getFilmHead() {
		return filmHead;
	}
	public void setFilmHead(String filmHead) {
		this.filmHead = filmHead;
	}
	public String getCastName() {
		return castName;
	}
	public void setCastName(String castName) {
		this.castName = castName;
	}
	public String getFilmStory() {
		return filmStory;
	}
	public void setFilmStory(String filmStory) {
		this.filmStory = filmStory;
	}
	
}
