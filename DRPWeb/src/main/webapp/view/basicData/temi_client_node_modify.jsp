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
			window.self.location = "${ctx}/view/basicData/temi_client_node_crud.jsp"
		}
	</script>
</head>

<body>
	<div class="daohang">
	</div>
	<div class="admin-biaogelist">
		<div class="listbiaoti am-cf">
			<dl class="am-icon-home" style="float: left;"> 当前位置：分销商库存管理>
				<a href="flow_card_maint.html">终端客户维护</a>>修改
			</dl>
		</div>

		<form class="am-form am-g">
			<table width="100%" class="am-table am-table-bordered am-table-radius am-table-striped" name="tblFlowCardDetail" id="tblFlowCardDetail">
				<thead>
					<tr class="am-success">
						<th class="table-id">*终端客户代码</th>
						<th class="table-id">*终端客户名称</th>
						<th class="table-title">*终端客户类型</th>
						<th class="table-type">联系人</th>
						<th class="table-type">联系电话</th>
						<th class="table-type">地址</th>
						<th class="table-type">邮编</th>
						<th class="table-type">删除</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><input type="text" name="id" value="14" /></td>
						<td>
							<input type="text" name="id" value="Business managementas" />
						</td>
						<td>
							<input type="text" name="id" value="default" /></td>
						<td class="am-hide-sm-only">
							<input type="text" name="id" value="张三" /></td>
						<td class="am-hide-sm-only">
							<input type="text" name="id" value="2014年9月4日 7:28:47" /></td>
						<td><input type="text" name="id" value="14" /></td>
						<td><input type="text" name="id" value="14" /></td>
						<td class="am-hide-sm-only"><input type='button' value='删除' id=btnDeleteLine name=btnDeleteLine onclick="return DeleteRow(row + rowIndex )" style="margin-top: 5px;"></td>
					</tr>

				</tbody>
			</table>

			<div class="am-btn-group am-btn-group-xs">
				<input name="btnSave" type="submit" id="btnSave" value="保存">
				<input name="btnBack" type="button" id="btnBack" onClick="goBack()" value="返回">
			</div>

		</form>

	</div>
	<script src="../../js/amazeui.min.js"></script>
</body>

</html>