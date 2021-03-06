package com.project.controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.project.beans.UserBeans;
import com.project.dao.UserDao;
import com.project.daoFactory.DaoFactory;

/**
 * Servlet implementation class UserSelectBookForSearchingController
 */
@WebServlet("/UserSelectProductForSearchingController")
public class UserSelectProductForSearchingController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserSelectProductForSearchingController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		// object 
		
		
		
		
		
		
		
		
				UserBeans userBeans=new UserBeans();
				
				UserDao dao=DaoFactory.getInstances();
				
				ResultSet rs=null;
				
				HashSet<String> hashSet=new HashSet<String>();   // hash set object
				
				
				// logice 
				
				rs=dao.userSelectBookCategory();
				
				try {
					
					while(rs.next()){
					
						
						//book_title, book_category, book_author, book_price, id
						
						hashSet.add(rs.getString(2));
						
					}
					
					HttpSession session=request.getSession();
					
					session.setAttribute("AllCategorySession", hashSet);							
					
					RequestDispatcher rd=request.getRequestDispatcher("userSearchProduct.jsp");
					rd.forward(request, response);
					
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}

		
	}


