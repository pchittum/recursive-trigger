trigger AccountTrigger on Account (after insert) {

    AccountTriggerHandler.executeTriggerLogic(Trigger.new, Trigger.operationType);

}