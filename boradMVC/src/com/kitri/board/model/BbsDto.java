package com.kitri.board.model;

public class BbsDto extends BoardDto{

	private int bseq;
	private int seq;
	
	public int getBseq() {
		return bseq;
	}
	public void setBseq(int bseq) {
		this.bseq = bseq;
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getOrigin_file() {
		return origin_file;
	}
	public void setOrigin_file(String origin_file) {
		this.origin_file = origin_file;
	}
	public String getSave_file() {
		return save_file;
	}
	public void setSave_file(String save_file) {
		this.save_file = save_file;
	}
	public long getFilesize() {
		return filesize;
	}
	public void setFilesize(long filesize) {
		this.filesize = filesize;
	}
	public String getSavefolder() {
		return savefolder;
	}
	public void setSavefolder(String savefolder) {
		this.savefolder = savefolder;
	}
	private String origin_file;
	private String save_file;
	private long filesize;
	private String savefolder;
	
}
