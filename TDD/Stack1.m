//
//  Stack1.m
//  TDD
//
//  Created by Quach Ngoc Tam on 11/14/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//

#import "Stack1.h"

@implementation Stack1

-(id)init{
    self = [super init];
    if (!self) {
        arrayStack = [[NSMutableArray alloc] init];
    }
    return self;
}

-(NSInteger)count{
    return [arrayStack count];
}
@end
