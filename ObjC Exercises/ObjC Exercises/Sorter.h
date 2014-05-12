//
//  Sorter.h
//  ObjC Exercises
//
//  Created by Pablo Padilla on 5/11/14.
//
//

#import <Foundation/Foundation.h>

@protocol Sorting <NSObject>

-(void)sortInPlace:(NSMutableArray*)list;

@end

@interface Sorter : NSObject

-(BOOL)isSorted:(NSArray*)list;

@end
