package br.com.fatec.main;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.File;
import java.io.IOException;

import br.com.fatec.utils.Utils;
import br.com.fatec.utils.ZipUtils;
import br.com.fatec.view.Janela;

public class Principal {

	public static void main(String[] args) {
		
		Janela janela;
    	ZipUtils zip;
    	File arquivos;
    	
    	try {
    		Utils.escreverLog("Criando/Verificando diretórios.");
    		Utils.estruturarDiretorios();
    		
    		janela = new Janela();
    		zip = new ZipUtils();
  		
    		janela.frame.setVisible(true);
    		arquivos = new File(Utils.CAMINHOAPLICACAO + Utils.PROCESSAR + File.separator);
        	
        	janela.btnProcessar.addActionListener(new ActionListener() {
    			
    			@Override
    			public void actionPerformed(ActionEvent e) {
    				
    				Utils.escreverLog("Início de importção de arquivo.");
    				File listaArquivos[] = arquivos.listFiles();
    				File arquivoPara;
    				
    				if(listaArquivos.length == 0){
    					Utils.escreverLog("Nenhum arquivo encontrado.");
    				}
    				
    				for(File lA: listaArquivos) {
    			
    					arquivoPara = new File(lA.getAbsolutePath());
    					
    					boolean foiMovido = arquivoPara.renameTo(new File(Utils.CAMINHOAPLICACAO + Utils.PROCESSANDO + 
    							File.separator + lA.getName()));
    					
    					if(foiMovido) {
    						
    						Utils.escreverLog("Arquivo " + lA.getName() + " movido para " + Utils.CAMINHOAPLICACAO + Utils.PROCESSANDO + ".");
    						try {
    							
    							zip.unzip(Utils.CAMINHOAPLICACAO + Utils.PROCESSANDO + File.separator + lA.getName(), 
    									Utils.CAMINHOAPLICACAO + Utils.PROCESSANDO + File.separator);
    							
    							Utils.escreverLog("Arquivo " + lA.getName() + " descompactado.");
    							
    							File listaCar[] = (new File(Utils.CAMINHOAPLICACAO + Utils.PROCESSANDO + File.separator).listFiles());
    							
    							for(File lc: listaCar) {
    								
    								if(lc.getName().equals(lA.getName())) {
    									continue;
    								}
    								Utils.escreverLog("Lendo o arquivo " + lc.getName() + ".");
    							}
    							
    							for(File lc: listaCar) {
    								if(lc.getName().equals(lA.getName())) {
    									arquivoPara = new File(lc.getAbsolutePath());
    			    					
    									File dic = new File(Utils.CAMINHOAPLICACAO + Utils.PROCESSADO + 
    			    							File.separator + Utils.retornaData(1) + File.separator);
    									
    									if(!dic.exists()) {
    										dic.mkdirs();
    									}
    			    							
    									foiMovido = arquivoPara.renameTo(new File(Utils.CAMINHOAPLICACAO + Utils.PROCESSADO + 
    			    							File.separator + Utils.retornaData(1) + File.separator + lc.getName()));
    			    					
    									if(foiMovido) {
    										Utils.escreverLog("Backup do arquivo " + lc.getName() + " salvo no diretorio " + Utils.CAMINHOAPLICACAO + Utils.PROCESSADO + 
        			    							File.separator + Utils.retornaData(1) + ".");
    			    						
    			    					}
    			    					
    								}else {
    									lc.delete();
    									Utils.escreverLog("Arquivo " + lc.getName() + " removido.");
    								}
    							}
    							janela.txaLog.setText("Rotina de processamento finalizada.");
    							
    						} catch (IOException e1) {
    							Utils.escreverLog("Erro identidifcado: " + e1.getMessage() + ".");
    							e1.printStackTrace();
    						}	
    					}	
    				}
    			}
    		});	
		} catch (Exception e) {
			// TODO: handle exception
		}
    }
}
