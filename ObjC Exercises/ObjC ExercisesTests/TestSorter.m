//
//  TestSorter.m
//  ObjC Exercises
//
//  Created by Pablo Padilla on 5/11/14.
//
//

#include "stdlib.h"

#import <XCTest/XCTest.h>
#import "Sorter.h"

@interface TestSorter : XCTestCase
{
    Sorter* sorter;
    NSMutableArray* numbers;
}

@end

@implementation TestSorter

- (void)setUp
{
    [super setUp];
    
    sorter = [[Sorter alloc] init];
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

-(void)testIsSorted{
    NSArray* sorted = @[@1,@2,@3,@4,@5];
    NSArray* unsorted = @[@1,@2,@5,@4,@5];
    
    XCTAssert(YES == [sorter isSorted:sorted], @"Sorted Numbers are not sorted: %@", sorted);
    XCTAssert(NO == [sorter isSorted:unsorted], @"Unsorted Numbers are sorted: %@", unsorted);
}

@end
