@id("admin-user-management")
  @description("Grants administrators full access to view, edit, and delete all user accounts")
  @tag("admin")
  @author("Cedar Studio")
  permit(
    principal is CedarStudio::User,
    action in [
      CedarStudio::Action::"view",
      CedarStudio::Action::"edit",
      CedarStudio::Action::"delete"
    ],
    resource
  )
  when {
    principal.role == "admin"
  };
