//
//  main.swift
//  FunWithErrors
//
//  Created by Benjamin Encz on 7/23/15.
//  Copyright © 2015 Benjamin Encz. All rights reserved.
//

import Foundation

// Compiler Error: Type 'MyStructErrorType' does not conform to protocol 'ErrorType':
//struct MyStructErrorType: ErrorType {
//  var errorDetails: String
//}

struct MyStructErrorType: ErrorType {
  let string: String
  var _domain: String
  var _code: Int
}

enum MyError: ErrorType {
  case BasicError, FatalError
}

func badFunction() throws {
  throw MyError.FatalError
}


do {
  try badFunction()
} catch let error as MyError {
  print("domain: \(error._domain) code: \(error._code)")
} catch {
  
}

do {
  // the Objective-C method has no return value, which apparently means it is not translated to Swift's `throw` mechanism
  ErrorProducer.doWithError(nil)
} catch let error {
  
}

do {
  try ErrorProducer.provideString()
} catch let error as NSError {
  print("provideString has thrown:")
  print("domain: \(error.domain) code: \(error.code)")
}

do {
  try ErrorProducer.provideNilString()
} catch let error as NSError {
  print("provideNilString has thrown:")
  print("domain: \(error.domain) code: \(error.code)")
}

do {
  try ErrorProducer.provideNilStringNoError()
} catch let error as NSError {
  print("provideNilStringNoError has thrown:")
  print("domain: \(error.domain) code: \(error.code)")
}

do {
  try ErrorProducer.provideNullableNilStringNoError()
}
