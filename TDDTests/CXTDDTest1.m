//
//  CXTDDTest1.m
//  TDD
//
//  Created by Quach Ngoc Tam on 11/14/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//

#import "Kiwi.h"
#import "Stack1.h"

SPEC_BEGIN(Test1)
    describe(@"TDD kata 1", ^{
        it(@"Step 1: create Stack, check Stack count equal 0", ^{
            Stack1 *_stack = [[Stack1 alloc] init];
            [[theValue([_stack count]) should] equal: theValue(0)];
        });
        
        it(@"Step 2: Stack is empty, push 1 element and check Stack count equal 1", ^{
            Stack1 *_stack = [[Stack1 alloc] init];
            NSString *_string = [NSString nullMock];
            [_stack push:_string];
            [[theValue([_stack count]) should] equal:theValue(1)];
        });
        
        it(@"Step 3: Stack have k element, push 1 element, check Stack count equal k+1", ^{
            NSInteger countBefore;
            NSInteger counttAfter;
            [[theValue(countBefore+1) should] equal:theValue(counttAfter)];
        });
    });
SPEC_END