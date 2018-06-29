package  com._520it.crm.mapper;

import com._520it.crm.domain.Role;
import com._520it.crm.query.RoleQueryObject;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface RoleMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Role record);

    Role selectByPrimaryKey(Long id);

    List<Role> selectAll();

    int updateByPrimaryKey(Role record);
    
    void insertRelation(@Param("rid")Long rid,@Param("pid")Long pid);

	Long queryForPagecount(RoleQueryObject eq);

	List<Role> queryForPage(RoleQueryObject eq);

	void deletePermissionByRoleId(Long id);
}