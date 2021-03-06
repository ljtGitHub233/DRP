<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 设置一个项目路径的变量  -->
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<html>

<head>
	<meta charset="utf-8">
	<title>DRP 分销资源计划</title>
	<link rel="icon" type="image/png" href="../../i/favicon.png">
	<link rel="apple-touch-icon-precomposed" href="../../i/app-icon72x72@2x.png" type="text/css">
	<link rel="stylesheet" href="../../css/amazeui.min.css" />
	<link rel="stylesheet" href="../../css/admin.css">
	<script src="../../js/jquery.min.js"></script>
	<script src="../../js/app.js"></script>

	<script language="javascript">
		var rowIndex = 0;

		function choiceClient(index) {
			var width = 1000;
			var height = 600;
			var top = Math.round((window.screen.height - height) / 2);
			var left = Math.round((window.screen.width - width) / 2);
			window.open('../inventory/client_select.jsp', '请选择分销商', "height=" + height + ", width=" + width + ",top=" + top + ", left= " + left + ", scrollbars=no");
		}

		function selectItem(index) {
			var width = 1000;
			var height = 600;
			var top = Math.round((window.screen.height - height) / 2);
			var left = Math.round((window.screen.width - width) / 2);
			window.open('../inventory/item_select.jsp', '请选择物料', "height=" + height + ", width=" + width + ",top=" + top + ", left= " + left + ", scrollbars=no");
		}

		function DeleteRow(rowTag) {
			//alert(rowTag);
			var i = document.getElementById("tblFlowCardDetail").rows(rowTag).rowIndex;
			var j;
			for(j = i; j <= rowIndex; j++) {
				document.getElementById("tblFlowCardDetail").rows(j).cells(0).all("btnSelectAimClient").index--;
				document.getElementById("tblFlowCardDetail").rows(j).cells(2).all("btnSelectItem").index--;
			}
			//alert(i);
			document.getElementById("tblFlowCardDetail").deleteRow(i);
			rowIndex--;
		}

		function goBack() {
			window.self.location = "${ctx}/view/basicData/item_maint.jsp"
		}
	</script>
</head>

<body>
	<div class="admin-biaogelist">
		<div class="listbiaoti am-cf">
			<dl class="am-icon-home" style="float: left;"> 当前位置：基础数据管理>
				<a href="flow_card_maint.html">物料维护</a>>修改
			</dl>
		</div>

		<form class="am-form am-g">
			<table width="100%" class="am-table am-table-bordered am-table-radius am-table-striped" name="tblFlowCardDetail" id="tblFlowCardDetail">
				<thead>
					<tr class="am-success">
						<th class="table-id">图片</th>
						<th class="table-id">*物料代码</th>
						<th class="table-id">*物料名称</th>
						<th class="table-type">规格</th>
						<th class="table-type">型号</th>
						<th class="table-type">类别</th>
						<th class="table-type">计量单位</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							<input name="fileName" type="file" class="text1" size="40" maxlength="40">(必须是.gif或.jpg文件)
						</td>
						<td>14</td>
						<td>Business</td>
						<td>default</td>
						<td>张三</td>
						<td>2014年9月4日 7:28:47</td>
						<td>14</td>
					</tr>
				</tbody>
			</table>

			<div class="am-btn-group am-btn-group-xs">
				<input name="btnSave" type="submit" id="btnSave" value="上传">
				<input name="btnBack" type="button" id="btnBack" onClick="goBack()" value="返回" style="margin-left: 50px;">
			</div>

		</form>

	</div>
	<script src="../../js/amazeui.min.js"></script>
</body>

</html>