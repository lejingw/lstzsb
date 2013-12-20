package com.totyu.controller.qiye.test;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.totyu.service.qiye.jbxx.ScxkzglService;
import com.totyu.spring.mvc.bind.annotation.FormModel;
import com.totyu.spring.mvc.util.MapWapper;
import com.totyu.vo.menhu.sys.User;

@Controller
@RequestMapping("/qiye/test")
public class TestController {
	@Autowired
	private ScxkzglService scxkzglService;

	@RequestMapping("/test/list")
	public String list() {
		return "qiye/test/test_list";
	}
	@RequestMapping(value="/localMsg/show", method=RequestMethod.GET)
	public String localMsg() {
		return "qiye/test/localMsg";
	}
	@RequestMapping(value="/submitForm/show", method=RequestMethod.GET)
	public String submitForm() {
		return "qiye/test/submitForm";
	}

    //ok   http://localhost:9080/springmvc-chapter6/formmodel/user?user.username=zhang&user.password=123
    @RequestMapping("/test/user")  
    public String user(@FormModel("user") User user) {
        System.out.println(user);
		return "qiye/test/submitForm";      
    }
    
    //ok   http://localhost:9080/springmvc-chapter6/formmodel/array1?array[0]=zhang&array[1]=li
    @RequestMapping("/array1")  
    public String array1(@FormModel("array") String[] array) {
        System.out.println(Arrays.toString(array));
		return "qiye/test/submitForm";
    }
    
    //ok   http://localhost:9080/springmvc-chapter6/formmodel/array2?array[0].username=zhang&array[0].password=123&array[1].username=li
    @RequestMapping("/array2")  
    public String array2(@FormModel("array") User[] array) {
        System.out.println(Arrays.toString(array));
		return "qiye/test/submitForm";
    }
    
    
  //ok   http://localhost:9080/springmvc-chapter6/formmodel/list1?list[0]=123&list[1]=234
    @RequestMapping("/list1")  
    public String list1(@FormModel("list") List<Integer> list) {
        System.out.println(list);
		return "qiye/test/submitForm";
    }
    
    //ok   http://localhost:9080/springmvc-chapter6/formmodel/list2?list[0].username=zhang&list[1].username=li
    @RequestMapping("/list2")  
    public String list2(@FormModel("list") List<User> list) {
        System.out.println(list);
		return "qiye/test/submitForm";
    }
    
    //ok   http://localhost:9080/springmvc-chapter6/formmodel/map1?map['0']=123&map["1"]=234
    @RequestMapping("/map1")  
    public String map1(@FormModel("map") MapWapper<String, Integer> map) {
        System.out.println(map);
		return "qiye/test/submitForm";
    }
  //ok   http://localhost:9080/springmvc-chapter6/formmodel/map2?map['0'].password=123&map['0'].username=123&map["1"].username=234
    @RequestMapping("/map2")  
    public String map2(@FormModel("map") MapWapper<Integer, User> map) {
        System.out.println(map);
		return "qiye/test/submitForm";
    }

}
