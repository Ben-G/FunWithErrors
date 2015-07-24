//
//  ErrorProducer.h
//  FunWithErrors
//
//  Created by Benjamin Encz on 7/23/15.
//  Copyright © 2015 Benjamin Encz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ErrorProducer : NSObject

+ (void)doWithError:(NSError**)error;
+ (NSString *)provideStringWithError:(NSError**)error;
+ (NSString *)provideNilStringWithError:(NSError**)error;
+ (NSString *)provideNilStringNoErrorWithError:(NSError**)error;
+ ( NSString * _Nullable )provideNullableNilStringNoErrorWithError:(NSError**)error;
+ (BOOL)couldFail:(NSError**)error;

@end
