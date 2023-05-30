package main.mybatis;

import java.util.List;

public class App {
	public static void main(String[] args) {
		BookDAO bookDAO = new BookDAO();
		
		//1. feladat
		Book bookIn = new Book();
		bookIn.setIsbn("006");
		bookIn.setTitle("Aranyember");
		bookIn.setPrice(2500);
		//bookDAO.insert(bookIn);
		System.out.println("Mentve: isbn: " + bookIn.getIsbn() + ", title: " + bookIn.getTitle() + ", price: " + bookIn.getPrice() + "\n");
		
		//2. feladat
		Book bookUp = new Book();
		bookUp.setIsbn("002");
		bookUp.setPrice(8200);
		//bookDAO.update(bookUp);
		System.out.println("Módosítva: isbn: " + bookUp.getIsbn() + ", title: " + bookUp.getTitle() + ", price: " + bookUp.getPrice() + "\n");
		
		//3. feladat
		System.out.println("Összes könyv: ");
		List<Book> allBooks = bookDAO.findAll();
		for(Book b : allBooks) {
			System.out.println("isbn: " + b.getIsbn() + ", title: " + b.getTitle() + ", price: " + b.getPrice() + "\n");
		}
		
		//4. feladat
		List<Book> listedBooks = bookDAO.select();
		System.out.println("5000-nél drágább könyvek: ");
		for (Book b : listedBooks) {
			System.out.println("isbn: " + b.getIsbn() + ", title: " + b.getTitle() + ", price: " + b.getPrice() + "\n");	
		}
		
		//5. feladat
		bookDAO.delete("004");
		System.out.println("Rekord törölve\n");
	}
}