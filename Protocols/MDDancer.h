//
//  MDDancer.h
//  Protocols
//
//  Created by Maryna Delidova on 3/25/18.
//  Copyright © 2018 Maryna Delidova. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MDPatient.h"

@interface MDDancer : NSObject

@property (strong, nonatomic) NSString* favouriteDance;

@property (strong, nonatomic) NSString* name;

- (void) dance;

@end
