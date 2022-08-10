package com.chainsys.epassManagementSystem.businesslogic;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.time.LocalDate;
import java.time.LocalDateTime;  
import java.time.format.DateTimeFormatter;

public class Logic {
	public static Date getInstanceDate() {
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
	
	public static LocalDate getInstanceDate1() {
		LocalDate date=java.time.LocalDate.now();
		return date;
	}
}
