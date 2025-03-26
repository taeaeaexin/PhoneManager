package servlet;

import java.io.IOException;
import java.util.List;
import dao.PhoneDao;
import dto.PhoneDto;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/Phones/*")
public class PhoneServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String job = request.getRequestURI().substring(request.getContextPath().length());
        switch(job) {
            case "/Phones/list" : list(request, response); break;
            case "/Phones/detail" : detail(request, response); break;
            case "/Phones/insert" : insert(request, response); break;
            case "/Phones/update" : update(request, response); break;
            case "/Phones/delete" : delete(request, response); break;
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void list(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PhoneDao phoneDao = new PhoneDao();
        List<PhoneDto> phoneList = phoneDao.listPhone();
        System.out.println(phoneList);
        request.setAttribute("phoneList", phoneList);
        request.getRequestDispatcher("/list.jsp").forward(request, response);
    }

    protected void detail(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PhoneDao phoneDao = new PhoneDao();
        // PhoneId parameter
        int phoneId = Integer.parseInt(request.getParameter("phoneId"));
        PhoneDto phoneDto = phoneDao.detailPhone(phoneId);
        System.out.println(phoneDto);
        request.setAttribute("phoneDto", phoneDto);
        request.getRequestDispatcher("/detailForm.jsp").forward(request, response);
    }

    protected void insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PhoneDao phoneDao = new PhoneDao();
        int phoneId = Integer.parseInt(request.getParameter("phoneId"));
        String phoneName = request.getParameter("phoneName");
        String publisher = request.getParameter("publisher");
        int price = Integer.parseInt(request.getParameter("price"));

        PhoneDto phoneDto = new PhoneDto(phoneId, phoneName, publisher, price);
        int ret = phoneDao.insertPhone(phoneDto);

        System.out.println(ret);
        // if ( ret == 1 ) {} // 성공
        // else {} // 실패

        request.getRequestDispatcher("/insertResult.jsp").forward(request, response);
    }

    protected void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PhoneDao phoneDao = new PhoneDao();
        int phoneId = Integer.parseInt(request.getParameter("phoneId"));
        String phoneName = request.getParameter("phoneName");
        String publisher = request.getParameter("publisher");
        int price = Integer.parseInt(request.getParameter("price"));

        PhoneDto phoneDto = new PhoneDto(phoneId, phoneName, publisher, price);
        int ret = phoneDao.updatePhone(phoneDto);

        System.out.println(ret);
        // if ( ret == 1 ) {} // 성공
        // else {} // 실패
        System.out.println("Received phoneId: " + phoneId);  // 디버깅용


        request.getRequestDispatcher("/updateResult.jsp").forward(request, response);
    }

    protected void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PhoneDao phoneDao = new PhoneDao();
        int phoneId = Integer.parseInt(request.getParameter("phoneId"));
        int ret = phoneDao.deletePhone(phoneId);

        System.out.println(ret);
        // if ( ret == 1 ) {} // 성공
        // else {} // 실패

        request.getRequestDispatcher("/deleteResult.jsp").forward(request, response);
    }
}