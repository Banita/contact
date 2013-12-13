module ApplicationHelper
def organization_list
  Organization.all.sort.collect {|p| [ p.name, p.id ]}
end
end
