/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package util;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author THANHTRI
 */
public class JPAUtil {
    private static EntityManagerFactory emf;
    
    static {
        Map<String, String> props = new HashMap<>();
        // Override từ environment variables nếu có (dùng khi chạy trong Docker)
        String dbUrl = System.getenv("DB_URL");
        String dbUser = System.getenv("DB_USER");
        String dbPassword = System.getenv("DB_PASSWORD");
        if (dbUrl != null) props.put("jakarta.persistence.jdbc.url", dbUrl);
        if (dbUser != null) props.put("jakarta.persistence.jdbc.user", dbUser);
        if (dbPassword != null) props.put("jakarta.persistence.jdbc.password", dbPassword);
        
        emf = Persistence.createEntityManagerFactory("maria-pu", props);
    }
    
    public static EntityManager getEntityManager() {
        return emf.createEntityManager();
    }
}
