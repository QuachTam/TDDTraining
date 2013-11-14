//
//  Stack.h
//  TDD
//
//  Created by Quach Ngoc Tam on 11/13/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Stack : NSObject{
    NSMutableArray *arrayStack;
}
-(void)push:(NSString*)_string;
-(NSInteger)count;
-(NSString*)top;
-(void)pop;
@end
