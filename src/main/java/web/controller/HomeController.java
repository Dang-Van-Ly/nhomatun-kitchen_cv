package web.controller;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HomeController {

    private final JdbcTemplate jdbcTemplate;

    public HomeController(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @GetMapping("/")
    public String home() {
        return "<html><head><title>Restaurant Web App</title></head><body>"
                + "<h1>Restaurant Web App</h1>"
                + "<p>Ứng dụng đã chuyển sang web. Nhấn <a href=\"/tables\">xem bảng trong database</a>.</p>"
                + "</body></html>";
    }

    @GetMapping("/tables")
    public String tables() {
        List<Map<String, Object>> rows = jdbcTemplate.queryForList(
                "SELECT table_name FROM information_schema.tables WHERE table_schema = ?", 
                "quanlidatbantrongnhahang");
        String tableList = rows.stream()
                .map(row -> "<li>" + row.get("TABLE_NAME") + "</li>")
                .collect(Collectors.joining());
        return "<html><head><title>Database Tables</title></head><body>"
                + "<h1>Database Tables</h1>"
                + "<ul>" + tableList + "</ul>"
                + "<p><a href=\"/\">Trở về trang chính</a></p>"
                + "</body></html>";
    }
}
