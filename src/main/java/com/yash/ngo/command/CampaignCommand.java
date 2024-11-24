package com.yash.ngo.command;

import java.math.BigDecimal;
import java.time.LocalDate;

public class CampaignCommand 
{
	private String title;
    private String description;
    private BigDecimal fundRaise;
    private BigDecimal target_amount;
    private LocalDate start_date;
    private LocalDate end_date;
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
	public BigDecimal getFundRaise() {
		return fundRaise;
	}
	public void setFundRaise(BigDecimal fundRaise) {
		this.fundRaise = fundRaise;
	}
	public BigDecimal getTarget_amount() {
		return target_amount;
	}
	public void setTarget_amount(BigDecimal target_amount) {
		this.target_amount = target_amount;
	}
	public LocalDate getStart_date() {
		return start_date;
	}
	public void setStart_date(LocalDate start_date) {
		this.start_date = start_date;
	}
	public LocalDate getEnd_date() {
		return end_date;
	}
	public void setEnd_date(LocalDate end_date) {
		this.end_date = end_date;
	}
	
    
}
