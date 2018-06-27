import com.nenu.model.Blog;
import com.nenu.service.BlogService;
import com.nenu.service.impl.BlogServiceImpl;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * Created by 郑文华 on 2018/6/26.
 */
public class BaseTest {

    BlogService blogService = new BlogServiceImpl();
    @Test
    public void test01(){
        List<Blog> list = blogService.selectAllBlog(1,5);
        System.out.println(list);
    }
}
