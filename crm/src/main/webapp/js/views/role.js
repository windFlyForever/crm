$(function() {
	// 统一变量
	var roleDatagrid, roleEditDelBt, roleDialog, roleForm,allPermission,selfPermission;
	roleDatagrid = $("#role_datagrid");
	roleEditDelBt = $('#role_edit_bt,#role_del_bt');
	roleDialog = $("#role_dialog");
	roleForm = $("#role_form");
	allPermission=$("#allPermission");
	selfPermission=$("#selfPermission")

	roleDatagrid.datagrid({
		fit : true,
		singleSelect : true,
		fitColumns : true,
		rownumbers : true,
		pagination : true,
		toolbar : '#role_datagrid_tb',
		url : '/role_list',
		pageList : [ 1, 10, 20, 30, 40, 50 ],
		
		columns : [ [ {
			field : 'sn',
			align : 'center',
			title : '角色编号',
			width : 1
		}, {
			field : 'name',
			align : 'center',
			title : '角色名称',
			width : 1
		}

		] ]
	});

	roleDialog.dialog({
		width : 700,
		height : 450,
		buttons : "#role_dialog_bt",
		closed : true
	});
	
	allPermission.datagrid({
		width : 300,
		height : 300,
		title:"所有权限",
		url:'/permission_list',
		fitColumns:true,
		rownumbers:true,
		pagination:true,
		singleSelect:true,
		columns:[[    
		    {field:'name',title:'权限名',width:1,align:"center"},    
		]],
		onDblClickRow:function(rowIndex, rowData){
			var rows=selfPermission.datagrid("getRows");
			var flag=true;
			var index=-1;
			for(var i=0;i<rows.length;i++){
				if(rows[i].id==rowData.id){
					flag=false;
					index=i;
					break;
				}				
			}
			
			if(flag){
				selfPermission.datagrid("appendRow",rowData);
			}else{
				selfPermission.datagrid("selectRow",index);
			}
			
		}
	});
	
	var pager=allPermission.datagrid("getPager");
	pager.pagination({
		showPageList:false,
		showRefresh:false,
		displayMsg:''		
	})
	
	selfPermission.datagrid({
		width : 300,
		height : 300,
		title:"已有权限",
		fitColumns:true,
		rownumbers:true,
		singleSelect:true,
		columns:[[    
		    {field:'name',title:'权限名',width:1,align:"center"},    
		]],
		onDblClickRow:function(rowIndex, rowData){
			selfPermission.datagrid("deleteRow",rowIndex);
		}
	});
	

	// 统一方法管理
	var cmd = {
		add : function() {

			roleDialog.dialog("open");
			roleDialog.dialog("setTitle", "新增");
//			roleForm.form("clear");
			$("[name='id'],[name='name'],[name='sn']").val("");
			selfPermission.datagrid("loadData",{rows:[]})
		},

		edit : function() {
			var rowData = roleDatagrid.datagrid("getSelected")

			if (rowData) {
				roleDialog.dialog("open");
				roleDialog.dialog("setTitle", "编辑");
				//roleForm.form("clear");
				$("[name='id'],[name='name'],[name='sn']").val("")
				
				var options=selfPermission.datagrid("options");
				options.url='/permission_roleId';
				selfPermission.datagrid("load",{rid:rowData.id})
				roleForm.form("load", rowData);
			} else {
				$.messager.alert("温馨提示", "请选择要编辑的数据", "info");

			}

		},

		del : function() {
			var rowData = roleDatagrid.datagrid("getSelected");
			if (rowData) {
				$.messager.confirm("温馨提示", "你确定要删除该角色吗？", function(sure) {
					if (sure) {
						$.get("/role_del?id=" + rowData.id, function(data) {
							if (data.success) {
								$.messager.alert("温馨提示", data.msg, "info",
										function() {
											roleDatagrid.datagrid("reload");
										});
							} else {
								$.messager.alert("温馨提示", data.msg, "info");
							}
						}, "json")
					}
				})
			} else {
				$.messager.alert("温馨提示", "请选择要删除的角色", "info")
			}
		},
		save:function () {
			// 判断是新增还是编辑
			
			var idVal = $("#role_form [name='id']").val();
			var urlval="";
			if (idVal) {
				urlval = "/role_edit";
			} else {
				urlval = "/role_save";
			}
		
			roleForm.form("submit", {
				url : urlval,
				onSubmit:function(param){
					var rows=selfPermission.datagrid("getRows");
					for(var i=0;i<rows.length;i++){
						param["permissions["+i+"].id"]=rows[i].id
					}					
				},
				success : function(data) {
					data = $.parseJSON(data);
					if (data.success) {
						$.messager.alert('温馨提示', data.msg, "info", function() {
							// 关闭对话框
							roleDialog.dialog("close");
							// 刷新数据表格
							roleDatagrid.datagrid("reload");
						});
					} else {
						$.messager.alert('温馨提示', data.msg, "info");
					}
				}				
			});
			
		},

		reload : function() {

			roleDatagrid.datagrid("reload")
		},

		cancel : function() {

			roleDialog.dialog("close");
		},

		searchbtn : function() {
			var keyval = $("input[name='keyword']").val();
			roleDatagrid.datagrid("load", {
				keyword : keyval
			})
		}
	};

	// 统一监听按钮方法
	$("a[data-cmd]").on("click", function() {
		var cmdval = $(this).data("cmd");
		if (cmdval) {
			cmd[cmdval]();
		}
	});

})

function deptFormatter(value, row, index) {

	return row.dept.name ? row.dept.name:"";
}

function stateFormatter(value, row, index) {
	if (value) {
		return "<font color='green'>正常</font>";
	}
	return "<font color='red'>离职</font>";
}

function adminFormatter(value, row, index) {
	if (value) {
		return "是";
	}
	return "否";
}

