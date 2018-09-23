# Redmine Accept Plugin
People having worked with TRAC are used to "accept" issues, which basically states that someone will now actively work on a specific issue. Redmine apparently also supports custom issue statuses, such as "accepted", but it requires more than one click to accept an issue (edit issue, select status "accepted", select assignee). This plugin allows to accept tickets with one click.

### Installation Notes
The plugin can be installed as ordinary redmine plugin (compatible with redmine 3.4.x, 3.3.x, 3.2.x, 3.0.x, 2.6.x) and does not require database migration:
* Create directory your_redmine_base/plugins/accept
* Copy the content of this repository to the created directory. If you are cloning from this repository, please make sure to rename the root folder from "accept-plugin" to "accept" to match the described folder structure above. Otherwise, you will experience errors as described in [#8](../../issues/8). 
* Restart redmine (e.g., through "touch your_redmine_base/tmp/restart.txt")
* The accept plugin needs to know which issue status is considered as "accepted" in your redmine installation. By default, the first status is considered the "accepted" status. This behaviour can be configured in your redmine installation: Administration --> Plugins --> Accept Plugin --> Configure

### Things Good to Know

* From version 0.0.2, it is possible to define the accept status per tracker. This means, depending on the tracker the issue is assigned to, a different accept status may be selected. If you do not wish to have a different accept status for each tracker, it is still possible to configure a common accept state for all trackers.
* The accept button does not show up. Why?
  * The accept button will only show up if you are listed in the combo box with "Assigned to".
  * If the issue is already closed, the button will not show up.
  * If you have already accepted the issue - meaning that the issue is already in the defined accept state, the button will not show up.


### Version History

[0.0.2](../../releases/tag/0.0.2)
* Allows the accept status to be dependent on the tracker the issue is assigned to, see [#5](../../issues/5). 

[0.0.1](../../releases/tag/0.0.1)
 * First version of the plugin.


### License

This project is licensed under [the MIT License](../../blob/master/LICENSE).
