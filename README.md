# Recursive Trigger Anti Pattern Example

**Don't Do This Ever.** This example was to show in code how a recursive trigger can exist. 

At a high level, a recursive trigger occurs when trigger logic is re-entered without a proper check to exit. 

    Account record is saved
    --> AccountTrigger is invoked
    --> AccountTrigger saves an Account record
        --> AccountTrigger is invoked again
        --> AccountTrigger saves an Account record
            --> etc

The following artifacts are used to make this happen. 
- [AccountTrigger](https://github.com/pchittum/recursive-trigger/blob/master/force-app/main/default/triggers/AccountTrigger.trigger): After insert trigger to invoke a trigger handler class
- [AccountTriggerHandler](https://github.com/pchittum/recursive-trigger/blob/master/force-app/main/default/classes/AccountTriggerHandler.cls): Trigger handler class that inserts a new Account record
- [test1.anon](https://github.com/pchittum/recursive-trigger/blob/master/apex-test/test1.anon)