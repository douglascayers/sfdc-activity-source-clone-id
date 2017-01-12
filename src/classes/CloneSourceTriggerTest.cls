@isTest
private class CloneSourceTriggerTest {

    @isTest
    static void test_clone_event() {

        Event evt = new Event(
            subject = 'Test',
            startDateTime = DateTime.now(),
            endDateTime = DateTime.now().addHours(1)
        );

        insert evt;

        Test.startTest();

        Event clonedEvt = evt.clone();

        insert clonedEvt;

        Test.stopTest();

        System.assertEquals( 1, [ SELECT count() FROM Event WHERE id = :clonedEvt.id AND clone_source_id__c = :evt.id ] );

    }

    @isTest
    static void test_clone_task() {

        Task tsk = new Task(
            subject = 'Test',
            activityDate = Date.today()
        );

        insert tsk;

        Test.startTest();

        Task clonedTsk = tsk.clone();

        insert clonedTsk;

        Test.stopTest();

        System.assertEquals( 1, [ SELECT count() FROM Task WHERE id = :clonedTsk.id AND clone_source_id__c = :tsk.id ] );

    }

}