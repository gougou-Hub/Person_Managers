/**
 * 
 */
package com.wy.form;

import org.apache.struts.action.ActionForm;

/**
 * @author Haitao Sun
 *
 */
public class ManagerForm extends ActionForm{
	private Integer id;

	private String account =null;

	private String password =null;

	private String managerLevel =null;

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getManagerLevel() {
		return managerLevel;
	}

	public void setManagerLevel(String managerLevel) {
		this.managerLevel = managerLevel;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}



}
