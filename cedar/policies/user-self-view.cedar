@id("user-self-view")
@description("Allows users to view their own profile information")
@tag("user-management")
@tag("self-service")
@tag("rbac")
@author("Cedar Studio")
permit(
  principal,
  action == CedarStudio::Action::"view",
  resource
)
when {
  principal == resource.owner
};