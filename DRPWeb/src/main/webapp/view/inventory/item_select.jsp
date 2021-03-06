<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 设置一个项目路径的变量  -->
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<html>

<head>
	<meta charset="utf-8">
	<title>请选择物料信息</title>
	<link rel="icon" type="image/png" href="../../i/favicon.png">
	<link rel="apple-touch-icon-precomposed" href="../../i/app-icon72x72@2x.png" type="text/css">
	<link rel="stylesheet" href="../../css/amazeui.min.css" />
	<link rel="stylesheet" href="../../css/admin.css">
	<script src="../../js/jquery.min.js"></script>
	<script src="../../js/app.js"></script>
	<script language="javascript">
		function selectOk(clientId, clientName) {
			window.close();
		}
	</script>
</head>

<body>
	<div class="daohang">
	</div>
	<div class="admin-biaogelist">
		<div class="listbiaoti am-cf">
			<dl class="am-icon-home" style="float: left;"> 当前位置：请选择物料信息
			</dl>
		</div>

		<div class="am-btn-toolbars am-btn-toolbar am-kg am-cf">
			<ul>
				<li>物料代码/名称:</li>
				<li><input type="text " class="am-form-field am-input-sm am-input-xm " /></li>
				<li><button type="button " class="am-btn am-radius am-btn-xs am-btn-success " style="margin-top: -1px;margin-left: 50px; ">搜索</button></li>
			</ul>
		</div>

		<form class="am-form am-g ">
			<table width="100% " class="am-table am-table-bordered am-table-radius am-table-striped ">
				<thead>
					<tr class="am-success ">
						<th class="table-check "><input type="checkbox " /></th>
						<th class="table-id ">物料代码</th>
						<th class="table-title ">物料名称</th>
						<th class="table-type ">物料规格</th>
						<th class="table-id ">物料型号</th>
						<th class="table-title ">类别</th>
						<th class="table-type ">计量单位</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><input type="checkbox " /></td>
						<td>getItemNo()</td>
						<td>getItemName()</td>
						<td>getSpec()</td>
						<td>getPattern()</td>
						<td>getItemCategory().getName()</td>
						<td>getItemUnit().getName()</td>
						</td>
					</tr>
				</tbody>
			</table>

			<div class="am-btn-group am-btn-group-xs ">
				<button type="submit " class="am-btn am-radius am-btn-xs am-btn-success " style="margin-top: -1px; " onclick="selectOk() ">确定</button>
				<button type="button " class="am-btn am-radius am-btn-xs am-btn-success " style="margin-top: -1px;margin-left: 50px; " onclick="window.close() ">关闭</button>
			</div>

		</form>

	</div>
	<script src="../../js/amazeui.min.js "></script>
</body>

</html>