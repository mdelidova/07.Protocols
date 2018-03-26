//
//  MDStudent.m
//  Protocols
//
//  Created by Maryna Delidova on 3/25/18.
//  Copyright © 2018 Maryna Delidova. All rights reserved.
//

#import "MDStudent.h"

@implementation MDStudent

- (void) study {
} 

#pragma mark - MDPatient

- (BOOL) areYouOk {
    
    BOOL ok = arc4random() %2;
    
    NSLog(@"Is Student %@ ok? %@", self.name, ok ? @"YES" : @"NO");
    
    return arc4random() %2;
    
}

- (void) takePill {
    NSLog(@"Student %@ takes a pill.", self.name);
}

- (void) makeShot {
    
    NSLog(@"Student %@ makes a shot.", self.name);
    
}

- (NSString*) howIsYourFamily {
    return @"My family is doing well!";
    
}

@end
