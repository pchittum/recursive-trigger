List<Account> accounts  = [SELECT Id from Account LIMIT 1];

Account newAccount = new Account(); 

newAccount.Name = 'test1';
newAccount.Id = accounts.get(0).Id;
update newAccount;