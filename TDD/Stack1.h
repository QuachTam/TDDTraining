//
//  Stack1.h
//  TDD
//
//  Created by Quach Ngoc Tam on 11/14/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Stack1 : NSObject{
    NSMutableArray *arrayStack;
}

-(NSInteger)count;
-(void)push:(NSString*)_string;
-(NSString*)pop;
-(NSString*)top;
@end
