var JSLocale = {};
//全局，如果模块中没有对应的key，则再从global中查找
JSLocale.global={};
JSLocale.global.confirm="确认{0}?";
JSLocale.global.success="{0}成功!";
JSLocale.global.fail="{0}失败!";
JSLocale.global.norowselected="请先选择记录!";
JSLocale.global.exists="此{0}已经存在，请重新输入!";

JSLocale.global.Validator={};
JSLocale.global.Validator.require='该项目必须输入';
JSLocale.global.Validator.requireDate='该项目必须输入,且格式必须为yyyy-MM-dd';

/**基本信息**/
JSLocale.jbxx={};
/**生产许可证管理**/
JSLocale.jbxx.scxkzgl={};
JSLocale.jbxx.scxkzgl.rowundelete="第{0}行 记录状态不为保存状态，不能删除";

/**测试例子**/
JSLocale.test={};
/**国际化资源**/
JSLocale.test.localMsg={};
JSLocale.test.localMsg.noparamStr="无参数字符串";
JSLocale.test.localMsg.hasparamStr="第一个参数{0}，第二个参数{1}。";
