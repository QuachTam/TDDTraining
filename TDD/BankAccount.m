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

-(id)init{
    self = [super init];
    if (self) {
        
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
    BankAccountDAO *_bankDao = [[BankAccountDAO alloc] init];
    return [_bankDao getAccountNumberDAO:numberAcc];
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

-(Account*)withdraw:(NSString*)accName
             Amount:(double)amount
        Description:(NSString*)description{
    NSDate *dateNow = [NSDate date];
    
    Account* BF = [self getAccountWithNumber:accName];
    Account* AT = [[Account alloc] init];
    AT.balance = BF.balance;
    AT.accountNumber = BF.accountNumber;
    AT.openTimestamp = BF.openTimestamp;
    AT.openTimestamp = dateNow;
    AT.balance -=amount;
    return AT;
}

@end
