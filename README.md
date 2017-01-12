# Activity Source Clone ID Triggers

Example triggers to capture the Task or Event "Source Clone ID".

Inspired by [Marco 'Tony' Gonzalez](https://success.salesforce.com/_ui/core/userprofile/UserProfilePage?u=0053000000A639I&tab=sfdc.ProfilePlatformFeed) who recently asked me how to capture the clone source id when a Task or Event is created without Apex and I couldn't readily determine how, so here's the Apex triggers.

I previously talked about the `isClone()` and `getCloneSourceId()` sobject methods available in Winter '16 release on this salesforce stackexchange post: http://stackoverflow.com/questions/11707328/detect-when-a-record-is-being-cloned-in-trigger/39473676#39473676


# Custom Buttons

Now cloning Tasks or Events in Classic UI is not a standard action, so to begin you have to create custom URL detail page buttons that minimally specify `/e?clone=1` at the end of a record ID.

For example:

* /{!Task.Id}/e?clone=1&cancelURL={!Task.Id}
* /{!Event.Id}/e?clone=1&cancelURL={!Event.Id}

Once created then add them to your desired page layouts.
