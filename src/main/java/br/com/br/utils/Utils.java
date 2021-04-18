package br.com.br.utils;

import java.io.File;

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
	
}
