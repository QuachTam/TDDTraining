//
//  BankAccount.m
//  TDD
//
//  Created by Quach Ngoc Tam on 11/18/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//

#import "BankAccount.h"
#import "Account.h"
#import "BankAccountDAO.h"


@implementation BankAccount
@synthesize bankDao;
-(id)init{
    self = [super init];
    if (self) {
        bankDao = [[BankAccountDAO alloc] init];
    }
    return self;
}

-(void)open:(NSString*)accountNumber{
    _account = [[Account alloc] init];
    [_account setAccountNumber:accountNumber];
}

-(NSInteger)balanceCount{
    return [_account balanceCount];
}

-(Account*)getAccountWithNumber:(NSString*)numberAcc{
    return [bankDao getAccountNumberDAO:numberAcc];
}

-(Account*)depositWithAccountNumber:(NSString*)accountNumber
                         Amount:(double)amount
                    Description:(NSString*)description{
    
    NSDate *dateNow = [NSDate date];
    
    Account* BF = [self getAccountWithNumber:accountNumber];
    Account* AT = [[Account alloc] init];
    AT.balance = BF.balance;
    AT.accountNumber = BF.accountNumber;
    AT.openTimestamp = BF.openTimestamp;
    AT.openTimestamp = dateNow;
    AT.balance +=amount;
    return AT;
}
- (BOOL)saveDatabase{
    return [bankDao saveDatabase];
}
-(Account*)withdraw:(NSString*)accName
             Amount:(double)amount
        Description:(NSString*)description{
    NSDate *dateNow = [NSDate date];
    
    Account* BF = [self getAccountWithNumber:accName];
    Account* AT = [[Account alloc] init];
    if ([self saveDatabase]) {
        AT.balance = BF.balance;
        AT.accountNumber = BF.accountNumber;
        AT.openTimestamp = BF.openTimestamp;
        AT.openTimestamp = dateNow;
        if (amount<0) {
            amount = -amount;
        }
        AT.balance -=amount;
        return AT;
    }
    return nil;
}

-(BOOL)getTransactionsOccurred:(NSString*)accountNumber{
    return [bankDao getTransactionsOccurred:accountNumber];
}



-(BOOL)getTransactionsOccurred:(NSString*)accountNumber StartTime:(NSDate*)start StopTime:(NSDate*)stop{
    return [BankAccountDAO getTransactionsOccurred:accountNumber StartTime:start StopTime:stop];
}

@end
