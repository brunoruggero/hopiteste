package br.com.hopiteste.rn;

import java.util.Calendar;
import java.util.GregorianCalendar;

public class ConverteDataEnParaCalendar {
	
public Calendar executa(String data) {
		
		String[] dataParts = data.split("-"); //["2021","06","12"]
		
		Integer ano = Integer.parseInt(dataParts[0]);
		Integer mes = Integer.parseInt(dataParts[1]);
		Integer dia = Integer.parseInt(dataParts[2]);
		
		Calendar calendar = new GregorianCalendar(ano,(mes-1),dia);
		return calendar;
	}
}
