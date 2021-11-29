#project_name: "audience_building_tool"

# # Use local_dependency: To enable referencing of another project
# # on this instance with include: statements
#
# local_dependency: {
#   project: "name_of_other_project"
# }




application: ga360_audience_selector {
  label: "GA360 Audience Builder"
  #when dev complete will host from a file in the instance such as commented below
  file: "bundle.js"
  #starting in 7.10 you will need to pay more attention to this "entitlements" parameter
  entitlements: {
    local_storage: yes
    use_embeds: yes
    external_api_urls: ["https://europe-west1-samsung-looker-emea.cloudfunctions.net/","https://localhost:8080","http://localhost:8080"]
    #allow_same_origin: yes
  }
}
