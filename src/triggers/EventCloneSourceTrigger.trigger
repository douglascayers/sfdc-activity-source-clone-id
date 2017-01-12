trigger EventCloneSourceTrigger on Event ( before insert ) {

    for ( Event newEvent : Trigger.new ) {
        System.debug( 'cloneSourceId=' + newEvent.getCloneSourceId() );
        newEvent.clone_source_id__c = newEvent.getCloneSourceId();
    }

}