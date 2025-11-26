@id("user-self-view")
@description("Allows users to view their own profile information")
@tag("self-service")
@author("Cedar Studio")
permit(
  principal,
  action == CedarStudio::Action::"view",
  resource
)
when {
  principal == resource.owner
};
