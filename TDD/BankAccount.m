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
        _account = [[Account alloc] init];
    }
    return self;
}

-(NSInteger)balanceCount{
    return [_account balanceCount];
}
@end
