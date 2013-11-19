//
//  Account.m
//  TDD
//
//  Created by Quach Ngoc Tam on 11/18/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//

#import "Account.h"

@implementation Account
-(id)init{
    self = [super init];
    if (self) {
        balance =  0;
        openTimestamp = [NSDate date];
    }
    return self;
}
-(NSInteger)balanceCount{
    return balance;
}

-(void)setAccountNumber:(NSString*)number{
    accountNumber = number;
}

-(NSString*)getAccountNumber{
    return nil;
}
@end
