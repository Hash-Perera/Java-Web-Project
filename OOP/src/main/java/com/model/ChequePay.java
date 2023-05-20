package com.model;

public class ChequePay extends Payments{

	private String chekNo;
	private String bank;
	private String branch;
	
	public ChequePay(int pid, int eid, double amount, String chekNo, String bank, String branch) {
		
		super(pid, eid, amount);
		this.chekNo = chekNo;
		this.bank = bank;
		this.branch = branch;
	}

	/**
	 * @return the chekNo
	 */
	public String getChekNo() {
		return chekNo;
	}

	/**
	 * @return the bank
	 */
	public String getBank() {
		return bank;
	}

	/**
	 * @return the branch
	 */
	public String getBranch() {
		return branch;
	}

	
}
