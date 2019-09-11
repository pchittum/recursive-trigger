trigger AccountTrigger on Account (before update) {

    AccountTriggerHandler.executeTriggerLogic(Trigger.new, Trigger.operationType);

}