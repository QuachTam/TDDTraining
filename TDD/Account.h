//
//  Account.h
//  TDD
//
//  Created by Quach Ngoc Tam on 11/18/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Account : NSObject{
    NSString *accountNumber;
    double balance;
    NSDate *openTimestamp;
}
@property (nonatomic, readwrite) double balance;
@property (nonatomic, readwrite) NSDate *openTimestamp;
@property (nonatomic, readonly) NSString *accountNumber;
-(void)setAccountNumber:(NSString*)number;
-(NSString*)getAccountNumber;
-(NSInteger)balanceCount;
@end
