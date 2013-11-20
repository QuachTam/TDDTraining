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
            Stack1 *_stack = [[Stack1 alloc] init];
            NSString *_string = [NSString nullMock];
            
            countBefore = [_stack count];
            [_stack push:_string];
            counttAfter = [_stack count];
            [[theValue(countBefore+1) should] equal:theValue(counttAfter)];
        });
        
        it(@"Step 4: Stack is empty, pop equal null", ^{
            Stack1 *_stack = [[Stack1 alloc] init];
            [[_stack top] shouldBeNil];
        });
        
        it(@"Step 5: Stack is empty, push() 1 element then top() self", ^{
            Stack1 *_stack = [[Stack1 alloc] init];
            NSString *_string  = [NSString nullMock];
            [_stack push:_string];
            [[[_stack top] should] equal:_string];
        });
        
        it(@"Step 6: Stack is empty, pop 1 element, exception error ", ^{
            Stack1 *_stack = [[Stack1 alloc] init];
            [[theBlock(^{
                [_stack pop];
            }) should] raiseWithName:@"Error" reason:nil];
        });
        
        it(@"Step 7: Stack is k element, pop 1 element, Stack count equal k-1", ^{
            NSInteger countBefore = 0;
            NSInteger countAfter  = 0;
            
            Stack1 *_stack = [[Stack1 alloc] init];
            NSString *_string = [NSString nullMock];
            [_stack push:_string];
            countBefore = [_stack count];
            [_stack pop];
            countAfter = [_stack count]+1;
            [[theValue(countBefore) should] equal:theValue(countAfter)];
        });
        
        it(@"Step 8: Stack have 1 element, pop 1 element then check Stack is empty", ^{
            Stack1 *_stack = [[Stack1 alloc] init];
            NSString *_string = [NSString nullMock];
            [_stack push:_string];
            [_stack pop];
            [[theValue([_stack count]) should] equal:theValue(0)];
        });
        
        it(@"Step 9: Stack have k element, top() element p and pop() element p", ^{
            Stack1 *_stack = [[Stack1 alloc] init];
            NSString *_string = [NSString nullMock];
            [_stack push:_string];
            [[[_stack top] should] equal:_string];
            [_stack stub:@selector(pop) andReturn:_string];
            [[[_stack pop] should] equal:_string];
        });
    });
SPEC_END