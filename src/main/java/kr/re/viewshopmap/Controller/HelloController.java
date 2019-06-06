package kr.re.viewshopmap.Controller;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * Created by A on 2019-05-04 오전 11:32
 * viewshopmap / kr.re.viewshopmap.Controller
 * No pain, No gain!
 * What :
 * Why :
 * How :
 * << 개정이력(Modification Information) >>
 * 수정일         수정자          수정내용
 * -------       --------       ---------------------------
 * 2018/04/01     김진국          최초 생성
 * 2017/05/27     이몽룡          인증이 필요없는 URL을 패스하는 로직 추가
 *
 * @author 개발팀 김진국
 * @version 1.0
 * @see
 * @since 2018/04/01
 */

//출처: https://jsijsi99.tistory.com/10 [삽질대마왕 이대장]
@Controller
public class HelloController {

    private static final Logger logger = LoggerFactory.getLogger(HelloController.class);

    @RequestMapping("/")
    public String index() {

        System.out.println("lll~~~ 190520 index02");
        logger.info("lll~~~ 190520 index02");

        return "index";

    }
    // 출처: https://springboot.cloud/3 [갓.바.조.아]
    // https://springboot.cloud/3

    // @GetMapping
    @RequestMapping(value = "/hello", method = RequestMethod.GET)
    public String hello(Model model) {

        String a1 = "snviesrn234";

        System.out.println("lll~~~ 190520 index " + a1);
        logger.info("lll~~~ 190520 index" + a1);

        RestTemplate restTemplate = new RestTemplate();
//        ResponseEntity<String> response = restTemplate.getForEntity("http://info.sweettracker.co.kr/v2/api-docs?item_no=149480994106", String.class);
        ResponseEntity<String> response = restTemplate.getForEntity("http://localhost:8070/ap/product/best", String.class);

        String html = response.getBody();
        System.out.println("lll~~~ 190520 html " + html);
        logger.info("lll~~~ 190520 html" + html);
        // [출처] Java Rest API 호출|작성자 cloba

        model.addAttribute("testStrings", html);

//        System.out.println(model);
        return "hello";
    }

}

