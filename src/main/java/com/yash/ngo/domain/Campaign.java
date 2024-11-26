package com.yash.ngo.domain;

import java.sql.Date;

public class Campaign {
	private Integer campaignId;
	private String title;
	private String description;
	private double fundRaise;
	private double target_amount;
	private Date start_date;
	private Date end_date;
	public Integer getCampaignId() {
		return campaignId;
	}
	public void setCampaignId(Integer campaignId) {
		this.campaignId = campaignId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public double getFundRaise() {
		return fundRaise;
	}
	public void setFundRaise(double fundRaise) {
		this.fundRaise = fundRaise;
	}
	public double getTarget_amount() {
		return target_amount;
	}
	public void setTarget_amount(double target_amount) {
		this.target_amount = target_amount;
	}
	public Date getStart_date() {
		return start_date;
	}
	public void setStart_date(Date start_date) {
		this.start_date = start_date;
	}
	public Date getEnd_date() {
		return end_date;
	}
	public void setEnd_date(Date end_date) {
		this.end_date = end_date;
	}
	@Override
	public String toString() {
		return "Campaign [campaignId=" + campaignId + ", title=" + title + ", description=" + description
				+ ", fundRaise=" + fundRaise + ", target_amount=" + target_amount + ", start_date=" + start_date
				+ ", end_date=" + end_date + "]";
	}
	public Campaign() {
		super();
	}



}
