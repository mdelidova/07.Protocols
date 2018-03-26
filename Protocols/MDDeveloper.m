//
//  MDDeveloper.m
//  Protocols
//
//  Created by Maryna Delidova on 3/25/18.
//  Copyright © 2018 Maryna Delidova. All rights reserved.
//

#import "MDDeveloper.h"

@implementation MDDeveloper

- (void) work {
}

#pragma mark - MDPatient

- (BOOL) areYouOk {
    
    BOOL ok = arc4random() %2;
    
    NSLog(@"Is Developer %@ ok? %@", self.name, ok ? @"YES" : @"NO");
    
    return arc4random() %2;

}

- (void) takePill {
    NSLog(@"Developer %@ takes a pill.", self.name);
}

- (void) makeShot {
  
    NSLog(@"Developer %@ makes a shot.", self.name);
    
}

- (NSString*) howIsYourJob {
    return @"My job is awesome!";
    
}

@end
