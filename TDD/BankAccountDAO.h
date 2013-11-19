//
//  BankAccountDAO.h
//  TDD
//
//  Created by Quach Ngoc Tam on 11/19/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Account.h"

@interface BankAccountDAO : NSObject
-(Account*)getAccountNumber:(NSString*)numberAccount;
@end
