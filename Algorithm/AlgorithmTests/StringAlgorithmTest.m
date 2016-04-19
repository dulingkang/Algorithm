//
//  StringAlgorithmTest.m
//  Algorithm
//
//  Created by dulingkang on 16/4/19.
//  Copyright © 2016年 com.shawn. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "StringAlgorithm.h"


@interface StringAlgorithmTest : XCTestCase

@end

@implementation StringAlgorithmTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testLeftRotateString {
    NSString *str = @"abcdef";
    NSString * s = [StringAlgorithm leftRotateString:str endIndex:5 splitIndex:2];
    XCTAssertTrue([s isEqualToString:@"defabc"]);
}

- (void)testStringContain {
    NSString *longStr = @"BCD";
    NSString *shortStr = @"E";
    XCTAssertFalse([StringAlgorithm stringContain:longStr shortString:shortStr]);
    XCTAssertTrue([StringAlgorithm stringContain:longStr shortString:@"C"]);
}



- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
