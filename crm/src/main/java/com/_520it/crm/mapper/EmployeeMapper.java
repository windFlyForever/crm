package com._520it.crm.mapper;

import com._520it.crm.domain.Employee;
import com._520it.crm.page.PageResult;
import com._520it.crm.query.EmployeeQueryObject;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface EmployeeMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Employee record);

    Employee selectByPrimaryKey(Long id);

    List<Employee> selectAll();

    int updateByPrimaryKey(Employee record);

	Employee getEmployeeForLogin(@Param("username")String username, @Param("password")String password);

	long queryForPagecount(EmployeeQueryObject eq);
	
	List<Employee> queryForPage(EmployeeQueryObject eq);

	void updateStateById(long id);
	
	
	void insertRelation(@Param("eid")Long eid,@Param("rid")Long rid);

	List<Long> queryRolesByEid(Long eid);

	void deleteRolesByEid(Long id);
}