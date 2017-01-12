Activity Source Clone ID Triggers
=================================

Overview
--------

Example triggers to capture the Task or Event "Source Clone ID".

Inspired by [Marco 'Tony' Gonzalez](https://success.salesforce.com/_ui/core/userprofile/UserProfilePage?u=0053000000A639I&tab=sfdc.ProfilePlatformFeed) who recently asked me how to capture the clone source id when a Task or Event is created without Apex and I couldn't readily determine how, so here's the Apex triggers.

I previously talked about the `isClone()` and `getCloneSourceId()` sobject methods available in Winter '16 release on this salesforce stackexchange post: http://stackoverflow.com/questions/11707328/detect-when-a-record-is-being-cloned-in-trigger/39473676#39473676


What's Included
---------------

* Two triggers, one on Event and one on Task
* One apex test class with 100% code coverage (if you have validation rules on Tasks/Events you may have to fiddle with the code)
* One custom field `Activity.Clone_Source_ID__c` (text field)
* Two buttons, one for cloning Events and one for cloning Tasks


Installation
----------------------

* [Deploy from Github](https://githubsfdeploy.herokuapp.com)


Getting Started
---------------

1. Deploy code using link above
2. Add the clone buttons to Task and Event page layouts
3. Clone an existing Task or Event record
4. Verify the new clone record's `Clone_Source_ID__c` text field contains the ID value of the source Task or Event


Task / Event "Clone" Custom Buttons
-----------------------------------

Now cloning Tasks or Events in Classic UI is not a standard action, so to begin you have to create custom URL detail page buttons that minimally specify `/e?clone=1` at the end of a record ID. These examples buttons are included in this package. To try and avoid collisions with any buttons you may already have their API names are `Task.CloneSourceID` and `Event.CloneSourceID`.

Example Formulas:

* /{!Task.Id}/e?clone=1&cancelURL={!Task.Id}
* /{!Event.Id}/e?clone=1&cancelURL={!Event.Id}

