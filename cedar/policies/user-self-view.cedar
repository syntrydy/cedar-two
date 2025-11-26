  @id("user-self-view")
  @description("Allows users to view their own documents")
  @tag("self-service")
  @author("Cedar Studio")
  permit(
    principal is CedarStudio::User,
    action == CedarStudio::Action::"view",
    resource is CedarStudio::Document
  )
  when {
    principal == resource.owner
  };

