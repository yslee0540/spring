package com.multi.weka04.komoran;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;

import kr.co.shineware.nlp.komoran.constant.DEFAULT_MODEL;
import kr.co.shineware.nlp.komoran.core.Komoran;
import kr.co.shineware.nlp.komoran.model.KomoranResult;
import weka.filters.unsupervised.attribute.Add;

//https://needjarvis.tistory.com/744

public class KomoranTest6 {

	public static void main(String[] args) {
		Komoran komoran = new Komoran(DEFAULT_MODEL.FULL);
		String document = "�� ����� ����� �̰��̶��... 15ȭ������ ��������ߴµ�, ���ڱ� ��� ���� ���̶��.. �ʹ� �㹫�ϴ�.";
		KomoranResult komoranResult = komoran.analyze(document); // �ܾ� �м� ���
		List<String> nounList = komoranResult.getNouns(); // ��� ��ϸ� ����
		System.out.println("��ü ��� ��ϸ� ����");
		System.out.println(nounList); // ��ü ��� ��� ����
		System.out.println();

		//stopWords����� 
		HashSet<String> stopWords = new HashSet<>();

		try {
			BufferedReader buffer = new BufferedReader(new InputStreamReader(new FileInputStream(
					"data/stop.txt")));
			String line = null;
			// System.out.println(buffer.readLine());
			while ((line = buffer.readLine()) != null) {
				if (line.trim().length() > 0) {
					stopWords.add(line.trim());
				}
			}
		} catch (Exception e) {
		}
		System.out.println(stopWords); //stopWords����Ʈ 
		System.out.println(stopWords.size());
		
		//��Ģ�� ����ó��
		List<String> nounList2 = new ArrayList<String>();
		for (String s : nounList) {
			if(stopWords.contains(s)) {
				continue;
			}
			nounList2.add(s);
		}
		//��Ģ�� ���ܵ� ����� 
		System.out.println(nounList2);
		
		
		
	}
}
