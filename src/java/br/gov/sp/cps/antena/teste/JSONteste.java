/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.gov.sp.cps.antena.teste;

import java.io.FileWriter;
import java.io.IOException;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
/**
 *
 * @author daniel.rares
 */
public class JSONteste {
    
    @SuppressWarnings("unchecked")
	public static void main(String[] args) {
		JSONObject obj = new JSONObject();
		
		obj.put("Nome", "Matheus Marques");
		obj.put("Idade", new Integer(19));

		JSONArray cidades = new JSONArray();
		cidades.add("Praia Grande");
		cidades.add("Santos");
		cidades.add("São Vicente");

		obj.put("Cidades", cidades);

		try {

			FileWriter file = new FileWriter("data.json");
			file.write(obj.toJSONString());
			file.flush();
			file.close();

		} catch (IOException e) {
			e.printStackTrace();
		}

		System.out.print(obj.toJSONString());

	}
}
