package controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import dao.BoardDAO;
import dto.BoardDTO;

@WebServlet("*.qnaboard")
public class QnABoardController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf8");
		
		String uri = request.getRequestURI();
		BoardDAO dao = new BoardDAO();
		Gson g = new Gson();

		try {
			if(uri.equals("/list.qnaboard")) {
				int cpage = Integer.parseInt(request.getParameter("cpage"));
				System.out.println(cpage);
				HttpSession session = request.getSession();
				session.setAttribute("cpage", cpage);
				
				List<BoardDTO> list = dao.selectByPage(cpage);	// 한 페이지에 보여지는 게시글의 개수를 정하기 위해 새로운 메소드가 필요함.
				//List<BoardDTO> list = dao.selectAll();
				String pageNavi = dao.getPageNavi(cpage);
				
				request.setAttribute("list", list);
				request.setAttribute("navi", pageNavi);
				request.getRequestDispatcher("/qnaboard/USERQnAlist.jsp").forward(request, response);
				
			}else if(uri.equals("/write.qnaboard")) {
				response.sendRedirect("/qnaboard/USERQnawrite.jsp");
			
			}else if(uri.equals("/save.qnaboard")) {
				String title = request.getParameter("title");
				String contents = request.getParameter("contents");
				String writer = (String)request.getSession().getAttribute("loginID");
				System.out.println(title);
				
				dao.insert(new BoardDTO(0, title,contents,writer,null,0));
				response.sendRedirect("/list.qnaboard?cpage=1");
			
			}else if(uri.equals("/detail.qnaboard")) {
				int cpage = (int)request.getSession().getAttribute("cpage");
				int seq = Integer.parseInt(request.getParameter("seq"));
				String writer = (String)request.getSession().getAttribute("loginID");
				
				BoardDTO dto = dao.selectBySeq(seq);
								
				// 이 페이지를 들어오기 위해 거쳐온 바로 전 페이지를 변수에 담는다.
				// 이전 페이지가 list.board 일 때만 조회수가 올라가도록 if문 사용
				String referer = request.getHeader("referer");
				if(referer.contains("http://localhost/list.qnaboard")) {
					dao.updateViewCount(seq);
				}
				
				request.setAttribute("cpage", cpage);
				request.setAttribute("dto", dto);
				request.setAttribute("writer", writer);
				request.getRequestDispatcher("/qnaboard/USERQnAdetail.jsp").forward(request, response);
			
			}else if(uri.equals("/delete.qnaboard")) {
				int seq = Integer.parseInt(request.getParameter("seq"));
				dao.deleteBySeq(seq);
				response.sendRedirect("/list.qnaboard?cpage=1");
			}
			
			else if(uri.equals("/update.qnaboard")) {
				int seq = Integer.parseInt(request.getParameter("seq"));
				String title = request.getParameter("title");
				String contents = request.getParameter("contents");
				
				System.out.println(seq + " : " + title + " : " + contents);
				int result = dao.updateBySeq(seq, title,contents);
				
				response.sendRedirect("/detail.qnaboard?seq="+seq);
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
			response.sendRedirect("error.jsp");
			return;
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
