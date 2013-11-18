//
//  BankAccount.h
//  TDD
//
//  Created by Quach Ngoc Tam on 11/18/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Account.h"

@interface BankAccount : NSObject{
    Account *_account;
}
-(void)open:(NSString*)accountNumber;
-(NSInteger)balanceCount;
@end
