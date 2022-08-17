package com.chainsys.epassmanagementsystem.businesslogic;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import java.time.LocalDate;

public class Logic {
	
	private Logic(){
	}
	public static Date getInstanceDate1() {
		Calendar vcalendar = Calendar.getInstance();
		String dates = vcalendar.get(Calendar.DATE) + "/" + (vcalendar.get(Calendar.MONTH) + 1) + "/"
				+ vcalendar.get(Calendar.YEAR);
		SimpleDateFormat dateFormat = new SimpleDateFormat();
		Date date = null;
		try {
			date = new java.sql.Date(dateFormat.parse(dates).getTime());

		} catch (ParseException e) {
			e.printStackTrace();
		}
		return date;
	}

	public static LocalDate getInstanceDate() {
		return java.time.LocalDate.now();
	}

	public static LocalDate getMinusDate() {
		LocalDate date = LocalDate.now();
		return date.minusDays(1);
	}
	
	public static LocalDate getMinusYear() {
		LocalDate date = LocalDate.now();
		return date.minusYears(15);
	}
	
	public static LocalDate getAddDate() {
		LocalDate date = LocalDate.now();
		return date.plusDays(1);
	}
	
}
