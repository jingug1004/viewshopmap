package kr.re.viewshopmap.Controller;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;

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

    // @GetMapping
    @RequestMapping(value = "/hello", method = RequestMethod.GET)
    public void hello(Model model) {

        String a1 = "snviesrn234";

        RestTemplate restTemplate = new RestTemplate();
//        ResponseEntity<String> response = restTemplate.getForEntity("http://info.sweettracker.co.kr/v2/api-docs?item_no=149480994106", String.class);
        ResponseEntity<String> response = restTemplate.getForEntity("http://localhost:8070/ap/product/best", String.class);

        String html = response.getBody();
        System.out.println(html);
        // [출처] Java Rest API 호출|작성자 cloba

        model.addAttribute("testStrings", html);

//        System.out.println(model);
//        return "hello";
    }

}

