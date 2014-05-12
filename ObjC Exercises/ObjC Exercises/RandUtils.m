//
//  RandUtils.m
//  ObjC Exercises
//
//  Created by Pablo Padilla on 5/11/14.
//
//

#import "RandUtils.h"

@implementation RandUtils

+(NSMutableArray*)randomArray:(NSInteger)maxNum
            withMaxVal:(u_int32_t)maxVal{
    
    NSMutableArray* numbers = [NSMutableArray array];
    // fill the array with 100 random numbers;
    NSLog(@"Generating random numbers...");
    for (int i=0; i<maxNum; ++i) {
        // random number in [0,999999]
        NSInteger randomNumber = arc4random_uniform(maxVal);
        [numbers addObject:[NSNumber numberWithInteger:randomNumber]];
    }
    NSLog(@"Numbers generated.");
    
    return numbers;
}
@end
