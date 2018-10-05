package org.cardLL.cmsweb.entity;

public class sumInfoObj {
	private long total;
	private long count;

	public sumInfoObj() {

	}

	public sumInfoObj(long total, long count) {
		this.total = total;
		this.count = count;
	}

	public long getTotal() {
		return total;
	}

	public void setTotal(long total) {
		this.total = total;
	}

	public long getCount() {
		return count;
	}

	public void setCount(long count) {
		this.count = count;
	}

}
