//
//  BankAccount.m
//  TDD
//
//  Created by Quach Ngoc Tam on 11/18/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//

#import "BankAccount.h"
#import "Account.h"


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
    return [_bankDao getAccountNumber:numberAcc];
}
@end
