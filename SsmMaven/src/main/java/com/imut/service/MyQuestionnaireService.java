package com.imut.service;

import java.io.IOException;
import java.util.List;

import com.imut.model.Answers;
import com.imut.model.Questionnaire;
import com.imut.model.User;

public interface MyQuestionnaireService {
	public User getUserById(String id);

	public List<Questionnaire> getQlistBySearch(String id,String wd);

	public int deleteQuestionnaire(String qid, String id);

	public List<Questionnaire> getRecyclebin(String id);

	

	public void copyQuestionnaire(Questionnaire qnaire);

	public Questionnaire getQuestionnaireByid(String qid);

	public int createquestionnaire(Questionnaire q);

	public void updatequestionnaire(Questionnaire questionnaire);

	public Questionnaire editquestionnaire(String qid);

	public void addanswers(List<Answers> list);

	public void download(String qid) throws IOException ;


}
