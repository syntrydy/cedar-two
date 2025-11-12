@id("hr-user-management")
@description("Grants Human Resources department staff permission to manage all employee records")
@tag("user-management")
@tag("hr")
@tag("employee-records")
@tag("rbac")
@author("Cedar Studio")
permit(
  principal,
  action == CedarStudio::Action::"manage",
  resource
)
when {
  principal.department == "Human Resources"
};