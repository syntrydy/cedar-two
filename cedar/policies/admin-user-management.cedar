@id("admin-user-management")
@description("Grants administrators full access to view, edit, and delete all user accounts")
@tag("user-management")
@tag("admin")
@tag("rbac")
@tag("privileged-access")
@author("Cedar Studio")
permit(
  principal,
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