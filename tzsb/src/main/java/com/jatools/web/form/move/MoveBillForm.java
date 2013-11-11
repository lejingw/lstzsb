package com.jatools.web.form.move;

import java.util.List;

import com.jatools.vo.move.MoveBillHead;
import com.jatools.vo.move.MoveBillLine;
import com.jatools.web.form.BaseForm;

public class MoveBillForm extends BaseForm {
	private MoveBillHead head;
	private List<MoveBillLine> lineList;

	public List<MoveBillLine> getLineList() {
		return lineList;
	}

	public void setLineList(List<MoveBillLine> lineList) {
		this.lineList = lineList;
	}

	public MoveBillHead getHead() {
		return head;
	}

	public void setHead(MoveBillHead head) {
		this.head = head;
	}
}
