<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="myFn" uri="http://www.520it.com/crm/permission"%>
<html>
<head>
    <title>员工管理</title>
    <%@ include file="common.jsp" %>
    <script type="text/javascript" src="/js/views/employee.js"></script>
</head>
<body>
<!-- <table id="employee_datagrid"></table>
<div id="employee_datagrid_btn">
    <div>
        <form id="employee_searchForm">
            关键字:<input type="text" name="keyword" placeholder="编号和名称">
            日期:<input class="easyui-datebox" name="beginDate">
            -
            <input class="easyui-datebox" name="endDate">
            状态:
            <select name="state">
                <option value="">全部</option>
                <option value="1">正常</option>
                <option value="0">离职</option>
            </select>
            <a class="easyui-linkbutton" iconCls="icon-search" data-cmd="searchContent">查询</a>
        </form>
    </div>
</div>
<div id="employee_dialog">
    <form id="employee_dialog_form" method="post">
        <input type="hidden" name="id"/>
        <table align="center">
            <tr>
                <td>用户名</td>
                <td><input class="easyui-validatebox" name="username" data-options="required:true,validType:'length[3,10]'"/></td>
            </tr>
            <tr>
                <td>真实姓名</td>
                <td><input class="easyui-validatebox" name="realname" data-options="required:true"/></td>
            </tr>
            <tr>
                <td>邮箱</td>
                <td><input  class="easyui-validatebox" data-options="required:true,validType:'email'" name="email"/></td>
            </tr>
            <tr>
                <td>联系电话</td>
                <td><input name="tel"/></td>
            </tr>
            <tr>
                <td>部门</td>
                <td><input class="easyui-combobox easyui-validatebox" name="dept.id"
                           data-options=" url: '/department_queryForEmp',valueField:'id',textField:'name'"></td>
            </tr>
            <tr>
                <td>角色</td>
                <td><input class="easyui-combobox" id="employee_role_combobox"
                           data-options=" url:'/role_queryRoleByEmp', multiple:true, valueField:'id',textField:'name'">
                </td>
            </tr>

        </table>
    </form>
    <div id="employee_dialog_bb">
        <a class="easyui-linkbutton" iconCls="icon-save" plain="true" data-cmd="save">保存</a>
        <a class="easyui-linkbutton" iconCls="icon-cancel" plain="true" data-cmd="cancel">取消</a>
    </div>
</div> -->
	
<table id="employee_datagrid"></table>


<!-- 新增更新对话框 -->
<div id="emp_dialog">
	<form method="post" id="emp_form">
		<table align="center" style="margin-top:15px">
			<input type="hidden" name="id"/>
			<tr>
				<td>账号</td>
				<td><input type="text" name="username" class="easyui-validatebox"  data-options="required:true"/></td>
			</tr>
			<tr>
				<td>真实姓名</td>
				<td><input type="text" name="realname" class="easyui-validatebox"  data-options="required:true"/></td>
			</tr>
			<tr>
				<td>联系方式</td>
				<td><input type="text" name="tel" class="easyui-validatebox"  data-options="required:true"/></td>
			</tr>
			<tr>
				<td>邮箱</td>
				<td><input type="text" class="easyui-validatebox" name="email" data-options="required:true,validType:'email'"/></td>
			</tr>
			<tr>
				<td>部门</td>
				<td><input type="text" name="dept.id" class="easyui-combobox easyui-validatebox"  data-options="required:true,valueField:'id',textField:'name',url:'/query_department'"/></td>
			</tr>
			<tr>
				<td>入职时间</td>
				<td><input type="text" name="inputtime" class="easyui-datebox easyui-validatebox" data-options="required:true"/></td>
			</tr>
			<tr>
				<td>角色</td>
				<td><input type="text" id="emp_roles" class="easyui-combobox easyui-validatebox"  data-options="required:true,valueField:'id',textField:'name',url:'/query_role',multiple:true"/></td>
			</tr>
		</table>	
	</form>
</div>

<!--数据表顶部按钮  -->
<div id="employee_datagrid_tb">
	<div>
		<c:if test="${myFn:checkPermission('com._520it.crm.web.controller.EmployeeController:saveEmp')}">
			<a id="emp_add_bt" class="easyui-linkbutton" iconCls="icon-add"  plain="true" data-cmd="add">新增</a>
		</c:if>
		<c:if test="${myFn:checkPermission('com._520it.crm.web.controller.EmployeeController:editEmp')}">
			<a id="emp_edit_bt" class="easyui-linkbutton" iconCls="icon-edit" plain="true" data-cmd="edit">编辑</a>
		</c:if>
		<c:if test="${myFn:checkPermission('com._520it.crm.web.controller.EmployeeController:delEmp')}">
			<a id="emp_del_bt" class="easyui-linkbutton" iconCls="icon-remove" plain="true" data-cmd="del">离职</a>
		</c:if>
		<a id="emp_relod_bt" class="easyui-linkbutton" iconCls="icon-reload" plain="true" data-cmd="reload">刷新</a>
	</div>
	<div>
		关键字：<input name="keyword"><a id="search_bt" class="easyui-linkbutton" iconCls="icon-search" data-cmd="searchbtn">搜索</a>
	</div>
</div>


<!--对话框按钮  -->	
<div id="emp_dialog_bt">
	<a class="easyui-linkbutton" iconCls="icon-save"  plain="true" data-cmd="save">保存</a>
	<a class="easyui-linkbutton" iconCls="icon-cancel" plain="true" data-cmd="cancel">取消</a>
</div>


</body>
</html>
