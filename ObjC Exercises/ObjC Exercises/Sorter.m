//
//  Sorter.m
//  ObjC Exercises
//
//  Created by Pablo Padilla on 5/11/14.
//
//

#import "Sorter.h"

@implementation Sorter

-(id)init{
    self = [super init];
    
    if (!self) {
        return nil;
    }
    
    return self;
}

-(BOOL)isSorted:(NSArray*)list{

    for (int i=0; i<[list count]-1; ++i) {
        if (list[i]>list[i+1]) {
            // exit on first unordered entry
            return NO;
        }
    }
    return YES;
}

-(void)sortInPlace:(NSMutableArray *)list{
    
}
@end
