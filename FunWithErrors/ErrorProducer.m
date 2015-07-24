//
//  ErrorProducer.m
//  FunWithErrors
//
//  Created by Benjamin Encz on 7/23/15.
//  Copyright © 2015 Benjamin Encz. All rights reserved.
//

#import "ErrorProducer.h"

@implementation ErrorProducer

+ (void)doWithError:(NSError**)error {
  if (error) {
    *error = [NSError errorWithDomain:@"FunWithErrors" code:0 userInfo:nil];
  }
}

+ (NSString *)provideStringWithError:(NSError**)error {
  if (error) {
    *error = [NSError errorWithDomain:@"FunWithErrors" code:0 userInfo:nil];
  }
  
  return @"";
}

+ (NSString *)provideNilStringWithError:(NSError**)error {
  if (error) {
    *error = [NSError errorWithDomain:@"FunWithErrors" code:0 userInfo:nil];
  }
  
  return nil;
}

+ (NSString *)provideNilStringNoErrorWithError:(NSError**)error {
  return nil;
}

+ (BOOL)couldFail:(NSError**)error {
  return false;
}

@end
