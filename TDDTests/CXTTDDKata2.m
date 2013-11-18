//
//  CXTTDDKata2.m
//  TDD
//
//  Created by Quach Ngoc Tam on 11/18/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//

#import "Kiwi.h"
#import "BankAccount.h"
SPEC_BEGIN(kata2)
    describe(@"Start kata2 with BankAccount", ^{
        it(@"Step 1 open account with balace = 0", ^{
            BankAccount *_bank = [[BankAccount alloc] init];
            NSString *_accountNumber = [NSString nullMock];
            [_bank open:_accountNumber];
            [[theValue([_bank balanceCount]) should] equal:theValue(0)];
        });
        
        it(@"Step 2: get info account", ^{
            
        });
    });
SPEC_END
