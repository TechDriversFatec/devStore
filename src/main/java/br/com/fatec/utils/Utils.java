package br.com.fatec.utils;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Utils {

	public final static String PROCESSAR = "processar";
	public final static String PROCESSANDO = "processando";
	public final static String PROCESSADO = "processado";
	public final static String LOG = "log";
	public static String CAMINHOAPLICACAO;

	public static void estruturarDiretorios() {
		CAMINHOAPLICACAO = System.getProperty("user.dir") + File.separator;

		File file = new File(CAMINHOAPLICACAO + PROCESSAR);

		if (!file.exists()) {
			file.mkdirs();
		}

		file = new File(CAMINHOAPLICACAO + PROCESSANDO);

		if (!file.exists()) {
			file.mkdirs();
		}

		file = new File(CAMINHOAPLICACAO + PROCESSADO);

		if (!file.exists()) {
			file.mkdirs();
		}

		file = new File(CAMINHOAPLICACAO + LOG);

		if (!file.exists()) {
			file.mkdirs();
		}
	}
	
	public static void escreverLog(String texto) {
		CAMINHOAPLICACAO = System.getProperty("user.dir") + File.separator;
		File file = new File(CAMINHOAPLICACAO + LOG + File.separator + retornaData(1));
		
		if(!file.exists()) {
			file.mkdirs();
		}
		
		FileWriter fileWriter;
		BufferedWriter escrever;
		try {
			file = new File(CAMINHOAPLICACAO + LOG + File.separator + retornaData(1) + File.separator + "LOG.txt");
			
			if(file.exists()) {
				fileWriter = new FileWriter(file, true);
			}else {
				fileWriter = new FileWriter(file);
			}
				
			escrever = new BufferedWriter (fileWriter);
	        escrever.append("[" + retornaData(2) + "] " + texto);
	        escrever.newLine();
	        escrever.close();
	        fileWriter.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	
	public static String retornaData(Integer tipo) {
		Date data = new Date();
		SimpleDateFormat formatar = new SimpleDateFormat();
		
	    if(tipo == 1) {
	    	formatar = new SimpleDateFormat("ddMMyyyy");
	    }else if(tipo == 2) {
	    	formatar = new SimpleDateFormat("dd-MM-yyyy HH:mm:ss" );
	    }
	    
	    return formatar.format(data);
		
	}

}
