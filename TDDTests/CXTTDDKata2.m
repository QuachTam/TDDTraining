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
                [_bank stub:@selector(bankDao) andReturn:_bankDao];
                [_bank stub:@selector(saveDatabase) andReturn:@1];
                [accountBefore stub:@selector(setBalance:) andReturn:@10];
                [_bank stub:@selector(getAccountWithNumber:) andReturn:accountBefore];
                
                NSString *description = [NSString nullMock];
                accountAfter = [_bank withdraw:accountNumber Amount:10 Description:description];
                [[theValue(accountAfter.balance) should] equal:theValue(accountBefore.balance-10)];
            });
            
            it(@"Step 6: withdraw with -amount then mock time now ", ^{
                Account *accBefore = [Account nullMock];
                NSDate *dateTemp = [NSDate nullMock];
                [_bank stub:@selector(saveDatabase) andReturn:@1];
                [accBefore stub:@selector(openTimestamp) andReturn:dateTemp];
                [accBefore stub:@selector(setBalance:) andReturn:@10];
                [_bankDao stub:@selector(saveDatabase) andReturn:@1];
                
                NSString *description = [NSString nullMock];
                Account *_accAfter = [_bank withdraw:accountNumber Amount:-10 Description:description];
                [_accAfter stub:@selector(openTimestamp) andReturn:dateTemp];
                [[theValue(_accAfter.openTimestamp) should] equal:theValue(dateTemp)];
                [[theValue(_accAfter.balance) should] equal:theValue(accBefore.balance - 10)];
            });
        });
    });
SPEC_END
