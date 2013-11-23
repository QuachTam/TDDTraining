//
//  BankAccount.h
//  TDD
//
//  Created by Quach Ngoc Tam on 11/18/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Account.h"
#import "BankAccountDAO.h"

@interface BankAccount : NSObject{
    Account *_account;
    BankAccountDAO *bankDao;
}
@property (nonatomic, retain) BankAccountDAO *bankDao;
-(Account*)getAccountWithNumber:(NSString*)numberAcc;
-(void)open:(NSString*)accountNumber;
-(NSInteger)balanceCount;
-(Account*)depositWithAccountNumber:(NSString*)accountNumber Amount:(double)amount Description:(NSString*)description;
-(Account*)withdraw:(NSString*)accName Amount:(double)amount Description:(NSString*)description;
- (BOOL)saveDatabase;
-(BOOL)getTransactionsOccurred:(NSString*)accountNumber;
-(BOOL)getTransactionsOccurred:(NSString*)accountNumber StartTime:(NSDate*)start StopTime:(NSDate*)stop;
@end
