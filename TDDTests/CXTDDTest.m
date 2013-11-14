//
//  CXTDDTest.m
//  TDD
//
//  Created by Quach Ngoc Tam on 11/13/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//

#import "Kiwi.h"
#import "Stack.h"

SPEC_BEGIN(ObjStack)

    describe(@"class Statck", ^{
        it(@"Step 1, create Stack and size = 0", ^{
            Stack *_stack = [[Stack alloc] init];
            [[theValue([_stack count]) should] equal:theValue(0)];
        });
        
        it(@"Step 2 push stack", ^{
            Stack *_stack = [[Stack alloc] init];
            NSString *_string = [NSString nullMock];
            [_stack push:_string];
            [[theValue([_stack count]) should] equal:theValue(1)];
        });
        
        it(@"Step 3 push 1 element and check Stack count = k+1", ^{
            Stack *_stack = [[Stack alloc] init];
            NSInteger countBefore = [_stack count];
            NSString *_string = [NSString nullMock];
            [_stack push:_string];
            NSInteger countAfter = [_stack count];
            [[theValue(countBefore+1) should] equal:theValue(countAfter)];
        });
        
        it(@"Step 4 Stack is empty and top() equal null", ^{
            Stack *_stack = [[Stack alloc] init];
            NSString *_string = [_stack top];
            [_string shouldBeNil];
        });
        
        it(@"Step 5 Stack is empty, push 1 element and top self", ^{
            Stack *_stack = [[Stack alloc] init];
            NSString *_stringPush = [NSString nullMock];
            [_stack push:_stringPush];
            NSString *_stringTop = [_stack top];
            [[_stringPush should] equal:_stringTop];
        });
        
        it(@"Step 6 pop and exception ", ^{
            Stack *_stack = [[Stack alloc] init];
            [[theBlock(^{
                [_stack pop];
            }) should] raiseWithName:@"Error" reason:nil];
        });
        
        it(@"Step 7 Stack have k element, pop 1 element, should equal Stack count = k-1", ^{
            
            Stack *_stack = [[Stack alloc] init];
            NSString *_string = [NSString nullMock];
            [_stack push:_string];
             NSInteger countBeforePop = [_stack count];
            [_stack pop];
            NSInteger countAfterPop = [_stack count];
            [[theValue(countBeforePop-1) should] equal:theValue(countAfterPop)];
        });
        
    });

SPEC_END
