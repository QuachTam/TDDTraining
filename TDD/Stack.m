//
//  Stack.m
//  TDD
//
//  Created by Quach Ngoc Tam on 11/13/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//

#import "Stack.h"

@implementation Stack

-(id)init{
    self = [super init];
    if (self) {
        arrayStack = [[NSMutableArray alloc] init];
    }
    return self;
}

-(NSInteger)count{
    return [arrayStack count];
}

-(void)push:(NSString*)_string{
    [arrayStack addObject:_string];
}

-(NSString*)top{
    if ([self count]) {
        return [arrayStack objectAtIndex:0];
    }
    return nil;
}

-(void)pop{
    if (!arrayStack.count) {
        NSException *exep = [NSException exceptionWithName:@"Error" reason:nil userInfo:nil];
        @throw exep;
    }
    [arrayStack removeObjectAtIndex:0];
}
@end
