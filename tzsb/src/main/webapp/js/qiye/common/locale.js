var JSLocale = {};
//全局，如果模块中没有对应的key，则再从global中查找
JSLocale.global={};
JSLocale.global.confirm="确认{0}?";
JSLocale.global.success="{0}成功";
JSLocale.global.fail="{0}失败";

/**基本信息**/
JSLocale.jbxx={};

/**生产许可证管理**/
JSLocale.jbxx.scxkzgl={};
JSLocale.jbxx.scxkzgl.norowselected="请先选择记录";
JSLocale.jbxx.scxkzgl.rowundelete="第{0}行 记录状态不为保存状态，不能删除";
JSLocale.jbxx.scxkzgl.deleteconfirm="确定删除?";
JSLocale.jbxx.scxkzgl.deletesuccess="删除成功";
JSLocale.jbxx.scxkzgl.confirm="确认{0}吗?";//会覆盖global中的confirm
JSLocale.jbxx.scxkzgl.Validator={};
JSLocale.jbxx.scxkzgl.Validator.zsbh='证书编号不能为空';
JSLocale.jbxx.scxkzgl.Validator.pzrq='批准日期不能为空，且格式为yyyy-mm-dd';
JSLocale.jbxx.scxkzgl.Validator.yxrq='有效日期不能为空，且格式为yyyy-mm-dd';
JSLocale.jbxx.scxkzgl.Validator.zzdz='制造地址不能为空';
JSLocale.jbxx.scxkzgl.Validator.pzjg='批准机构不能为空';
JSLocale.jbxx.scxkzgl.Validator.sblb='设备类别不能为空';

/**测试例子**/
JSLocale.test={};

/**国际化资源**/
JSLocale.test.localMsg={};
JSLocale.test.localMsg.noparamStr="无参数字符串";
JSLocale.test.localMsg.hasparamStr="第一个参数{0}，第二个参数{1}。";