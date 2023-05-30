package main.mybatis;

import java.util.List;

public class App {
	public static void main(String[] args) {
		BookDAO bookDAO = new BookDAO();
		
		//INSERT
		Book bookIn = new Book();
		bookIn.setIsbn("006");
		bookIn.setTitle("Aranyember");
		bookIn.setPrice(2500);
		bookDAO.insert(bookIn);
		System.out.println("Mentve: isbn: " + bookIn.getIsbn() + ", title: " + bookIn.getTitle() + ", price: " + bookIn.getPrice() + "\n");
		
		//UPDATE
		Book bookUp = new Book();
		bookUp.setIsbn("002");
		bookUp.setPrice(8200);
		bookDAO.update(bookUp);
		System.out.println("Módosítva: isbn: " + bookUp.getIsbn() + ", price: " + bookUp.getPrice() + "\n");
		
		//FINDALL
		System.out.println("Összes könyv: ");
		List<Book> allBooks = bookDAO.findAll();
		for(Book b : allBooks) {
			System.out.println("isbn: " + b.getIsbn() + ", title: " + b.getTitle() + ", price: " + b.getPrice() + "\n");
		}
		
		//SELECT
		List<Book> listedBooks = bookDAO.select();
		System.out.println("5000-nél drágább könyvek: ");
		for (Book b : listedBooks) {
			System.out.println("isbn: " + b.getIsbn() + ", title: " + b.getTitle() + ", price: " + b.getPrice() + "\n");	
		}
		
		//DELETE
		bookDAO.delete("006");
		System.out.println("Rekord törölve\n");
	}
}