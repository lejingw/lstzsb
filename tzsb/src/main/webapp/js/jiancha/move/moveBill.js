function addMoveRow(data){
	var chkHtml = "<input type='checkbox' name='chk'/>"
		+ "<input type='hidden' name='lineid' value=''/>"
		+ "<input type='hidden' name='ornaCode' value='" + data.ornaCode + "'/>"
		+ "<input type='hidden' name='weight' value='" + (data.weight?data.weight:"") + "'/>";
		
	var ornaCodeHtml = data.ornaCode;
	var ornaDscHtml = data.ornaDsc;
	var weightHtml = data.weight;
	var statusHtml = "保存";
	var deleteHtml = "<input type='button' name='deleteBtn' class='btn' value='删除' onclick='deleteMoveRow(this)'/>";
	var htmlArr = [chkHtml, ornaCodeHtml, ornaDscHtml, weightHtml, statusHtml, deleteHtml];
	insertRow('tbl', htmlArr, true);
}
function deleteMoveRow(obj){
	var index = obj.parentNode.parentNode.rowIndex - 1;
	if(!isNull($n("lineid")[index].value)){
		deleteOrnaCodeArr.push($n("ornaCode")[index].value);
	}
	deleteRow(obj, 'tbl');
	calcSum();
}

function getMaterActiveInfo(ornaCode){
	if(!checkOrnaCodeExists(ornaCode))
		return;
	MoveBillDwr.getMaterActiveInfo(ornaCode, jQuery("#outOrgId").val(), function(data){
		addMoveRow(data);
		calcSum();
		jQuery("#ornaCode_in").val("");
	});
}
function checkOrnaCodeExists(ornaCode){
	for(var i=0;i<$n("ornaCode").length;i++){
		if($n("ornaCode")[i].value == ornaCode){
			alert("第"+(i+1)+"行 编码[" + ornaCode + "]已经存在");
			return false;
		}
	}
	return true;
}
function calcSum(){
	var sumWeight="0";
	for(var i=0;i<$n("ornaCode").length;i++){
		sumWeight = floatAdd(sumWeight, nullToZero($n("weight")[i].value));
	}
	jQuery("#sumCount").val($n("ornaCode").length);//件数合计
	jQuery("#sumWeight").val(sumWeight);//重量合计
}
function nullToZero(val){
	if(!val)
		return "0";
	return val;
}
