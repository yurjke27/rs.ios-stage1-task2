#import <XCTest/XCTest.h>
#import "Blocks.h"

@interface BlocksTest : XCTestCase

@end

@implementation BlocksTest

- (void)test1 {
    __block XCTestExpectation *expectation = [self expectationWithDescription:@"process"];
    
    Blocks *blocks = [Blocks new];
    blocks.blockC = ^(NSObject *result) {
        XCTAssertEqualObjects(result, @"43");
        [expectation fulfill];
    };
    
    blocks.blockA(@[@1, @"4" ,@2, @"3"]);
    blocks.blockB([NSString class]);
    [self waitForExpectations:@[expectation] timeout:1];
}

- (void)test2 {
    __block XCTestExpectation *expectation = [self expectationWithDescription:@"process"];

    Blocks *blocks = [Blocks new];
    blocks.blockC = ^(NSObject *result) {
        XCTAssertEqualObjects(result, @3);
        [expectation fulfill];
    };
    
    blocks.blockA(@[@1, @"4" ,@2, @"3"]);
    blocks.blockB([NSNumber class]);
    [self waitForExpectations:@[expectation] timeout:1];
}

- (void)test3 {
    __block XCTestExpectation *expectation = [self expectationWithDescription:@"process"];

    Blocks *blocks = [Blocks new];
    blocks.blockC = ^(NSObject *result) {
        XCTAssertEqualObjects(result, @3);
        [expectation fulfill];
    };
    
    blocks.blockA(@[@1, @"4" ,@2, @"3", [NSNull null]]);
    blocks.blockB([NSNumber class]);
    [self waitForExpectations:@[expectation] timeout:1];
}

- (void)test4 {
    __block XCTestExpectation *expectation = [self expectationWithDescription:@"process"];

    Blocks *blocks = [Blocks new];
    blocks.blockC = ^(NSObject *result) {
        XCTAssertEqualObjects(result, @"03.12.2022");
        [expectation fulfill];
    };
    NSDate *date1 = [NSDate dateWithTimeIntervalSince1970:1581422400];
    NSDate *date2 = [NSDate dateWithTimeIntervalSince1970:1670068800];
    NSDate *date3 = [NSDate dateWithTimeIntervalSince1970:1584515140];
    
    blocks.blockA(@[@1, @"4" ,date2 ,@2, @"3", [NSNull null], date1, date3]);
    blocks.blockB([NSDate class]);
    [self waitForExpectations:@[expectation] timeout:1];
}

@end
