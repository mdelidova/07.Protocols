//
//  MDDancer.m
//  Protocols
//
//  Created by Maryna Delidova on 3/25/18.
//  Copyright © 2018 Maryna Delidova. All rights reserved.
//

#import "MDDancer.h"

@implementation MDDancer

- (void) dance {
}

#pragma mark - MDPatient

- (BOOL) areYouOk {
    
    BOOL ok = arc4random() %2;
    
    NSLog(@"Is Dancer %@ ok? %@", self.name, ok ? @"YES" : @"NO");
    
    return arc4random() %2;
    
}

- (void) takePill {
    NSLog(@"Dancer %@ takes a pill.", self.name);
}

- (void) makeShot {
    
    NSLog(@"Dancer %@ makes a shot.", self.name);
    
}

@end
