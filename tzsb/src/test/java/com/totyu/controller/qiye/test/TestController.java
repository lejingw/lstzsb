package com.totyu.controller.qiye.test;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.totyu.common.excel.ExcelColumnCheckRule;
import com.totyu.common.excel.ExcelColumnEnum;
import com.totyu.common.excel.ExcelDbrefrenceCheck;
import com.totyu.common.excel.ExcelRowData;
import com.totyu.common.excel.ExcelSelfDefinedCheck;
import com.totyu.controller.common.BaseController;
import com.totyu.service.qiye.jbxx.ScxkzglService;
import com.totyu.spring.mvc.bind.annotation.FormModel;
import com.totyu.spring.mvc.util.MapWapper;
import com.totyu.vo.menhu.sys.User;

@Controller
@RequestMapping("/qiye/test")
public class TestController extends BaseController {
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
	@RequestMapping(value="/richEditor/show", method=RequestMethod.GET)
	public String richEditor() {
		return "qiye/test/richEditor";
	}
	@RequestMapping(value="/uploadExcel/show", method=RequestMethod.GET)
	public String uploadExcel() {
		return "qiye/test/uploadExcel";
	}
	@RequestMapping(value="/uploadPic/show", method=RequestMethod.GET)
	public String uploadPic() {
		return "qiye/test/uploadPic";
	}
	@RequestMapping(value="/uploadFile/show", method=RequestMethod.GET)
	public String uploadFile() {
		return "qiye/test/uploadFile";
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

    /**
     * 返回数据检查规则列表
     */
	@Override
	public List<ExcelColumnCheckRule> getColumnCheckRuleList() {
		ExcelColumnCheckRule[] excelCheckModes = new ExcelColumnCheckRule[]{
				new ExcelColumnCheckRule(0, 0, false, ExcelColumnEnum.STRING_COLUMN),//第1列字符类型，不允许为空
				new ExcelColumnCheckRule(0, 1, true, ExcelColumnEnum.DATE_COLUMN),//第2列字符类型，允许为空
				new ExcelColumnCheckRule(0, 2, false, ExcelColumnEnum.DATE_COLUMN),//第3列日期类型，不允许为空
				new ExcelColumnCheckRule(0, 3, false, ExcelColumnEnum.DATE_COLUMN),
				new ExcelColumnCheckRule(0, 4, false, ExcelColumnEnum.NUMBER_COLUMN),//第5列整数类型，不允许为空
				new ExcelColumnCheckRule(0, 5, false, ExcelColumnEnum.FLOAT_COLUMN),//第6列小数类型，不允许为空
				//第7列自定义检查
				new ExcelColumnCheckRule(0, 6, new ExcelSelfDefinedCheck() {
					/**
					 * 检查数据有效性
					 * 返回true，表示检查通过
					 * 返回false，表示检查不通过，此时会获取getErrorMsg信息
					 */
					@Override
					public boolean check(int rowIndex, String value, ExcelRowData rowData, List<ExcelRowData> allData) {
						return (Double.parseDouble(rowData.getCol4()) + Double.parseDouble(rowData.getCol5())) == Double.parseDouble(rowData.getCol6());
					}
					@Override
					public String getErrorMsg(int rowIndex, String value, ExcelRowData rowData, List<ExcelRowData> allData) {
						return "第七列值 必须等于 第五列 + 第六列";
					}
				}),
				//第8列数据库key-value检查
				new ExcelColumnCheckRule(0, 7, false, new ExcelDbrefrenceCheck("t_xt_sjzdsjx", "item_key", "item_value", "entry_code='sblx'"), true)
		};
		return Arrays.asList(excelCheckModes);
	}

	/**
	 * 数据检查通过会调用此方法，将数据保存入业务单据表
	 * @param seqId
	 */
	@Override
	public void saveExcelData(String seqId){
		//保存数据
		//insert into table_name(col1, col2) select b.* from (select a.col1, a.col2 from  t_xt_excel_tmp_data a where a.seq_id=#seqId#) b
		System.out.println("----保存数据-----");
	}
}
