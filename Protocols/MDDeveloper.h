//
//  MDDeveloper.h
//  Protocols
//
//  Created by Maryna Delidova on 3/25/18.
//  Copyright © 2018 Maryna Delidova. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "MDPatient.h"


@interface MDDeveloper : NSObject <MDPatient>

@property (assign, nonatomic) CGFloat experience;
 
@property (strong, nonatomic) NSString* name;

- (void) work;

@end
