public with sharing class AccountTriggerHandler {

    public static Integer iValue = 0; 

    public static void executeTriggerLogic(List<Account> accounts, System.TriggerOperation operationType){

        String newName = 'recurse' + iValue++; 
        Account accountToInsert = new Account();
        accountToInsert.Name = newName; 
        System.debug(accountToInsert);
        insert accountToInsert; //NOPMD

    }

}
