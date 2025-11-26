@id("hr-user-management")
@description("Grants Human Resources department staff permission to manage all employee records")
@tag("hr")
@author("Cedar Studio")
permit(
  principal is CedarStudio::User,
  action == CedarStudio::Action::"manage",
  resource
)
when {
  principal.department == "Human Resources"
};
