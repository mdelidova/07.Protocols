//
//  MDStudent.h
//  Protocols
//
//  Created by Maryna Delidova on 3/25/18.
//  Copyright © 2018 Maryna Delidova. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MDPatient.h"

@interface MDStudent : NSObject

@property (strong, nonatomic) NSString* universityName;

@property (strong, nonatomic) NSString* name;

- (void) study;

@end
