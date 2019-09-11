public with sharing class AccountTriggerHandler {

    public static Integer iValue = 0; 

    public static void executeTriggerLogic(List<Account> accounts, System.TriggerOperation operationType){

        Account accountToUpdate = new Account(Id=accounts[0].Id);
        accountToUpdate.Name = accountToUpdate.Name + String.valueOf(iValue);
        update accountToUpdate; //NOPMD

    }

}
