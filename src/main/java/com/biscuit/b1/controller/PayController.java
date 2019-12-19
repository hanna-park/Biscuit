package com.biscuit.b1.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.biscuit.b1.model.ChoiceVO;
import com.biscuit.b1.model.PayInfoVO;
import com.biscuit.b1.service.PayService;

@Controller
@RequestMapping("/pay/**")
public class PayController {
	@Inject
	private PayService payService;

	@GetMapping(value = "kakaoPay")
	public void KakaoPayGet() throws Exception {

	}
	/*
	@GetMapping(value = "kakaoPay")
	public void kakaoPayGet(String[] sname, String[] sprice, String[] camount) throws Exception {
		for(int i=0;i<sname.length;i++) {
			System.out.println(sname[i]);
		}
		for(int i=0;i<sprice.length;i++) {
			System.out.println(sprice[i]);
		}
		for(int i=0;i<camount.length;i++) {
			System.out.println(camount[i]);
		}
	}
	*/
	@PostMapping(value = "kakaoPay")
	public String KakaoPayPost(String total_amount, String quantity) throws Exception {
		System.out.println(total_amount);
		System.out.println(quantity);
		return "redirect:" + payService.KakaoPayReady(total_amount, quantity);
	}

	@GetMapping("/kakaoPaySuccess")
	public ModelAndView kakaoPaySuccess(HttpServletRequest request, HttpSession session) throws Exception {
		String bookCode = (String) session.getAttribute("allBookCode");
		String pg_token = request.getParameter("pg_token");
		String adultCount = (String) session.getAttribute("adultCount");
		String kidCount = (String) session.getAttribute("kidCount");
		ChoiceVO choiceVO = (ChoiceVO) session.getAttribute("ChoiceVO");
		PayInfoVO payInfoVO = new PayInfoVO();
		ModelAndView mv = new ModelAndView();
		payInfoVO = payService.KakaoPayApprove(pg_token);
		mv.addObject("vo", choiceVO);
		mv.addObject("bookCode", bookCode);
		mv.addObject("adultCount", adultCount);
		mv.addObject("kidCount", kidCount);
		mv.addObject("pay", payInfoVO);
		return mv;
	}

}