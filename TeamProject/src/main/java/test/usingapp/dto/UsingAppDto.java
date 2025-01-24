package test.usingapp.dto;

public class UsingAppDto {
	 	private int comnum; 
	 	private String comname; 
	    private int comid;  
	    private String createdat; 
	    
	    public UsingAppDto() {}

		public UsingAppDto(int comnum, String comname, int comid, String createdat) {
			super();
			this.comnum = comnum;
			this.comname = comname;
			this.comid = comid;
			this.createdat = createdat;
		}

		public int getComnum() {
			return comnum;
		}

		public void setComnum(int comnum) {
			this.comnum = comnum;
		}

		public String getComname() {
			return comname;
		}

		public void setComname(String comname) {
			this.comname = comname;
		}

		public int getComid() {
			return comid;
		}

		public void setComid(int comid) {
			this.comid = comid;
		}

		public String getCreatedat() {
			return createdat;
		}

		public void setCreatedat(String createdat) {
			this.createdat = createdat;
		}
	    
	    
}
