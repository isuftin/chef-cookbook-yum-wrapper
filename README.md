# WMA YUM Wrapper Cookbook

[![Build Status](https://travis-ci.org/USGS-CIDA/chef-cookbook-yum-wrapper.svg?branch=master)](https://travis-ci.org/USGS-CIDA/chef-cookbook-yum-wrapper)

This cookbook allows users to add and delete repositories from their system without having to specifically run the [`yum_repository`](https://docs.chef.io/resource_yum_repository.html) resource from Chef
in their cookbook. This acts as a wrapper around the `yum_repository` resource.

Requirements
------------
### Platforms
- CentOS 6.x
- CentOS 7.x

### Cookbooks
- none

### Suggests
- none

[Changelog](CHANGELOG.md)
---------

Attributes
----------
- `node['yum_wrapper']['repositories']['add']`: Hash. This property
is used by the `add_repositories` recipe. This is a hash of repositories
you wish to add to your system. The key in the repository is the human readable name
you want your repository configuration to add. The values mimic the [properties](https://docs.chef.io/resource_yum_repository.html#properties)
that the `yum_repository` Chef resource uses.

- `node['yum_wrapper']['repositories']['delete']`: Array, String. This property
is used by the `delete_repositories` recipe. This is an array of strings that
represent the human readable name that a repository is configured for in your YUM
repository manager. For example, if you've added a repository through this cookbook
and gave it the name of "MyCentOS6Repo", you would use that as the array value in
this property to delete that repository.

### Usage

Simply include the `add_repositories` recipe if you wish to have new YUM repositories added to your system. Alternatively, or in addition to, use the `delete_repositories` recipe.

Check the Attributes section to learn how to configure the repository run.
