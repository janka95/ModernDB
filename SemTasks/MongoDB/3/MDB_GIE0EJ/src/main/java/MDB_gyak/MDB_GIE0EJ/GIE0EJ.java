package MDB_gyak.MDB_GIE0EJ;

import org.bson.Document;

import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoClients;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;

import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public class GIE0EJ 
{
    public static void main( String[] args )
    {
		MongoClient mongoClient = MongoClients.create("mongodb://localhost:27017");
        MongoDatabase db = mongoClient.getDatabase("MDB_GIE0EJ");
        MongoCollection<Document> auto = db.getCollection("auto");
        listAll(auto);
        insertOne(auto);
        insertMany(auto);
        update(auto);
        delete(auto);
        System.out.println("Updated collection");
        listAll(auto);
        
        mongoClient.close(); 
    }  
    
    public static void delete(MongoCollection<Document> auto) {
    	 Document tipus = new Document("tipus", "javaInserted");
         auto.deleteMany(tipus);
	}

	public static void update(MongoCollection<Document> auto) {  	
    	Document tipus = new Document("tipus", "javaInserted");
        Document allapot = new Document("$set", new Document("allapot", "sérült"));
        auto.updateMany(tipus, allapot);
	}

	public static void insertMany(MongoCollection<Document> auto) {
    	List<Document> autoList = Arrays.asList(
    			new Document().append("tipus", "javaInserted")
    			.append("szin", "piros")
    			.append("ar", 3000500)
 				.append("gyev", 2010)
 				.append("allapot", "jó"),
 				 
 				new Document().append("tipus", "javaInserted")
    			.append("szin", "zöld")
    			.append("ar", 1300200)
 				.append("gyev", 2008)
 				.append("allapot", "jó"));                
         
		auto.insertMany(autoList);
	}

	public static void insertOne(MongoCollection<Document> auto) {
		Document doc = new Document("tipus", "javaInserted")
				.append("szin", "kék")
				.append("ar", 2000110)
				.append("gyev", 2009)
				.append("allapot", "jó");
		
		auto.insertOne(doc);
	}

	public static void listAll(MongoCollection<Document> auto)
    {
        FindIterable<Document> iterDoc = auto.find();
        int i = 1;
        Iterator<Document> it = iterDoc.iterator();
        while (it.hasNext()) {
        	System.out.println(it.next());
        	i++;
        }
    } 	
}
