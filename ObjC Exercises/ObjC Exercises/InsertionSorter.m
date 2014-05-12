//
//  InsertionSorter.m
//  ObjC Exercises
//
//  Created by Pablo Padilla on 5/11/14.
//
//

#import "InsertionSorter.h"

@implementation InsertionSorter

-(void)sortInPlace:(NSMutableArray *)list{
    
    // loop through the list from the second element
    for (int i=1; i<[list count]; ++i) {
        // save the value of the current key
        NSNumber* key = list[i];

        // loop through the left partition of the list: [0,i-1]
        // from right to left to find where to insert the key
        NSInteger j= i-1;
        while (j>=0 && key<list[j]) {
            // move current element to the right
            list[j+1] = list[j];
            // move the next slot to the left
            j--;
        }
        // move the key to the right of the first element found lesser than itself
        list[j+1]=key;
    }
    return;
}
@end
