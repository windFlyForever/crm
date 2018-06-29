<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/9/14
  Time: 8:52
  To change this trolelate use File | Settings | File Trolelates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>角色管理</title>
    <%@ include file="common.jsp" %>
    <script type="text/javascript" src="/js/views/role.js"></script>
</head>
<body>
<!-- <table id="roleloyee_datagrid"></table>
<div id="roleloyee_datagrid_btn">
    <div>
        <form id="roleloyee_searchForm">
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
<div id="roleloyee_dialog">
    <form id="roleloyee_dialog_form" method="post">
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
                           data-options=" url: '/department_queryForrole',valueField:'id',textField:'name'"></td>
            </tr>
            <tr>
                <td>角色</td>
                <td><input class="easyui-combobox" id="roleloyee_role_combobox"
                           data-options=" url:'/role_queryRoleByrole', multiple:true, valueField:'id',textField:'name'">
                </td>
            </tr>

        </table>
    </form>
    <div id="roleloyee_dialog_bb">
        <a class="easyui-linkbutton" iconCls="icon-save" plain="true" data-cmd="save">保存</a>
        <a class="easyui-linkbutton" iconCls="icon-cancel" plain="true" data-cmd="cancel">取消</a>
    </div>
</div> -->
	
<table id="role_datagrid"></table>


<!-- 新增更新对话框 -->
<div id="role_dialog">
	<form method="post" id="role_form">
		<table align="center" style="margin-top:15px">
			<input type="hidden" name="id"/>
			<tr>
				<td>角色名称<input type="text" name="name" class="easyui-validatebox"  data-options="required:true"/></td>
				<td>角色编号<input type="text" name="sn" class="easyui-validatebox"  data-options="required:true"/></td>
			</tr>
			<tr>
				<td><table id="allPermission"></table></td>
				<td><table id="selfPermission"></table></td>
			</tr>
		</table>	
	</form>
</div>

<!--数据表顶部按钮  -->
<div id="role_datagrid_tb">
	<div>
		<a id="role_add_bt" class="easyui-linkbutton" iconCls="icon-add"  plain="true" data-cmd="add">新增</a>
		<a id="role_edit_bt" class="easyui-linkbutton" iconCls="icon-edit" plain="true" data-cmd="edit">编辑</a>
		<a id="role_del_bt" class="easyui-linkbutton" iconCls="icon-remove" plain="true" data-cmd="del">删除</a>
		<a id="role_relod_bt" class="easyui-linkbutton" iconCls="icon-reload" plain="true" data-cmd="reload">刷新</a>
	</div>
	<div>
		关键字：<input name="keyword"><a id="search_bt" class="easyui-linkbutton" iconCls="icon-search" data-cmd="searchbtn">搜索</a>
	</div>
</div>


<!--对话框按钮  -->	
<div id="role_dialog_bt">
	<a class="easyui-linkbutton" iconCls="icon-save"  plain="true" data-cmd="save">保存</a>
	<a class="easyui-linkbutton" iconCls="icon-cancel" plain="true" data-cmd="cancel">取消</a>
</div>


</body>
</html>
