package test.sbapp.dto;

public class SbAppDto {
	private int storenum; 
 	private int storecall; 
    
    public SbAppDto() {}

	public SbAppDto(int storenum, int storecall) {
		super();
		this.storenum = storenum;
		this.storecall = storecall;
	}

	public int getStorenum() {
		return storenum;
	}

	public void setStorenum(int storenum) {
		this.storenum = storenum;
	}

	public int getStorecall() {
		return storecall;
	}

	public void setStorecall(int storecall) {
		this.storecall = storecall;
	}
    
    
}
