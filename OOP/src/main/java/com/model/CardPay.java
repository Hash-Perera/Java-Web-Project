package com.model;

public class CardPay extends Payments{
	
	private String cardNo;
	private String bank;
	private String branch;
	
	public CardPay(int pid, int eid, double amount, String cardNo, String bank, String branch) {
		super(pid, eid, amount);
		this.cardNo = cardNo;
		this.bank = bank;
		this.branch = branch;
	}

	/**
	 * @return the cardNo
	 */
	public String getCardNo() {
		return cardNo;
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
