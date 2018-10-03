package org.cardLL.cmsweb.model;

import java.util.List;
import org.cardLL.cmsweb.entity.CardProcess;
public class TableResponseCardList {
	List<CardProcess> data;

	long totalAmount;
	long totalCharged;
	long totalLeft;
	
	
	
	

	public List<CardProcess> getData() {
		return data;
	}

	public void setData(List<CardProcess> data) {
		this.data = data;
	}

	public long getTotalAmount() {
		return totalAmount;
	}

	public void setTotalAmount(long totalAmount) {
		this.totalAmount = totalAmount;
	}

	public long getTotalCharged() {
		return totalCharged;
	}

	public void setTotalCharged(long totalCharged) {
		this.totalCharged = totalCharged;
	}

	public long getTotalLeft() {
		return totalLeft;
	}

	public void setTotalLeft(long totalLeft) {
		this.totalLeft = totalLeft;
	}

	
	
	
}
