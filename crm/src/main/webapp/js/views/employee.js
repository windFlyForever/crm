$(function() {
	// 统一变量
	var empDatagrid, empEditDelBt, empDialog, empForm;
	empDatagrid = $("#employee_datagrid");
	empEditDelBt = $('#emp_edit_bt,#emp_del_bt');
	empDialog = $("#emp_dialog");
	empForm = $("#emp_form");

	empDatagrid.datagrid({
		fit : true,
		singleSelect : true,
		fitColumns : true,
		rownumbers : true,
		pagination : true,
		toolbar : '#employee_datagrid_tb',
		url : '/employee_list',
		pageList : [ 1, 10, 20, 30, 40, 50 ],
		onClickRow : function(rowIndex, rowData) {
			if (rowData.state) {
				empEditDelBt.linkbutton('enable');
			} else {
				empEditDelBt.linkbutton('disable');
			}

		},
		columns : [ [ {
			field : 'username',
			align : 'center',
			title : '用户名',
			width : 1
		}, {
			field : 'realname',
			align : 'center',
			title : '真实名称',
			width : 1
		}, {
			field : 'tel',
			align : 'center',
			title : '电话',
			width : 1
		}, {
			field : 'email',
			align : 'center',
			title : '邮箱',
			width : 1
		}, {
			field : 'dept',
			align : 'center',
			title : '部门',
			width : 1,
			formatter : deptFormatter
		}, {
			field : 'inputtime',
			align : 'center',
			title : '入职时间',
			width : 1
		}, {
			field : 'state',
			align : 'center',
			title : '状态',
			width : 1,
			formatter : stateFormatter
		}, {
			field : 'admin',
			align : 'center',
			title : '是否超级管理员',
			width : 1,
			formatter : adminFormatter
		},

		] ]
	});

	empDialog.dialog({
		width : 280,
		height : 300,
		buttons : "#emp_dialog_bt",
		closed : true
	});

	// 统一方法管理
	var cmd = {
		add : function() {
			empDialog.dialog("open");
			empDialog.dialog("setTitle", "新增");
			empForm.form("clear");
		},

		edit : function() {
			var rowData = empDatagrid.datagrid("getSelected")

			if (rowData) {
				empDialog.dialog("open");
				empDialog.dialog("setTitle", "编辑");
				empForm.form("clear");
				if (rowData.dept) {
					rowData["dept.id"] = rowData.dept.id;
				}
				
				 var html = $.ajax({
					  url: "/queryRolesByEid?eid="+rowData.id,
					  async: false
				 }).responseText;
				 
				html=$.parseJSON(html);
				console.log(html);
				$("#emp_roles").combobox("setValues",html)
				empForm.form("load", rowData);
			} else {
				$.messager.alert("温馨提示", "请选择要编辑的数据", "info");

			}

		},

		del : function() {
			var rowData = empDatagrid.datagrid("getSelected");
			if (rowData) {
				$.messager.confirm("温馨提示", "你确定要离职该员工吗？", function(sure) {
					if (sure) {
						$.get("/emp_del?id=" + rowData.id, function(data) {
							if (data.success) {
								$.messager.alert("温馨提示", data.msg, "info",
										function() {
											empDatagrid.datagrid("reload");
										});
							} else {
								$.messager.alert("温馨提示", data.msg, "info");
							}
						}, "json")
					}
				})
			} else {
				$.messager.alert("温馨提示", "请选择要离职的员工", "info")
			}
		},
		save:function () {
			// 判断是新增还是编辑
			
			var idVal = $("#emp_form [name='id']").val();
			var urlval="";
			if (idVal) {
				urlval = "/emp_edit";
			} else {
				urlval = "/emp_save";
			}
		
			empForm.form("submit", {
				url : urlval,
				onSubmit: function(param){    
			        var ids=$("#emp_roles").combobox("getValues");
			        console.log(ids);
			        for(var i=0;i<ids.length;i++){
			        	param["roles["+i+"].id"]=ids[i];
			        }			        
			    },  
				success : function(data) {
					data = $.parseJSON(data);
					if (data.success) {
						$.messager.alert('温馨提示', data.msg, "info", function() {
							// 关闭对话框
							empDialog.dialog("close");
							// 刷新数据表格
							empDatagrid.datagrid("reload");
						});
					} else {
						$.messager.alert('温馨提示', data.msg, "info");
					}
				}				
			})
			
//			$.ajax({
//				url:urlval,
//				type:"post",
//				data:empForm.serialize(),
//				dataType: "json",  
//				success : function(data) {
//					
//					if (data.success) {
//						$.messager.alert('温馨提示', data.msg, "info", function() {
//							// 关闭对话框
//							empDialog.dialog("close");
//							// 刷新数据表格
//							empDatagrid.datagrid("reload");
//						});
//					} else {
//						$.messager.alert('温馨提示', data.msg, "info");
//					}
//				}	
//			})
		},

		reload : function() {

			empDatagrid.datagrid("reload")
		},

		cancel : function() {

			empDialog.dialog("close");
		},

		searchbtn : function() {
			var keyval = $("input[name='keyword']").val();
			empDatagrid.datagrid("load", {
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

