/**
 * 
 */
package com.wy.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import com.wy.dao.ObjectDao;
import com.wy.form.CjForm;

/**
 * @author Haitao Sun
 *
 */
public class CjAction extends DispatchAction  {
	private ObjectDao objectDao;

	public ObjectDao getObjectDao() {
		return objectDao;
	}

	public void setObjectDao(ObjectDao objectDao) {
		this.objectDao = objectDao;
	}

	// 奖惩察看操作
	public ActionForward queryCj(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		String information = "from CjForm order by id desc";
		if (request.getParameter("type") != null) {
			String type = request.getParameter("type").trim();
			information = "from CjForm where cj_type=" + type
					+ " order by id desc";
			
			request.setAttribute("type", type);
		}
		System.out.println("information:"+information);
		List list = objectDao.getObjectList(information);
		request.setAttribute("list", list);
		return mapping.findForward("queryCj");
	}

	// 删除奖惩操作
	public ActionForward deleteCj(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id");
		if (id == null) {
			CjForm cjForm = (CjForm) objectDao
					.getObjectForm("from CjForm where id='" + id + "'");
			this.objectDao.deleteObjectForm(cjForm);
		}
		return this.queryCj(mapping, form, request, response);
	}

	// 添加奖惩操作
	public ActionForward saveCj(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		CjForm cjForm = (CjForm) form;
		this.objectDao.insertObjectForm(cjForm);
		return mapping.findForward("operationCj");
	}

	// 奖惩详细查询
	public ActionForward queryOneCj(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id");
		CjForm cjForm = (CjForm) objectDao
				.getObjectForm("from CjForm where id='" + id + "'");
		request.setAttribute("cjForm", cjForm);
		return mapping.findForward("queryOneCj");
	}

}
