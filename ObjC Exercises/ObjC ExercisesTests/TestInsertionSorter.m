//
//  TestInsertionSorter.m
//  ObjC Exercises
//
//  Created by Pablo Padilla on 5/11/14.
//
//

#import <XCTest/XCTest.h>
#import "InsertionSorter.h"
#import "RandUtils.h"

@interface TestInsertionSorter : XCTestCase
{
    NSMutableArray* numbers;
    InsertionSorter* sorter;
}
@end

@implementation TestInsertionSorter

- (void)setUp
{
    [super setUp];

    numbers = [RandUtils randomArray:100 withMaxVal:1000000];
    
    sorter = [[InsertionSorter alloc] init];
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testSortInPlace
{
    [sorter sortInPlace:numbers];
    NSLog(@"The sorted list is: %@", [numbers description]);
    XCTAssert(YES == [sorter isSorted:numbers], @"Not sorted %@", [numbers description]);
}

@end
