package com.ITI.model;

public class TokenResponseModel {

	private String jwtToken;
	//private List<MenuItem> menuItems;

	public TokenResponseModel() {
		super();
		// TODO Auto-generated constructor stub
	}
	public TokenResponseModel(String jwtToken) {
		super();
		this.jwtToken = jwtToken;
	}
	public String getJwtToken() {
		return jwtToken;
	}
	public void setJwtToken(String jwtToken) {
		this.jwtToken = jwtToken;
	}
	@Override
	public String toString() {
		return "TokenResponseModel [jwtToken=" + jwtToken + "]";
	}

	 

}
