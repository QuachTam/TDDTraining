//
//  BankAccountDAO.m
//  TDD
//
//  Created by Quach Ngoc Tam on 11/19/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//

#import "BankAccountDAO.h"

@implementation BankAccountDAO
-(Account*)getAccountNumberDAO:(NSString*)numberAccount{
    return nil;
}

-(NSInteger)saveDatabase{
    return 0;
}
-(BOOL)getTransactionsOccurred:(NSString*)numberAccount{
    return 0;
}
+(BOOL)getTransactionsOccurred:(NSString*)accountNumber StartTime:(NSDate*)start StopTime:(NSDate*)stop{
    return 0;
}
-(NSInteger)getListTransactionLatesDAO:(NSInteger)numberAccount{
    return 1;
}
@end
