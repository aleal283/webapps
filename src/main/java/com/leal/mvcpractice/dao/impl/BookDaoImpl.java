package com.leal.mvcpractice.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.leal.mvcpractice.dao.BookDao;
import com.leal.mvcpractice.model.Book;

@Repository
public class BookDaoImpl implements BookDao{
	
	@Autowired
    private SessionFactory sessionFactory;

	@Override
	public void saveBook(Book book) {
		 getSession().merge(book);
		
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Book> listBooks() {
		return getSession().createCriteria(Book.class).list();
	}

	@Override
	public Book getBook(Long id) {
		return (Book) getSession().get(Book.class, id);
	}

	@Override
	public void deleteBook(Long id) {
		Book book = getBook(id);
        if (null != book) {
               getSession().delete(book);
        }
		
	}
	
	private Session getSession() {
        Session sess = getSessionFactory().getCurrentSession();
        if (sess == null) {
               sess = getSessionFactory().openSession();
        }
        return sess;
	}

	 private SessionFactory getSessionFactory() {
	        return sessionFactory;
	 }

}
