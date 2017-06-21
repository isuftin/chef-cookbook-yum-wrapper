#
# Cookbook:: wma_yum_wrapper
# Recipe:: delete_repositories
#
# Description:: Deletes YUM repositories from the system

node['wma_yum_wrapper']['repositories']['delete'].each do |repo_name|
  yum_repository repo_name do
    action :delete
  end
end
