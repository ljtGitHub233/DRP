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
		<script type="text/javascript">
			function choiceClient(index) {
				var width = 1000;
				var height = 600;
				var top = Math.round((window.screen.height - height) / 2);
				var left = Math.round((window.screen.width - width) / 2);
				window.open('temi_client_tree.html', '请选择需方客户', "height=" + height + ", width=" + width + ",top=" + top + ", left= " + left + ", scrollbars=no");
			}

			function addForCard() {
				window.self.location = "${ctx}/view/basicData/temi_client_node_add.jsp";
			}

			function modifyForCard() {
				window.self.location = "${ctx}/view/basicData/temi_client_node_modify.jsp";
			}
		</script>
	</head>

	<body>
		<div class="daohang">
	</div>
		<div class="admin-biaogelist">
			<div class="listbiaoti am-cf">
				<dl class="am-icon-home" style="float: left;"> 当前位置： 基础数据管理 >终端客户维护</dl>
			</div>

			<div class="am-btn-toolbars am-btn-toolbar am-kg am-cf">
				<ul>
					<form action="" method="post">
						<li>终端客户代码/名称:</li>
						<li><input type="text" class="am-form-field am-input-sm am-input-xm" /></li>
						<li><button type="button" class="am-btn am-radius am-btn-xs am-btn-success" style="margin-top: -1px;" onclick="choiceClient(this.index)">选择</button></li>
						<li><button type="button" class="am-btn am-radius am-btn-xs am-btn-success" style="margin-top: -1px;margin-left: 50px;">搜索</button></li>
						<li><button type="reset" class="am-btn am-radius am-btn-xs am-btn-success" style="margin-top: -1px;">重置</button></li>
					</form>
				</ul>
			</div>

			<form class="am-form am-g">
				<table width="100%" class="am-table am-table-bordered am-table-radius am-table-striped">
					<thead>
						<tr class="am-success">
							<th><input type="checkbox" /></th>
							<th>终端客户代码</th>
							<th>终端客户名称</th>
							<th>终端客户类型</th>
							<th>联系人</th>
							<th>联系电话</th>
							<th>地址</th>
							<th>邮编</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="checkbox" /></td>
							<td>1</td>
							<td>达力士 卡泊三醇软膏</td>
							<td>15g:0.75mg</td>
							<td class="am-hide-sm-only">1</td>
							<td class="am-hide-sm-only">软膏剂</td>
							<td>盒</td>
							<td>盒</td>
						</tr>
						<tr>
							<td><input type="checkbox" /></td>
							<td>2</td>
							<td>达力士 卡泊三醇软膏</td>
							<td>15g:0.75mg</td>
							<td class="am-hide-sm-only">2</td>
							<td class="am-hide-sm-only">软膏剂</td>
							<td>盒</td>
							<td>盒</td>
						</tr>
						<tr>
							<td><input type="checkbox" /></td>
							<td>3</td>
							<td>达力士 卡泊三醇软膏</td>
							<td>15g:0.75mg</td>
							<td class="am-hide-sm-only">3</td>
							<td class="am-hide-sm-only">软膏剂</td>
							<td>盒</td>
							<td>盒</td>
						</tr>
						<tr>
							<td><input type="checkbox" /></td>
							<td>4</td>
							<td>达力士 卡泊三醇软膏</td>
							<td>15g:0.75mg</td>
							<td class="am-hide-sm-only">4</td>
							<td class="am-hide-sm-only">软膏剂</td>
							<td>盒</td>
							<td>盒</td>
						</tr>
						<tr>
							<td><input type="checkbox" /></td>
							<td>5</td>
							<td>达力士 卡泊三醇软膏</td>
							<td>15g:0.75mg</td>
							<td class="am-hide-sm-only">5</td>
							<td class="am-hide-sm-only">软膏剂</td>
							<td>盒</td>
							<td>盒</td>
						</tr>
					</tbody>
				</table>

				<div class="am-btn-group am-btn-group-xs">
					<button type="button" class="am-btn am-btn-default" onClick="addForCard()"><span class="am-icon-plus"></span> 新增</button>
					<button type="button" class="am-btn am-btn-default" onClick="deleteForCard()"><span class="am-icon-plus"></span> 删除</button>
					<button type="button" class="am-btn am-btn-default" onClick="modifyForCard()"><span class="am-icon-save"></span> 修改</button>
				</div>

			</form>

		</div>
		<script src="../../js/amazeui.min.js"></script>
	</body>

</html>