var JSLocale = {};
//全局，如果模块中没有对应的key，则再从global中查找
JSLocale.global={};
JSLocale.global.leave="您要放弃本次修改吗?";
JSLocale.global.confirm="确认{0}?";
JSLocale.global.success="{0}成功！";
JSLocale.global.fail="{0}失败！";
JSLocale.global.norowselected="请先选择记录！";
JSLocale.global.exists="此{0}已经存在，请重新输入！";
JSLocale.global.rowundelete="第{0}行 记录状态不为保存状态，不能删除！";
JSLocale.global.save="保存";
JSLocale.global.dateRangeError='结束日必须大于等于开始日！';

//单项目验证
JSLocale.global.Validator={};
JSLocale.global.Validator.require='该项目为必须输入！';
JSLocale.global.Validator.length='长度不能超过{0}位！';
JSLocale.global.Validator.format1='请输入正确的格式！';
JSLocale.global.Validator.format2='请输入正确的格式！(整数)';
JSLocale.global.Validator.format3='请输入正确的格式！({0}位整数{1}位小数)';
JSLocale.global.Validator.date='结束日必须大于等于开始日！';


/**测试例子**/
JSLocale.test={};
/**国际化资源**/
JSLocale.test.localMsg={};
JSLocale.test.localMsg.noparamStr="无参数字符串";
JSLocale.test.localMsg.hasparamStr="第一个参数{0}，第二个参数{1}。";
