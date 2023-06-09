package main.mybatis;
import java.util.List;
import org.apache.ibatis.session.SqlSession;

public class BookDAO {
	
	public void insert(Book book) {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		session.insert("resources.mybatis.BookMapper.insertBook", book);
		session.commit();
		session.close();
	}
	
	public void update(Book book) {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		session.update("resources.mybatis.BookMapper.updateBook", book);
		session.commit();
		session.close();
	}
	
	public List<Book> findAll() {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		List<Book> books = session.selectList("resources.mybatis.BookMapper.findAllBooks");
		session.commit();
		session.close();
		return books;
	}
	
	public List<Book> select() {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		List<Book> books = session.selectList("resources.mybatis.BookMapper.selectBook");
		session.commit();
		session.close();
		return books;
	}
	
	public void delete(String id) {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		session.delete("resources.mybatis.BookMapper.deleteBook", id);
		session.commit();
		session.close();
	}
}