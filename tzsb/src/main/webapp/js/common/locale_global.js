var JSLocale = {};
// 全局，如果模块中没有对应的key，则再从global中查找
JSLocale.global = {};
JSLocale.global.leave = "您要放弃本次修改吗?";
JSLocale.global.confirm = "确认{0}?";
JSLocale.global.success = "{0}成功！";
JSLocale.global.fail = "{0}失败！";
JSLocale.global.norowselected = "请先选择记录！";
JSLocale.global.exists = "此{0}已经存在，请重新输入！";
JSLocale.global.rowundelete = "第{0}行 记录状态不为保存状态，不能删除！";
JSLocale.global.save = "保存";
JSLocale.global.del = "删除";

// 单项目验证
JSLocale.global.Validator = {};
JSLocale.global.Validator.require = '该项目为必须输入！';
JSLocale.global.Validator.length = '长度不能超过{0}位！';
JSLocale.global.Validator.format1 = '请输入正确的格式！';
JSLocale.global.Validator.format2 = '请输入正确的格式！(整数)';
JSLocale.global.Validator.format3 = '请输入正确的格式！({0}位整数{1}位小数)';
JSLocale.global.Validator.date = '结束日必须大于等于开始日！';

/**监察设备管理* */ 
JSLocale.global.zdjk="设为重点";
JSLocale.global.noSelectDel="请选择需要删除的{0}记录信息！";
JSLocale.global.noSelectZd="请选择需要设置为重点监控设备的{0}记录信息！";
JSLocale.global.setDel="是否删除选中的{0}记录信息？";
JSLocale.global.setzd="是否将选中的{0}记录信息设置为重点监控设备？";
JSLocale.global.nummsg="第{0}行 设备信息已经通过检验，该数据不能删除。";
JSLocale.global.azdwmsg="请输入安装单位名称。";
JSLocale.global.azdwzzjgmsg="请输入安装单位组织机构代码。";
JSLocale.global.azdwhzzjgmsg="安装单位名称或安装单位组织机构代码输入错误。";

/** 企业*作业人员管理* */
JSLocale.jbxx = {};
/** 作业人员管理信息列表* */
JSLocale.jbxx.zyrylb = {};
JSLocale.jbxx.zyrylb.jcpygx = '解除聘用关系';
JSLocale.jbxx.zyrylb.zsbhRequire = '证书编号不可为空';
JSLocale.jbxx.zyrylb.fzjgRequire = '发证机关不可为空';
JSLocale.jbxx.zyrylb.unnull = '第{0}行不能为空';

/** 作业人员管理* */
JSLocale.jbxx = {};
/** 作业人员管理信息列表* */
JSLocale.jbxx.zyrylb = {};
JSLocale.jbxx.zyrylb.jcpygx = '解除聘用关系';
JSLocale.jbxx.zyrylb.zsbhRequire = '证书编号不可为空';
JSLocale.jbxx.zyrylb.fzjgRequire = '发证机关不可为空';
JSLocale.jbxx.zyrylb.unnull = '第{0}行不能为空';
JSLocale.jbxx.zyrylb.haved = '{0}已经存在！';
JSLocale.jbxx.zyrylb.yanzheng = '验证';

/** 二级模块：监察机构设备变更验证信息* */
JSLocale.jbxx.zyryzhgl = {};
JSLocale.jbxx.zyryzhgl.czmm = "重置密码";
JSLocale.jbxx.zyryzhgl.zhcz = "账号{0}已经存在,是否重新分配?";

/** 监察*作业人员管理* */
JSLocale.zyrygl = {};
/** 作业人员管理信息列表* */
JSLocale.zyrygl.zyrygl = {};
JSLocale.zyrygl.zyrygl.jcpygx = '解除聘用关系';
JSLocale.zyrygl.zyrygl.zsbhRequire = '证书编号不可为空';
JSLocale.zyrygl.zyrygl.fzjgRequire = '发证机关不可为空';
JSLocale.zyrygl.zyrygl.unnull = '第{0}行不能为空';
JSLocale.zyrygl.zyrygl.haved = '{0}已经存在！';
JSLocale.zyrygl.zyrygl.yanzheng = '验证';
/** 考试成绩管理* */
JSLocale.zyrygl.kscjgl = {};
JSLocale.zyrygl.kscjgl.yfb = '第{0}行 已发布，不能重复发布';
JSLocale.zyrygl.kscjgl.wfb = '第{0}行 未发布，不能上报';
JSLocale.zyrygl.kscjgl.fb = '发布';
JSLocale.zyrygl.kscjgl.ysb = '第{0}行 已发布，不能重复上报';
JSLocale.zyrygl.kscjgl.danjuFail = '验证单据失败';
JSLocale.zyrygl.kscjgl.zsbhycz = '证书编号已经存在';
JSLocale.zyrygl.kscjgl.xmdhycz = '项目代号已经存在';
/** 考试成绩管理Validate* */
JSLocale.zyrygl.kscjgl.Validator = {};
JSLocale.zyrygl.kscjgl.Validator.idCard = '身份证错误';
JSLocale.zyrygl.kscjgl.Validator.rqInput = '日期不能为空，且格式为yyyy-mm-dd';
JSLocale.zyrygl.kscjgl.Validator.riqiCk = '批准日期大于有效日期，请确认';

/** 维保账号* */
JSLocale.wbdw = {};
/** 维保账号* */
JSLocale.wbdw.wbzh = {};
JSLocale.wbdw.wbzh.passwordCheck = '确认密码与密码不一致！';
JSLocale.wbdw.wbzh.passwordReset = '密码重置';
JSLocale.wbdw.wbzh.haved = '{0}已经存在！';

/** 维保账号* */
JSLocale.wbdw = {};
/** 维保账号* */
JSLocale.wbdw.wbzh = {};
JSLocale.wbdw.wbzh.passwordCheck = '确认密码与密码不一致！';
JSLocale.wbdw.wbzh.passwordReset = '密码重置';
JSLocale.wbdw.wbzh.haved = '{0}已经存在！';
/** 维保记录* */
JSLocale.wbdw.wbjl = {};
JSLocale.wbdw.wbjl.xzsydw = '请选择使用单位';
JSLocale.wbdw.wbjl.xzdtsb = '请选择电梯设备';
JSLocale.wbdw.wbjl.xzwbry = '请选择维保人员';
JSLocale.wbdw.wbjl.xzwbsjlb = '请选择维保时间类别';
JSLocale.wbdw.wbjl.xzwbxm = '请选择维保项目';
JSLocale.wbdw.wbjl.unnull = '维保项目第{0}行不能为空';
JSLocale.wbdw.wbjl.nodianti = '使用单位名称错误或该使用单位不存在电梯设备,请确认。';
JSLocale.wbdw.wbjl.tjxljl = '请添加故障修理记录';
JSLocale.wbdw.wbjl.exists = '维保项目已经存在';
JSLocale.wbdw.wbzh.yanzheng = '验证';

/** 一级模块：监察预警信息 * */
JSLocale.jcyjxx = {};
/** 二级模块：监察预警信息 * */
JSLocale.jcyjxx.jcyjxx = {};
JSLocale.jcyjxx.jcyjxx.stop = '是否设置停止提醒';
JSLocale.jcyjxx.jcyjxx.qxsb = '取消失败';
JSLocale.jcyjxx.jcyjxx.ycxx = '设置失败';

/** 一级模块：企业安全管理 * */
JSLocale.aqgl = {};
/** 二级模块：企业预警信息 * */
JSLocale.aqgl.qyyjxx = {};
JSLocale.aqgl.qyyjxx.stop = '是否设置停止提醒';
JSLocale.aqgl.qyyjxx.qxsb = '取消失败';
JSLocale.aqgl.qyyjxx.ycxx = '设置失败';

/** 一级模块：应急管理* */
JSLocale.yjgl = {};
/** 二级模块：应急人员管理* */
JSLocale.yjgl.yjrygl = {};
JSLocale.yjgl.yjrygl.Validator = {};
JSLocale.yjgl.yjrygl.selectOne = "{0}至少选中一项！";
JSLocale.yjgl.yjrygl.yjlb = "应急类别";
JSLocale.yjgl.yjrygl.Validator.xmrequire = '姓名为必须输入！';
JSLocale.yjgl.yjrygl.Validator.sjhm = '手机号码格式不正确！';
JSLocale.yjgl.yjrygl.Validator.lxdh = '联系电话格式不正确！';
JSLocale.yjgl.yjrygl.Validator.bgdz = '办公地址为必须输入！';
JSLocale.yjgl.yjrygl.Validator.lsjcjg = '隶属监察机构为必须输入！';
JSLocale.yjgl.yjrygl.Validator.chuanhao = '串号为必须输入！';
JSLocale.yjgl.yjrygl.Validator.xmlength = '姓名不得少于4个字符不得超过100个字符！';
JSLocale.yjgl.yjrygl.Validator.bgdzlength = '办公地址不得超过200个字符！';
JSLocale.yjgl.yjrygl.Validator.chlength = '串号不得超过100个字符！';
JSLocale.yjgl.yjrygl.Validator.bzlength = '备注不得超过2000个字符！';

/** 二级模块：应急事件管理* */
JSLocale.yjgl.yjsjgl = {};
JSLocale.yjgl.yjsjgl.Validator = {};
JSLocale.yjgl.yjsjgl.Validator.didian = '地点为必须输入！';
JSLocale.yjgl.yjsjgl.Validator.ddlen = '地点不得超过200个字符！';
JSLocale.yjgl.yjsjgl.Validator.yjrycheck = '至少有一个应急人员！';
JSLocale.yjgl.yjsjgl.Validator.lxdh = '联系电话为必须输入！';
JSLocale.yjgl.yjsjgl.Validator.lxdhlen = '联系电话不得超过100个字符！';
JSLocale.yjgl.yjsjgl.Validator.lianxiren = '应急指挥人为必须输入！';
JSLocale.yjgl.yjsjgl.Validator.lxrlen = '应急指挥人不得超过100个字符！';
JSLocale.yjgl.yjsjgl.Validator.smlen = '说明不得超过2000个字符！';
JSLocale.yjgl.yjsjgl.Validator.shuoming = '说明为必须输入！';

/** 一级模块：证件管理* */
JSLocale.zjgl = {};
/** 二级模块：证件管理* */
JSLocale.zjgl.zjgl = {};
JSLocale.zjgl.zjgl.Validator = {};
JSLocale.zjgl.zjgl.cancel = "注销";
JSLocale.zjgl.zjgl.rownotempty = "{0}第{1}行不能为空";
JSLocale.zjgl.zjgl.zyxmdh = "作业项目代号";
JSLocale.zjgl.zjgl.pzrq = "批准日期";
JSLocale.zjgl.zjgl.yxrq = "有效日期";
JSLocale.zjgl.zjgl.Validator.xmrequire = '姓名为必须输入！';
JSLocale.zjgl.zjgl.Validator.lxdh = '联系电话为必须输入！';
JSLocale.zjgl.zjgl.Validator.fzbm = '发证部门为必须输入！';
JSLocale.zjgl.zjgl.Validator.sfzh = '身份证号为必须输入！';
JSLocale.zjgl.zjgl.Validator.sfzhcheck = '身份证号格式不正确，请重新输入！';
JSLocale.zjgl.zjgl.Validator.zsbh = '证书编号为必须输入！';
JSLocale.zjgl.zjgl.Validator.xmlength = '姓名不得少于4个字符不得超过100个字符！';
JSLocale.zjgl.zjgl.Validator.zsbhlength = '证书编号不得超过100个字符！';
JSLocale.zjgl.zjgl.Validator.fzbmlength = '发证部门不得超过100个字符！';
JSLocale.zjgl.zjgl.Validator.lxdhlength = '联系电话不得超过100个字符！';
JSLocale.zjgl.zjgl.Validator.zyzllength = '作业种类不得超过200个字符！';
JSLocale.zjgl.zjgl.Validator.dabhlength = '档案编号不得超过100个字符！';
JSLocale.zjgl.zjgl.zsbhycz = "证书编号已存在!";
JSLocale.zjgl.zjgl.zyxmdhnotempty = "作业项目代号不能重复！";
JSLocale.zjgl.zjgl.zyxmdhnothave = "作业项目代码：{0}不存在！";

/** 一级模块: 监察机构/企业单位/乡镇/行业主管 安全附件* */
JSLocale.aqfj = {};
/** 一级模块: 监察机构/企业单位/乡镇/行业主管 安全附件* */
JSLocale.aqfj.aqfj = {};
JSLocale.aqfj.aqfj.sydwSelect = "选择使用单位";
JSLocale.aqfj.aqfj.sssbSelect = "选择所属设备";
JSLocale.aqfj.aqfj.fjlbSelect = "选择附件类别";

/** 一级模块：电梯维保管理* */
JSLocale.dtwbgl = {};
/** 二级模块：维保单位电梯维保合同* */
JSLocale.dtwbgl.wbht = {};
JSLocale.dtwbgl.wbht.xzscjl = '请选择要删除的记录';
JSLocale.dtwbgl.wbht.bnsc = '第{0}行 记录合同不能删除';
JSLocale.dtwbgl.wbht.sccg = '删除成功';
JSLocale.dtwbgl.wbht.xzscdt = '请选择要删除的电梯';
JSLocale.dtwbgl.wbht.bnscjbx = '不能删除维保合同基本项目';
JSLocale.dtwbgl.wbht.sccl = '合同已成立不能{0}';
JSLocale.dtwbgl.wbht.sczz = '合同已终止不能{0}';
JSLocale.dtwbgl.wbht.tjht = '请提交合同';
JSLocale.dtwbgl.wbht.zzht = '合同尚未成立不能终止';
JSLocale.dtwbgl.wbht.xzdt = '请选择要维保的电梯设备';
JSLocale.dtwbgl.wbht.xzwbxm = '请选择维保项目';
JSLocale.dtwbgl.wbht.wbzq = '请输入维保周期';
JSLocale.dtwbgl.wbht.scHtsb = '删除电梯维保合同失败';
JSLocale.dtwbgl.wbht.dtczCheck = '电梯{0}已经签订了维保合同';
JSLocale.dtwbgl.wbht.dtczErr = '电梯检查失败';
JSLocale.dtwbgl.wbht.saveErr = '保存合同信息时出错';
JSLocale.dtwbgl.wbht.checksydw = '您输入的使用单位(甲方)不存在，请核实使用单位名称';
JSLocale.dtwbgl.wbht.ChecksydwErr = '检查使用单位时出错';
JSLocale.dtwbgl.wbht.delRcwbxm = '请选择要删除的日常维保项目';
JSLocale.dtwbgl.wbht.delBywbxm = '请选择要删除的半月维保项目';
JSLocale.dtwbgl.wbht.delJdwbxm = '请选择要删除的季度维保项目';
JSLocale.dtwbgl.wbht.delBnwbxm = '请选择要删除的半年维保项目';
JSLocale.dtwbgl.wbht.delNdwbxm = '请选择要删除的年度维保项目';
/** 二级模块：维保单位电梯维保合同Validate* */
JSLocale.dtwbgl.wbht.Validator = {};
JSLocale.dtwbgl.wbht.Validator.sjCheck = '维保时间(止)必须大于或等于维保时间(起)';
JSLocale.dtwbgl.wbht.Validator.dwCheck = '使用单位名称不能为空';
JSLocale.dtwbgl.wbht.Validator.htyxqStart = '合同有效期开始不能为空';
JSLocale.dtwbgl.wbht.Validator.htyxqEnd = '合同有效期结束不能为空';

/** 二级模块：使用单位电梯维保合同确认* */
JSLocale.dtwbgl.wbhtqr = {};
JSLocale.dtwbgl.wbhtqr.cfErr = '维保合同已经{0}请不要重复{1}';
JSLocale.dtwbgl.wbhtqr.clqxErr = '合同已成立，不能取消合同';
JSLocale.dtwbgl.wbhtqr.zzqxErr = '合同已中止，不能取消合同';
JSLocale.dtwbgl.wbhtqr.wclzzqxErr = '合同未成立，不能中止合同';
JSLocale.dtwbgl.wbhtqr.saveErr = '保存电梯维保合同时出错';

/** 二级模块：电梯维保记录确认* */
JSLocale.dtwbgl.wbjlqr = {};
JSLocale.dtwbgl.wbjlqr.qrwbjl = "确定要确认维保记录?";
JSLocale.dtwbgl.wbjlqr.bhwbjl = "确定要驳回维保记录?";
JSLocale.dtwbgl.wbjlqr.qrjlxz = "请选择要确认的维保记录!";
JSLocale.dtwbgl.wbjlqr.bhjlxz = "请选择要驳回的维保记录!";
JSLocale.dtwbgl.wbjlqr.qr = "确认";
JSLocale.dtwbgl.wbjlqr.bh = "驳回";
JSLocale.dtwbgl.wbjlqr.qrorbh = "确定要{0}该维保记录?";

/** 一级模块：企业制度文档* */
JSLocale.zdwd = {};
/** 二级模块：企业制度文档验证信息* */
JSLocale.zdwd.zdwd = {};
JSLocale.zdwd.zdwd.Validator = {};
JSLocale.zdwd.zdwd.Validator.init = '[年]和[月]和[日]不能为空，至少选择一个！';

/** 一级模块：企业变更申请记录* */
JSLocale.gtbg = {};
/** 二级模块信息：企业变更申请记录* */
JSLocale.gtbg.gtbg = {};
JSLocale.gtbg.gtbg.rowundelete = "第{0}条申请记录已经同意不能删除";
JSLocale.gtbg.gtbg.delred = "请选择要删除的记录";
JSLocale.gtbg.gtbg.yzMsgA = "移装或者过户信息保存";
JSLocale.gtbg.gtbg.yzMsgB = "移装或者过户信息登入";
JSLocale.gtbg.gtbg.gmMsgA = "更名信息登入";
JSLocale.gtbg.gtbg.gmMsgB = "更名信息更新";
JSLocale.gtbg.gtbg.gtMsgA = "信息登入";
JSLocale.gtbg.gtbg.gtMsgB = "信息更新";
JSLocale.gtbg.gtbg.titleSydw = "使用单位选择";
JSLocale.gtbg.gtbg.titleJcjg = "监察机构信息选择";
/** 二级模块：企业变更申请记录验证信息* */
JSLocale.gtbg.gtbg.Validator = {};
JSLocale.gtbg.gtbg.Validator.bgrqFanWei = '变更日期(止)必须大于或等于变更日期(起)!';
JSLocale.gtbg.gtbg.Validator.leibie = '申请变更类别不能为空，请先选择申请变更类型。';
JSLocale.gtbg.gtbg.Validator.xdwcqdwfzlxdh = '请输入正确的电话号码格式,如"XXXX-XXXXXXXX"';
JSLocale.gtbg.gtbg.Validator.newfddbrsj = '请输入正确的手机号码格式,如"188XXXXXXXX"';
JSLocale.gtbg.gtbg.Validator.allsblb = '设备类别不能为空';
JSLocale.gtbg.gtbg.Validator.checkData = '单位组织机构信息不存在';
JSLocale.gtbg.gtbg.Validator.bgrq = '变更日期不能为空，且格式为yyyy-mm-dd';
JSLocale.gtbg.gtbg.Validator.ghhydyzzmrq = '过户或异地移装证明日期不能为空，且格式为yyyy-mm-dd';
JSLocale.gtbg.gtbg.Validator.checkJcData = '设备所在地与迁入地的监察机构地的地址不相符，请重新选择';

/** 一级模块：监察机构设备变更* */
JSLocale.sbbg = {};
/** 二级模块信息：监察机构设备变更* */
JSLocale.sbbg.sbbg = {};
JSLocale.sbbg.sbbg.delred = "请选择要删除的记录";
JSLocale.sbbg.sbbg.sbcheck = "设备{0}已经存在";
JSLocale.sbbg.sbbg.yzMsgA = "移装或者过户信息同意";
JSLocale.sbbg.sbbg.yzMsgB = "移装或者过户信息驳回";
JSLocale.sbbg.sbbg.yzMsgC = "移装或者过户信息审核";
JSLocale.sbbg.sbbg.gmMsgA = "更名信息审核";
JSLocale.sbbg.sbbg.gmMsgB = "更名信息更新";
JSLocale.sbbg.sbbg.gmMsgC = "更名信息同意";
JSLocale.sbbg.sbbg.gmMsgD = "更名信息驳回";
JSLocale.sbbg.sbbg.gtMsgA = "信息审核";
JSLocale.sbbg.sbbg.gtMsgB = "信息更新";
JSLocale.sbbg.sbbg.gtMsgC = "信息同意";
JSLocale.sbbg.sbbg.gtMsgD = "信息驳回";
JSLocale.sbbg.sbbg.plMsgA = "批量转移使用单位转移审核";
JSLocale.sbbg.sbbg.tyMsg = "同意处理";
JSLocale.sbbg.sbbg.bhMsg = "驳回处理";
JSLocale.sbbg.sbbg.titleSydw = "使用单位选择";
JSLocale.sbbg.sbbg.titlejcjg = "监察机构信息选择";
JSLocale.sbbg.sbbg.titlesb = "选择设备[多选]";
/** 二级模块：监察机构设备变更验证信息* */
JSLocale.sbbg.sbbg.Validator = {};
JSLocale.sbbg.sbbg.Validator.bgrqFanWei = '变更日期(止)必须大于或等于变更日期(起)!';
JSLocale.sbbg.sbbg.Validator.leibie = '申请变更类别不能为空，请先选择申请变更类型。';
JSLocale.sbbg.sbbg.Validator.xdwcqdwfzlxdh = '请输入正确的电话号码格式,如"XXXX-XXXXXXXX"';
JSLocale.sbbg.sbbg.Validator.newfddbrsj = '请输入正确的手机号码格式,如"188XXXXXXXX"';
JSLocale.sbbg.sbbg.Validator.allsblb = '设备类别不能为空';
JSLocale.sbbg.sbbg.Validator.checkData = '单位组织机构信息不存在';
JSLocale.sbbg.sbbg.Validator.bgrq = '变更日期不能为空，且格式为yyyy-mm-dd';
JSLocale.sbbg.sbbg.Validator.ghhydyzzmrq = '过户或异地移装证明日期不能为空，且格式为yyyy-mm-dd';
JSLocale.sbbg.sbbg.Validator.sbCount = '请先选择设备';
JSLocale.sbbg.sbbg.Validator.checkJcData = '设备所在地与迁入地的监察机构地的地址不相符，请重新选择';

/*******************************************************************************
 * 监察机构 /** 一级模块 电梯维保
 ******************************************************************************/
JSLocale.dtwb = {};
/** 二级模块 电梯维保人员管理* */
JSLocale.dtwb.dtwbrygl = {};
JSLocale.dtwb.dtwbrygl.jcpygx = "解除聘用关系";
JSLocale.dtwb.dtwbrygl.zsbh = "证书编号";
JSLocale.dtwb.dtwbrygl.sfzh = "身份证号";
JSLocale.dtwb.dtwbrygl.ok = "确定";
JSLocale.dtwb.dtwbrygl.add = "添加";
JSLocale.dtwb.dtwbrygl.edit = "修改";
JSLocale.dtwb.dtwbrygl.wbryzj = "维保人员证件";
JSLocale.dtwb.dtwbrygl.singleselectdw = "选择单位名称[单选]";
JSLocale.dtwb.dtwbrygl.check = "验证";

/** 一级模块 事故管理 * */
JSLocale.sggl = {};
/** 二级模块 事故管理* */
JSLocale.sggl.sggl = {};
JSLocale.sggl.sggl.sbid = "设备ID";
JSLocale.sggl.sggl.singleselectdw = "选择单位名称[单选]";
JSLocale.sggl.sggl.doubleselectsb = "选择设备[多选]";

/** 一级模块: 企业单位 使用单位* */
JSLocale.sydw = {};
/** 二级模块：企业单位 电梯维保确认密码* */
JSLocale.sydw.dtwbqrmm = {};
JSLocale.sydw.dtwbqrmm.Validator = {};
JSLocale.sydw.dtwbqrmm.Validator.dtwbmm = "密码输入不能为空";
JSLocale.sydw.dtwbqrmm.Validator.zcdtwbmm = "第二次密码输入不能为空";
JSLocale.sydw.dtwbqrmm.mmbyz = "两次输入的密码不一致，请重新输入。";

/** 一级模块: 企业单位 人员管理 * */
JSLocale.rygl = {};
/** 二级模块: 人员管理 质量管理体系人员管理* */
JSLocale.rygl.zlgltxry = {};
JSLocale.rygl.zlgltxry.Validator = {};
JSLocale.rygl.zlgltxry.Validator.sfzh = "身份证号不合法";
JSLocale.rygl.zlgltxry.Validator.xingming = "姓名不能为空";
JSLocale.rygl.zlgltxry.Validator.xzzw = "行政职务不能为空";
JSLocale.rygl.zlgltxry.Validator.txgwzz = "体系岗位职责不能为空";
JSLocale.rygl.zlgltxry.Validator.xueli = "学历不能为空";
JSLocale.rygl.zlgltxry.Validator.sblb = "设备类别不能为空";

/** 一级模块: 监察机构 人员监管 * */
JSLocale.ryjg = {};
/** 二级模块: 人员监管 质量管理体系人员管理* */
JSLocale.ryjg.zlgltxry = {};
JSLocale.ryjg.zlgltxry.Validator = {};
JSLocale.ryjg.zlgltxry.Validator.sfzh = "身份证号不合法";
JSLocale.ryjg.zlgltxry.Validator.xingming = "姓名不能为空";
JSLocale.ryjg.zlgltxry.Validator.xzzw = "行政职务不能为空";
JSLocale.ryjg.zlgltxry.Validator.txgwzz = "体系岗位职责不能为空";
JSLocale.ryjg.zlgltxry.Validator.xueli = "学历不能为空";
JSLocale.ryjg.zlgltxry.Validator.ssdw = "所属单位不能为空";
JSLocale.ryjg.zlgltxry.xzssdw = "选择所属单位名称";

/** 一级模块: 企业 维保单位* */
JSLocale.wbdw = {};
/** 二级模块: 电梯故障修理记录* */
JSLocale.wbdw.dtgzxljl = {};
JSLocale.wbdw.dtgzxljl.sydwSelect = "选择使用单位";
JSLocale.wbdw.dtgzxljl.dtsbSelect = "选择电梯设备";
JSLocale.wbdw.dtgzxljl.xlrySelect = "选择修理人员";
JSLocale.wbdw.dtgzxljl.xlsjpd = "修理时间不在合同范围内";
JSLocale.wbdw.dtgzxljl.xlsjyz = "修理时间验证单据失败";

/** 一级模块: 监察 维保记录* */
JSLocale.wbjl = {};
/** 二级模块: 电梯故障修理管理 * */
JSLocale.wbjl.dtgzxl = {};
JSLocale.wbjl.dtgzxl.sydwSelect = "选择使用单位";
JSLocale.wbjl.dtgzxl.dtsbSelect = "选择电梯设备";
JSLocale.wbjl.dtgzxl.xlrySelect = "选择修理人员";
JSLocale.wbjl.dtgzxl.xlsjpd = "修理时间不在合同范围内";
JSLocale.wbjl.dtgzxl.xlsjyz = "修理时间验证单据失败";

/** 一级模块: 监察 许可证审核管理* */
JSLocale.xkzshgl = {};
/** 二级模块: 许可证审核 * */
JSLocale.xkzshgl.xkzbgshgl = {};
JSLocale.xkzshgl.xkzbgshgl.sydwSelect = "选择使用单位名称";
JSLocale.xkzshgl.xkzbgshgl.sptgmake = "确认审批通过?";
JSLocale.xkzshgl.xkzbgshgl.spmake = "审批通过";
JSLocale.xkzshgl.xkzbgshgl.zxsqmake = "确认注销申请?";
JSLocale.xkzshgl.xkzbgshgl.zxmake = "许可证注销成功";
JSLocale.xkzshgl.xkzbgshgl.spbake = "审批驳回";
JSLocale.xkzshgl.xkzbgshgl.zxbake = "注销驳回";
JSLocale.xkzshgl.xkzbgshgl.spfail = "审批单据失败";
JSLocale.xkzshgl.xkzbgshgl.zxfail = "注销单据失败";

/** 一级模块: 监察 许可证审核管理* */
JSLocale.dwgl = {};
/** 二级模块: 许可证审核 * */
JSLocale.dwgl.scdwxkzgl = {};
JSLocale.dwgl.scdwxkzgl.zsbhcz = "证书编号已经存在";
JSLocale.dwgl.scdwxkzgl.yzdjsb = "验证单据失败";

/** 一级模块：电梯维保 * */
JSLocale.dtwb = {};

/** 二级模块：电梯维保合同 * */
JSLocale.dtwb.dtwbht = {};

JSLocale.dtwb.dtwbht.Validator = {};
JSLocale.dtwb.dtwbht.Validator.sydwmc = '使用单位名称不能为空！';
JSLocale.dtwb.dtwbht.Validator.wbdwmc = '维保单位名称不能为空！';
JSLocale.dtwb.dtwbht.Validator.htyxqks = '合同有效期开始不能为空，且格式为yyyy-mm-dd！';
JSLocale.dtwb.dtwbht.Validator.htyxqjs = '合同有效期结束不能为空，且格式为yyyy-mm-dd！';
JSLocale.dtwb.dtwbht.Validator.sjCheck = '维保时间(止)必须大于或等于维保时间(起)！';

JSLocale.dtwb.dtwbht.rowundelete = "第{0}行 记录状态不为合同已中止和取消状态，不能删除！";
JSLocale.dtwb.dtwbht.dele = "确定删除？";
JSLocale.dtwb.dtwbht.deletesuccess = "删除成功！";
JSLocale.dtwb.dtwbht.selectwbsb = "请选择要维保的电梯设备！";
JSLocale.dtwb.dtwbht.selectjdhtdsb = "电梯：{0}已经签订了维保合同！";
JSLocale.dtwb.dtwbht.selectwbxm = "请选择维保项目！";
JSLocale.dtwb.dtwbht.selectwbzq = "请输入维保周期！";
JSLocale.dtwb.dtwbht.yanzheng = "验证失败！";
JSLocale.dtwb.dtwbht.selectdt = '请选择要删除的电梯！';
JSLocale.dtwb.dtwbht.wbhtjbx = '不能删除维保合同基本项！';
JSLocale.dtwb.dtwbht.sfzz = '合同已中止不能再中止！';
JSLocale.dtwb.dtwbht.sfbc = '合同已中止不能再保存！';
JSLocale.dtwb.dtwbht.htqx = '合同已取消不能进行操作！';
JSLocale.dtwb.dtwbht.schtsb = '删除合同设备失败！';
JSLocale.dtwb.dtwbht.gxhtzt = '更新合同状态失败！';
JSLocale.dtwb.dtwbht.dtczCheck = '电梯{0}已经签订了维保合同！';
JSLocale.dtwb.dtwbht.bcdj = '保存单据失败！';
JSLocale.dtwb.dtwbht.delRcwbxm = '请选择要删除的日常维保项目！';
JSLocale.dtwb.dtwbht.delBywbxm = '请选择要删除的半月维保项目！';
JSLocale.dtwb.dtwbht.deljdwbxm = '请选择要删除的季度维保项目！';
JSLocale.dtwb.dtwbht.delBnwbxm = '请选择要删除的半年维保项目！';
JSLocale.dtwb.dtwbht.delNdwbxm = '请选择要删除的年度维保项目！';
/** 一级模块：修改密码 * */
JSLocale.xgmm = {};
/** 二级模块：电修改密码 * */
JSLocale.xgmm.xgmm = {};
JSLocale.xgmm.xgmm.oldPass = '输入新密码和原来密码一致，请重新输入';
JSLocale.xgmm.xgmm.confirmPass = '输入新密码和确认密码不一致，请重新输入';
JSLocale.xgmm.xgmm.passFail = '输入原密码不正确，请重新输入。';
JSLocale.xgmm.xgmm.chenkPass = '验证密码失败';
