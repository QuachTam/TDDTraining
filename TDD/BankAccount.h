//
//  BankAccount.h
//  TDD
//
//  Created by Quach Ngoc Tam on 11/18/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Account.h"

@interface BankAccount : NSObject{
    Account *_account;
}
-(Account*)getAccountWithNumber:(NSString*)numberAcc;
-(void)open:(NSString*)accountNumber;
-(NSInteger)balanceCount;
-(Account*)depositWithAccountNumber:(NSString*)accountNumber Amount:(double)amount Description:(NSString*)description;
-(Account*)withdraw:(NSString*)accName Amount:(double)amount Description:(NSString*)description;
@end
