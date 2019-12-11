package com.biscuit.b1.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.biscuit.b1.model.ChoiceVO;
import com.biscuit.b1.model.CinemaVO;
import com.biscuit.b1.model.MovieInfoVO;
import com.biscuit.b1.model.TheaterVO;
import com.biscuit.b1.model.TimeInfoVO;
import com.biscuit.b1.service.MovieSelectService;
import com.biscuit.b1.service.MovieService;

@Controller
@RequestMapping("/movie/**")
public class MovieController {
	
	@Inject
	private MovieSelectService movieSelectService;
	@Inject
	private MovieService movieService;
	
	@Value("${movie.key}")
	private String key;
	
	@GetMapping("movieApiTest")
	public void movieApiTest() throws Exception {
		movieService.MovieApiTest();
	}
	
	@GetMapping("movieSelect")
	public ModelAndView movieSelect(CinemaVO cinemaVO, TimeInfoVO timeInfoVO) throws Exception {
		List<MovieInfoVO> movieTitle = movieSelectService.movieTitleSelect();
		List<CinemaVO> movieLoc = movieSelectService.movieLocSelect();
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("movieTitle", movieTitle);
		mv.addObject("movieLoc", movieLoc);
		mv.setViewName("movie/movieSelect");
		
		return mv;
	}
	
	@GetMapping("locSelect")
	//@ResponseBody
	public ModelAndView locSelect(ChoiceVO choiceVO) throws Exception {
		//영화선택후 지역선택값 받아서 모든 영화관
		List<CinemaVO> ar = movieSelectService.movieCinemaSelect(choiceVO);
		
		//선택한 영화에 따른 영화관
		List<ChoiceVO> cr = movieSelectService.movieChoice(choiceVO);
		
		ModelAndView mv = new ModelAndView(); 
		mv.setViewName("common/cineme_result");
		mv.addObject("result", ar);
		mv.addObject("selectResult", cr);
		
		return mv;
	}
	
	
	@GetMapping("dateSelect")
	public ModelAndView dateSelect(ChoiceVO choiceVO) throws Exception {
		//날짜선택
		List<TimeInfoVO> movieDateSelect = movieSelectService.movieDateSelect(choiceVO);
		
		for(TimeInfoVO a : movieDateSelect){
			a.setTimeInfo_date(a.getTimeInfo_date().substring(0, 10));
		}
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("common/date_result");
		mv.addObject("result", movieDateSelect);
		
		return mv;
	}
	
	@GetMapping("timeSelect")
	public ModelAndView timeSelect(ChoiceVO choiceVO) throws Exception {		
		List<TimeInfoVO> dateSelect =  movieSelectService.movieTimeSelect(choiceVO);
		
		for(TimeInfoVO a : dateSelect){
			a.setTimeInfo_date(a.getTimeInfo_date().substring(0, 10));
			a.setTimeInfo_start(a.getTimeInfo_start().substring(11, 16));
		}
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("common/time_result");
		mv.addObject("result", dateSelect);
		
		return mv;
	}
	
	
	
	
	

}