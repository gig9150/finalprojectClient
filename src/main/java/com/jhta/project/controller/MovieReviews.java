package com.jhta.project.controller;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jhta.project.service.ReviewListService;
import com.jhta.project.vo.ReviewBoardVo;

//영화리뷰 컨트롤러
@Controller
public class MovieReviews {
	@Autowired
	private ReviewListService reviewService;

	/////////////////////////////////////////평점 및 관람평 클릭하면 ajax통신하는 함수////////////////////////////////////
	@RequestMapping("/movie/showMovieReviews.do")
	@ResponseBody
	public List<ReviewBoardVo> showReviews(Model model, int filmNum, @RequestParam(value="pageNum", defaultValue = "1") int pageNum,@RequestParam(value="rowCount",defaultValue = "5")int rowCount) {
		System.out.println("영화리뷰con진입"+rowCount);

		HashMap<String, Object> map=new HashMap<String, Object>();
		map.put("filmNum", filmNum);
		map.put("rowCount",rowCount);
		
		List<ReviewBoardVo> reviewListVo=reviewService.showReviews(map);
		int reviewCount=reviewService.count(filmNum);
		/*
		 * PageUtil pu = new PageUtil(pageNum, totalRowCount, 5, 1); HashMap<String,
		 * Object> map= new HashMap<String, Object>(); map.put("startRow",
		 * pu.getStartRow()); map.put("endRow", pu.getEndRow());
		 */
		System.out.println("ajax11111"+reviewListVo);
		System.out.println(reviewListVo.get(0).getMemName());
		System.out.println(reviewListVo.size());
		return reviewListVo;
	}
	
	///////////////////////////////////////관람평 작성 클릭하면 여기로 진입/////////////////////////////////
	@RequestMapping("/movie/writeComment.do")
	@ResponseBody
	public List<ReviewBoardVo> writeComment(int filmNum, int mScore, String rContent, int rowCount) {
		int memNum=21;
		HashMap<String, Object> map=new HashMap<String, Object>();
		map.put("filmNum", filmNum);
		map.put("memNum",memNum);
		map.put("mScore", mScore);
		map.put("rContent",rContent);
		map.put("rowCount",rowCount);
		
//		System.out.println("1111111111111");
		HashMap<String, BigDecimal> chkMap =reviewService.chkReview(filmNum, memNum);
	
		int reviewCheck=chkMap.get("REVIEWCHEK").intValue();
		int buyCheck=chkMap.get("BUYCHECK").intValue();
		int chargeNum=chkMap.get("CHARGENUM").intValue();
		System.out.println(reviewCheck+"..........." + buyCheck);
		//리뷰등록
		if(reviewCheck==0 && buyCheck!=0) {
			System.out.println("11111111111111");
			int codeNum=reviewService.insertMReview(filmNum,memNum,mScore,rContent,chargeNum);
			//List<ReviewBoardVo> ReviewBoardVoList = new List<ReviewBoardVo>();
			if(codeNum==1) {//리뷰테이블에 정상적으로 insert가 되었을 때
				MovieReviews mr=new MovieReviews();
				List<ReviewBoardVo> ReviewBoardVoList=mr.showReviews(null, filmNum, 0, rowCount);
				return ReviewBoardVoList;
			}else {
				System.out.println("222222222222");
				//-1은 리뷰가 이미 작성 됐을때,
				//-2는 구매 안했을때, -3 인설트 실패.
				List<ReviewBoardVo> list=new ArrayList<ReviewBoardVo>();
				list.add(new ReviewBoardVo(null, -3, null, 0, null));
				System.out.println("인서트 실패했을 떄"+ list);
				return list;
			}
		}else if(reviewCheck==1){
			List<ReviewBoardVo> list=new ArrayList<ReviewBoardVo>();
			list.add(new ReviewBoardVo(null, -1, null, 0, null));
			//리뷰 작성하지 못하는 경우 예외처리 하는 곳 (결제내역이 있고, 리뷰내역이 없는 경우를 제외한 모든 경우)
			System.out.println("리뷰 이미 작성했을 때"+ list);
			return list;
		}else {
			List<ReviewBoardVo> list=new ArrayList<ReviewBoardVo>();
			list.add(new ReviewBoardVo(null, -2, null, 0, null));
			System.out.println("관람내역이 없을 때"+ list);
			return list;
		}
	}
}




