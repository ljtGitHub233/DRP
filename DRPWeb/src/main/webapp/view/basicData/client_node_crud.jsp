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
	<!-- 引入样式 -->
	<link rel="stylesheet" href="https://unpkg.com/element-ui/lib/theme-default/index.css">
	<!-- 引入组件库 -->
	<script src="https://unpkg.com/element-ui/lib/index.js"></script>
	<script src="../../js/jquery.min.js"></script>
	<script src="../../js/app.js"></script>
	<script src="../../js/json2.js"></script>
	<script src="../../js/vue.min.js"></script>
	<script src="../../js/vue-resource.js"></script>
	<script type="text/javascript">
		function addForCard() {
			window.self.location = "${ctx}/view/basicData/client_node_add.jsp";
		}

		function modifyForCard() {
			var count = 0;
			$.each($(".check_itemClient_node:checked"), function() {
				count++;
			});
			if(count != 1) {
				if(count == 0) {
					alert("选择不能为空，请选择一项进行修改");
				} else if(count > 1) {
					alert("不能多选，只能选择一项进行修改");
				}
				return;
			}
			$.each($(".check_itemClient_node:checked"), function() {
				var id = $(this).attr("Client_nodeId");
				$.ajax({
					type: "get",
					url: "${ctx}/getOneClient_node.action",
					data: {
						"id": id
					},
					success: function(data) {
						window.self.location = "${ctx}/view/basicData/client_node_modify.jsp";
					}
				});
			});
		}
	</script>
</head>

<body>
	<div class="daohang">
	</div>
	<div class="admin-biaogelist">
		<div class="listbiaoti am-cf">
			<dl class="am-icon-home" style="float: left;"> 当前位置： 基础数据管理 >分销商维护
			</dl>
		</div>

		<div class="am-btn-toolbars am-btn-toolbar am-kg am-cf">
			<ul>
				<form action="" method="post">
					<li>分销商代码/名称:</li>
					<li><input type="text" class="am-form-field am-input-sm am-input-xm" id="clientCodeOrName" /></li>
					<li><button type="button" onclick="search()" class="am-btn am-radius am-btn-xs am-btn-success" style="margin-top: -1px;margin-left: 50px;">搜索</button></li>
					<li><button type="reset" onclick="resetValue()" class="am-btn am-radius am-btn-xs am-btn-success" style="margin-top: -1px;">重置</button></li>
				</form>
			</ul>
		</div>

		<form id="cilent_nodeForm" class="am-form am-g">
			<table width="100%" class="am-table am-table-bordered am-table-radius am-table-striped">
				<thead>
					<tr class="am-success">
						<th class="table-check"><input id="check_allClient_node" type="checkbox" /></th>
						<th>分销商代码</th>
						<th>分销商名称</th>
						<th>是否是分销商</th>
						<th>银行帐号</th>
						<th>联系电话</th>
						<th>地址</th>
						<th>邮编</th>
					</tr>
				</thead>
				<tbody>
				</tbody>
			</table>

			<div class="am-btn-group am-btn-group-xs">
				<button type="button" class="am-btn am-btn-default" onClick="addForCard()"><span class="am-icon-plus"></span> 新增</button>
				<button type="button" class="am-btn am-btn-default" id="deleteClient_node"><span class="am-icon-plus"></span> 删除</button>
				<button type="button" class="am-btn am-btn-default" onClick="modifyForCard()"><span class="am-icon-save"></span> 修改</button>
			</div>

			<div align="center">
				<el-pagination @size-change="handleSizeChange" @current-change="handleCurrentChange" :current-page="currentPage" :page-sizes="[10, 20, 30, 40]" :page-size="pagesize" layout="total, sizes, prev, pager, next, jumper" :total="totalCount">
				</el-pagination>
			</div>
		</form>
	</div>
	<script src="../../js/amazeui.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$.ajax({
				type: "get",
				url: "${ctx}/getClient_nodeAll.action",
				data: {},
				success: function(data) {
					$("#cilent_nodeForm tbody").empty();
					var clientList = eval('(' + data + ')');
					$.each(clientList.clientList, function(index, item) {
						var checkBox = $("<td><input type='checkbox' Client_nodeId='" + item.id + "' class='check_itemClient_node' /></td>");
						var code = $("<td></td>").append(item.code);
						var name = $("<td></td>").append(item.name);
						var isClient = $("<td></td>").append(item.isClient);
						var bankCardNum = $("<td></td>").append(item.bankCardNum);
						var contactTel = $("<td></td>").append(item.contactTel);
						var address = $("<td></td>").append(item.address);
						var zipCode = $("<td></td>").append(item.zipCode);
						$("<tr></tr>")
							.append(checkBox)
							.append(code)
							.append(name)
							.append(isClient)
							.append(bankCardNum)
							.append(contactTel)
							.append(address)
							.append(zipCode)
							.appendTo("#cilent_nodeForm tbody");
					});
				}
			});
		});

		function resetValue() {
			$.ajax({
				type: "get",
				url: "${ctx}/getClient_nodeAll.action",
				data: {},
				success: function(data) {
					$("#cilent_nodeForm tbody").empty();
					var clientList = eval('(' + data + ')');
					$.each(clientList.clientList, function(index, item) {
						var checkBox = $("<td><input type='checkbox' Client_nodeId='" + item.id + "' class='check_itemClient_node' /></td>");
						var code = $("<td></td>").append(item.code);
						var name = $("<td></td>").append(item.name);
						var isClient = $("<td></td>").append(item.isClient);
						var bankCardNum = $("<td></td>").append(item.bankCardNum);
						var contactTel = $("<td></td>").append(item.contactTel);
						var address = $("<td></td>").append(item.address);
						var zipCode = $("<td></td>").append(item.zipCode);
						$("<tr></tr>")
							.append(checkBox)
							.append(code)
							.append(name)
							.append(isClient)
							.append(bankCardNum)
							.append(contactTel)
							.append(address)
							.append(zipCode)
							.appendTo("#cilent_nodeForm tbody");
					});
				}
			});
		}

		function search() {
			$.ajax({
				type: "get",
				url: "${ctx}/findByClientCodeAndName.action",
				data: {
					"clientCodeOrName": $('#clientCodeOrName').val()
				},
				success: function(data) {
					$("#cilent_nodeForm tbody").empty();
					var clientList = eval('(' + data + ')');
					$.each(clientList.clientList, function(index, item) {
						var checkBox = $("<td><input type='checkbox' Client_nodeId='" + item.id + "' class='check_itemClient_node' /></td>");
						var code = $("<td></td>").append(item.code);
						var name = $("<td></td>").append(item.name);
						var isClient = $("<td></td>").append(item.isClient);
						var bankCardNum = $("<td></td>").append(item.bankCardNum);
						var contactTel = $("<td></td>").append(item.contactTel);
						var address = $("<td></td>").append(item.address);
						var zipCode = $("<td></td>").append(item.zipCode);
						$("<tr></tr>")
							.append(checkBox)
							.append(code)
							.append(name)
							.append(isClient)
							.append(bankCardNum)
							.append(contactTel)
							.append(address)
							.append(zipCode)
							.appendTo("#cilent_nodeForm tbody");
					});
				}
			})
		}

		//完成全选
		$("#check_allClient_node").click(function() {
			$(".check_itemClient_node").prop("checked", $(this).prop("checked"));
		});
		$(document).on("click", ".check_itemClient_node", function() {
			var flag = $(".check_itemClient_node:checked").length == $(".check_itemClient_node").length;
			$("#check_allClient_node").prop("checked", flag);
		});
		//删除
		$("#deleteClient_node").click(function() {
			var ids = "";
			var code = "";
			$.each($(".check_itemClient_node:checked"), function() {
				ids += $(this).attr("Client_nodeId") + "-";
				code += $(this).parents("tr").find("td:eq(1)").text() + "-";
			});
			//去除多余的横线
			code = code.substring(0, code.length - 1);
			ids = ids.substring(0, ids.length - 1);
			if(confirm("确定删除分销商代码为以下的项吗？\n" + code)) {
				$.ajax({
					url: "${ctx}/deleteClient_node.action",
					type: "post",
					data: {
						"ids": ids
					},
					success: function(data) {
						document.location.reload();
					}
				});
			}
		});
	</script>
</body>

</html>