package com.totyu.web.util;

import java.util.ArrayList;
import java.util.List;

import com.totyu.vo.common.Dict;
import com.totyu.web.cache.DictCache;

public class HtmlUtil {
	public static String printOption(String value, String text, boolean selected){
		if(null == value)	value = "";
		return "<option value='" + value + "' " + (selected?"selected":"") + ">" + text + "</option>";
	}
	public static String printOption(String value, String text, String selectValue){
		if(null == value)	value = "";
		return "<option value='" + value + "' " + (value.equals(selectValue)?"selected":"") + ">" + text + "</option>";
	}
	/**
	 * 根据参数打印options
	 * @param values
	 * @param texts
	 * @param selectValue
	 * @return
	 */
	public static String printOptions(String[] values, String[] texts, boolean showEmptyOption, String selectValue){
		StringBuffer buff = new StringBuffer();
		if(showEmptyOption){
			buff.append("<option value=''>--请选择--</option>");
		}
		if(null != values && null != texts && values.length == texts.length){
			for(int i=0;i < values.length;i++){
				buff.append(printOption(values[i], texts[i], selectValue));
			}
		}
		return buff.toString();
	}
	/**
	 * 根据参数打印options
	 * @param values
	 * @param texts
	 * @param selectValue
	 * @return
	 */
	public static String printOptions(List<String> values, List<String> texts, boolean showEmptyOption, String selectValue){
		StringBuffer buff = new StringBuffer();
		if(showEmptyOption){
			buff.append("<option value=''>--请选择--</option>");
		}
		if(null != values && null != texts && values.size() == texts.size()){
			for(int i=0;i < values.size();i++){
				buff.append(printOption(values.get(i), texts.get(i), values.get(i).equals(selectValue)));
			}
		}
		return buff.toString();
	}
	/**
	 * 根据数据字典打印options
	 * @param entryCode
	 * @param selectValue
	 * @return
	 */
	public static String printDictOptions(String entryCode, boolean showEmptyOption, String selectValue){
		List<String> values = new ArrayList<String>();
		List<String> texts = new ArrayList<String>();
		List<Dict> list = DictCache.getInstance().getDicts(entryCode);
		if(null != list && list.size()>0){			
			for(Dict dict : list){
				values.add(dict.getItemKey());
				texts.add(dict.getItemValue());
			}
		}
		return printOptions(values, texts, showEmptyOption, selectValue);
	}
}
