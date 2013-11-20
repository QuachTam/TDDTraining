//
//  CXTTDDKata2.m
//  TDD
//
//  Created by Quach Ngoc Tam on 11/18/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//

#import "Kiwi.h"
#import "BankAccount.h"
#import "Account.h"
#import "BankAccountDAO.h"
SPEC_BEGIN(kata2)
    describe(@"Start kata2 with BankAccount", ^{
        
        registerMatchers(@"BG");
        
        context(@"a state component in", ^{
            
            __block BankAccount *_bank;
            __block BankAccountDAO *_bankDao;
            __block NSString *accountNumber;
            
            beforeAll(^{
                _bank = [[BankAccount alloc] init];
                _bankDao = [[BankAccountDAO alloc] init];
                accountNumber = [NSString nullMock];
            });
            
            afterAll(^{
                _bank = nil;
                _bankDao = nil;
                accountNumber = nil;
            });
            
            it(@"Step 1 open account with balace = 0", ^{
                BankAccount *_bank = [[BankAccount alloc] init];
                NSString *_accountNumber = [NSString nullMock];
                [_bank open:_accountNumber];
                [[theValue([_bank balanceCount]) should] equal:theValue(0)];
            });
            
            it(@"Step 2: get account with numberAccount ", ^{
                BankAccount *_bank = [[BankAccount alloc] init];
                NSString *_numberAccount = [NSString nullMock];
                
                Account *_acc = [Account nullMock];
                [_acc stub:@selector(getAccountNumber) andReturn:_numberAccount];
                [_bank stub:@selector(getAccountWithNumber:) andReturn:_acc withArguments:_numberAccount];
                [[[_acc getAccountNumber] should] equal:_numberAccount];
            });
            
            it(@"Step 3: sent money to my account and check deposit", ^{
                Account *_accountBefore = [Account nullMock];
                [_accountBefore stub:@selector(balance) andReturn:0];
                Account *_accountAfter;
                
                NSInteger amount = 10;
                NSString *description = [NSString nullMock];
                
                [_bank stub:@selector(getAccountWithNumber:) andReturn:_accountBefore];
                _accountAfter = [_bank depositWithAccountNumber:accountNumber Amount:amount Description:description];
                
                [[theValue(_accountAfter.balance) should] equal:theValue(_accountBefore.balance + amount)];
            });
            
            it(@"Step 4: mock time now ", ^{
                Account *_acc = [[Account alloc] init];
                NSDate *dateTemp = [NSDate nullMock];
                [_acc stub:@selector(openTimestamp) andReturn:dateTemp];
                
                NSString *description = [NSString nullMock];
                
                [_bank depositWithAccountNumber:accountNumber Amount:10 Description:description];
                
                [[theValue(_acc.openTimestamp) should] equal:theValue(dateTemp)];
            });
            
            it(@"Step 5: withdraw then balance equal balance - amount", ^{
                
                Account *accountBefore = [Account nullMock];
                Account *accountAfter;
                
                
                NSString *description = [NSString nullMock];
                accountAfter = [_bank withdraw:accountNumber Amount:10 Description:description];
                
                [[theValue(accountAfter.balance) should] equal:theValue(accountBefore.balance-10)];
            });
        });
    });
SPEC_END
