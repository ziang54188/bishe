package com.imut.serviceImpl;

import java.io.ByteArrayInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
import java.util.Random;

import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.imut.dao.QuestionnaireMapper;
import com.imut.dao.UserMapper;
import com.imut.model.Answers;
import com.imut.model.Question;
import com.imut.model.Questionnaire;
import com.imut.model.User;
import com.imut.service.MyQuestionnaireService;

@Service
public class MyQuestionnaireServiceImpl implements MyQuestionnaireService {
	@Autowired
	private UserMapper userMapper;

	@Autowired
	private QuestionnaireMapper questionnaireMapper;

	/**
	 * 查看本用户的全部问卷列表
	 */
	@Override
	public User getUserById(String id) {
		User selectByPrimaryKey = userMapper.selectByPrimaryKey(id);
		return selectByPrimaryKey;
	}

	@Override
	public List<Questionnaire> getQlistBySearch(String id, String wd) {

		return questionnaireMapper.getQlistBySearch(id, wd);
	}

	@Override
	public int deleteQuestionnaire(String qid, String id) {
		int sum = questionnaireMapper.deleteQuestionnaire(qid, id);
		return sum;
	}

	@Override
	public List<Questionnaire> getRecyclebin(String id) {

		return questionnaireMapper.getRecyclebin(id);
	}

	/**
	 * 复制问卷
	 */
	@Override
	public void copyQuestionnaire(Questionnaire qnaire) {
		Random ran = new Random();
		String qname = qnaire.getQname() + (ran.nextInt(9000) + 1000);
		qnaire.setQname(qname);
		int qid=qnaire.getQid();
		// 复制问卷
		 questionnaireMapper.copyQuestionnaire(qnaire);
		//获取问卷问题
		List<Question> questions = questionnaireMapper.getQuestions(qid);
		System.out.println("一共有这么多个问卷"+questions.size());
		for (Question question : questions) {
			//修改问卷的qid
			question.setQid(qnaire.getQid());
			System.out.println(question.toString());
		}
		//复制问题
		questionnaireMapper.copyQuestion(questions);
		
	}

	@Override
	public Questionnaire getQuestionnaireByid(String qid) {

		return questionnaireMapper.getQuestionnaireByid(qid);
	}

	@Override
	public int createquestionnaire(Questionnaire q) {
		
		return questionnaireMapper.createquestionnaire(q);
	}

	@Override
	public void updatequestionnaire(Questionnaire questionnaire) {
		questionnaireMapper.updatequestionnaire(questionnaire);
		questionnaireMapper.copyQuestion(questionnaire.getQuestions());
	}

	@Override
	public Questionnaire editquestionnaire(String qid) {
		return questionnaireMapper.editquestionnaire(qid);
	}

	@Override
	public void addanswers(List<Answers> list) {
		questionnaireMapper.addanswers(list);
		questionnaireMapper.updatesum(list.get(0).getQid()+"");
	}

	@Override
	public void download(String qid) throws IOException {
		Connection con = Jsoup.connect("http://127.0.0.1:8080/SsmMaven/questionlook?qid="+qid);
		Document document = con.get();
		

		InputStream is = new ByteArrayInputStream(document.html().getBytes("UTF-8"));
		OutputStream os = new FileOutputStream("d:\\"+qid+"原始问卷问卷.doc");  
		POIFSFileSystem fs = new POIFSFileSystem();  
	    //对应于org.apache.poi.hdf.extractor.WordDocument  
	    fs.createDocument(is, "WordDocument");  
	    fs.writeFilesystem(os);  
	    os.close();  
	    is.close();  
		
	}



	

}
