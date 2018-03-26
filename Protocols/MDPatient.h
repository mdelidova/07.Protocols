//
//  MDPatient.h
//  Protocols
//
//  Created by Maryna Delidova on 3/26/18.
//  Copyright © 2018 Maryna Delidova. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MDPatient <NSObject>

@property (strong, nonatomic) NSString* name;

@required
- (BOOL) areYouOk;
- (void) takePill;
- (void) makeShot;

@optional
- (NSString*) howIsYourFamily;
- (NSString*) howIsYourJob;



@end
