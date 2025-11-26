@id("manager-department-view")
  @description("Allows managers to view user profiles within their department")
  @tag("manager")
  @author("Cedar Studio")
  permit(
    principal is CedarStudio::User,
    action == CedarStudio::Action::"view",
    resource is CedarStudio::User
  )
  when {
    principal.role == "manager" &&
    principal.department == resource.department
  };
