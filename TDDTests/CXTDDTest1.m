//
//  CXTDDTest1.m
//  TDD
//
//  Created by Quach Ngoc Tam on 11/14/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//

#import "Kiwi.h"

SPEC_BEGIN(Test1)
    describe(@"TDD kata 1", ^{
       it(@"Step 1: create Stack, check Stack count equal 0", ^{
           [[theValue([_stack count]) should] equal: theValue(0)];
       });
    });
SPEC_END