require 'redmine'
require_dependency 'hooks'

Redmine::Plugin.register :accept do
  name 'Accept plugin'
  author 'Stefan Zugal'
  description 'This plugin allows to "accept" tickets, as known from Trac.'
  version '0.0.2'
  url 'https://github.com/stefanzugal/accept-plugin'
  author_url 'http://www.zugal.info'
  settings :default => {'accept_status' => IssueStatus.first, 'accept_individual_status' => 'one_status_for_all_trackers'}, :partial => 'settings/accept_settings'
end
