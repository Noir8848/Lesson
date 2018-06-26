package com.kitri.board.model;

public class AlbumDto extends BoardDto {
	
	private int aseq;
	private String origin_picture;
	private String save_picture;
	private String savefolder;
	private int type;
	
	public int getAseq() {
		return aseq;
	}
	public void setAseq(int aseq) {
		this.aseq = aseq;
	}
	public String getOrigin_picture() {
		return origin_picture;
	}
	public void setOrigin_picture(String origin_picture) {
		this.origin_picture = origin_picture;
	}
	public String getSave_picture() {
		return save_picture;
	}
	public void setSave_picture(String save_picture) {
		this.save_picture = save_picture;
	}
	public String getSavefolder() {
		return savefolder;
	}
	public void setSavefolder(String savefolder) {
		this.savefolder = savefolder;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	
}
