trigger TaskCloneSourceTrigger on Task ( before insert ) {

    for ( Task newTask : Trigger.new ) {
        System.debug( 'cloneSourceId=' + newTask.getCloneSourceId() );
        newTask.clone_source_id__c = newTask.getCloneSourceId();
    }

}