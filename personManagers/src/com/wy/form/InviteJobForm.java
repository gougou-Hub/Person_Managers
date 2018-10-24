/**
 * 
 */
package com.wy.form;

import org.apache.struts.action.ActionForm;

/**
 * @author Haitao Sun
 *
 */
public class InviteJobForm extends ActionForm{
	private Integer id; // 缂栧彿
	
	private String name = null; // 濮撳悕

	private String sex = "鐢�"; // 鎬у埆

	private String age = null; // 骞撮緞

	private String born = null; // 鍑虹敓鏃ユ湡

	private String job = null; // 搴旇仒鑱屽姟

	private String specialty = null; // 涓撲笟

	private String experience = "鏃�"; // 宸ヤ綔缁忛獙

	private String teachSchool = null; // 瀛﹀巻

	private String afterSchool = null; // 姣曚笟瀛︽牎

	private String tel = null; // 鑱旂郴鐢佃瘽

	private String createtime = null; // 鐧昏鏃堕棿

	private String content = "搴斿眾姣曚笟鐢燂紝鏃犲伐浣滅粡楠�"; // 宸ヤ綔绠�鍘�

	private String isstock = null; // 鏄惁琚綍鐢�

	private String address = null; // 瀹跺涵浣忓潃
	


	

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getAfterSchool() {
		return afterSchool;
	}

	public void setAfterSchool(String afterSchool) {
		this.afterSchool = afterSchool;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getBorn() {
		return born;
	}

	public void setBorn(String born) {
		this.born = born;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getCreatetime() {
		return createtime;
	}

	public void setCreatetime(String createtime) {
		this.createtime = createtime;
	}


	public String getExperience() {
		return experience;
	}

	public void setExperience(String experience) {
		this.experience = experience;
	}

	

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getIsstock() {
		return isstock;
	}

	public void setIsstock(String isstock) {
		this.isstock = isstock;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getSpecialty() {
		return specialty;
	}

	public void setSpecialty(String specialty) {
		this.specialty = specialty;
	}

	public String getTeachSchool() {
		return teachSchool;
	}

	public void setTeachSchool(String teachSchool) {
		this.teachSchool = teachSchool;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

}
