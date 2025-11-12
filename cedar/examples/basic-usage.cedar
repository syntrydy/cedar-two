@id("basic-usage-examples")
@description("Collection of basic Cedar policy examples demonstrating common patterns including ownership, roles, public access, explicit denials, and tag-based access control")
@tag("examples")
@tag("tutorial")
@tag("getting-started")
@tag("documentation")
@author("Cedar Studio")
permit(
  principal,
  action in [CedarStudio::Action::"view", CedarStudio::Action::"edit"],
  resource is CedarStudio::Document
)
when {
  resource.owner == principal
};
permit(
  principal,
  action == CedarStudio::Action::"view",
  resource is CedarStudio::Document
)
when {
  principal.role == "admin"
};
permit(
  principal,
  action == CedarStudio::Action::"view",
  resource is CedarStudio::Document
)
when {
  resource.confidentiality == "public"
};
forbid(
  principal,
  action,
  resource
)
when {
  principal.status == "deleted"
};
permit(
  principal,
  action == CedarStudio::Action::"view",
  resource is CedarStudio::Document
)
when {
  principal.department in resource.tags
};