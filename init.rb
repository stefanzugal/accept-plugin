require 'redmine'
require_dependency 'hooks'

Redmine::Plugin.register :accept do
  name 'Accept plugin'
  author 'Stefan Zugal'
  description 'This plugin allows to "accept" tickets, as known from Trac.'
  version '0.0.1'
  url 'https://github.com/stefanzugal/accept-plugin'
  author_url 'http://www.zugal.info'
  settings :default => {'accept_status' => IssueStatus.first}, :partial => 'settings/accept_settings'
end
