<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 设置一个项目路径的变量  -->
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>修改分销商库存数量</title>
	<link rel="stylesheet" href="../../css/drp.css">
	<script src="../../js/client_validate.js"></script>
</head>

<body class="body1">
	<form name="InvIniQtyForm" target="_self" id="InvIniQtyForm">
		<div align="center">
			<table width="95%" border="0" cellspacing="2" cellpadding="2">
				<tr>
					<td>&nbsp;

					</td>
				</tr>
			</table>
			<table width="95%" border="0" cellspacing="0" cellpadding="0" height="8">
				<tr>
					<td width="522" class="p1" height="2" nowrap>
						<img src="../../images/mark_arrow_03.gif" width="14" height="14"> &nbsp;
						<b>分销商库存管理&gt;&gt;分销商库存数量初始化&gt;&gt;修改</b>
					</td>
				</tr>
			</table>
			<hr width="97%" align="center" size=0>
			<table width="95%" border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td width="22%" height="29">
						<div align="right">
							分销商代码:&nbsp;
						</div>
					</td>
					<td width="78%">
						<input name="clientId" type="text" class="text1" id="clientId" size="10" maxlength="10">
					</td>
				</tr>
				<tr>
					<td height="25">
						<div align="right">
							分销商名称:&nbsp;
						</div>
					</td>
					<td>
						<input name="clientName" type="text" class="text1" id="clientId24" size="10" maxlength="10">
					</td>
				</tr>
				<tr>
					<td height="26">
						<div align="right">
							<font color="#FF0000">*</font>物料代码:&nbsp;
						</div>
					</td>
					<td>
						<input name="itemNo" type="text" class="text1" id="itemNo" size="10" maxlength="10">
						<input name="btnSelectItem" type="submit" id="btnSelectItem" value="..." class="button1" onClick="window.open('item_select.jsp', '选择物料', 'width=700, height=400, scrollbars=no')">
					</td>
				</tr>
				<tr>
					<td height="26">
						<div align="right">
							物料名称:&nbsp;
						</div>
					</td>
					<td>
						<input name="itemName" type="text" class="text1" id="itemName" size="10" maxlength="10">
					</td>
				</tr>
				<tr>
					<td height="26">
						<div align="right">
							物料规格:&nbsp;
						</div>
					</td>
					<td>
						<input name="spec" type="text" class="text1" id="spec" size="10" maxlength="10">
					</td>
				</tr>
				<tr>
					<td height="26">
						<div align="right">
							物料型号:&nbsp;
						</div>
					</td>
					<td>
						<input name="pattern" type="text" class="text1" id="pattern" size="10" maxlength="10">
					</td>
				</tr>
				<tr>
					<td height="26">
						<div align="right">
							计量单位:&nbsp;
						</div>
					</td>
					<td>
						<input name="unit" type="text" class="text1" id="unit" size="10" maxlength="10">
					</td>
				</tr>
				<tr>
					<td height="26">
						<div align="right">
							<font color="#FF0000">*</font>初始数量:&nbsp;
						</div>
					</td>
					<td>
						<input name="initQty" type="text" class="text1" id="initQty" size="10" maxlength="10">
					</td>
				</tr>
			</table>
			<hr width="97%" align="center" size=0>
			<div align="center">
				<input name="btnModify" class="button1" type="button" id="btnModify" value="修改"> &nbsp;&nbsp;&nbsp;&nbsp;
				<input name="btnBack" class="button1" type="button" id="btnBack" value="返回" onClick="history.go(-1)">
			</div>
		</div>
	</form>
</body>

</html>