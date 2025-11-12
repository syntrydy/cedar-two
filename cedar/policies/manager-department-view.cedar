@id("manager-department-view")
@description("Allows managers to view user profiles within their department")
@tag("user-management")
@tag("manager")
@tag("department-scoped")
@tag("rbac")
@author("Cedar Studio")
permit(
  principal,
  action == CedarStudio::Action::"view",
  resource is CedarStudio::User
)
when {
  principal.role == "manager" &&
  principal.department == resource.department
};