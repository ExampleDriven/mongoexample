package org.exampledriven.mongoexample.controller;

import java.util.Date;
import java.util.List;

import javax.inject.Inject;

import org.exampledriven.mongoexample.form.News;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class NewsFormController {

	@Inject
	MongoTemplate mongoOperations;

	@RequestMapping(value = "/news.html", method = RequestMethod.GET)
	public String news(@RequestParam("id") String id, Model model) {
		News news = mongoOperations.findById(id, News.class);
		model.addAttribute("news", news);
		
		return "news";
	}
	
	@RequestMapping(value = "/listNews.html")
	public void listNews(Model model) {
		List<News> newsList = mongoOperations.findAll(News.class);
		model.addAttribute("newsList", newsList);
	}

	@RequestMapping(value = "/createNews.html", method = RequestMethod.GET)
	public void prepareNewsForm(Model model) {		
		model.addAttribute("news", new News());
	}
	
	@RequestMapping(value = "/createNews.html", method = RequestMethod.POST)
	public String handleNews(@ModelAttribute News news, Model model) {
		news.setCreated(new Date());
		mongoOperations.save(news);
		model.addAttribute("news", news);

		return "news";
	}
}
