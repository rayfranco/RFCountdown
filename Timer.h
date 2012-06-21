//
//  Timer.h
//  IntraMuros
//
//  Created by Franco Bouly on 21/06/12.
//  Copyright (c) 2012 Technogical. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@protocol TimeDelegate <NSObject>

- (void)timerDidUpdateToHour: (NSInteger)hours minutes: (NSInteger)minutes seconds: (NSInteger)seconds;
- (void)timerDidFinishCounting;

@end

@interface Timer : NSObject

@property (strong, nonatomic) NSDate *date;
@property (strong, nonatomic) NSTimer *timer;
@property id <TimeDelegate> delegate;

- (id)initToDate: (NSDate *)date;
- (void)updateTimer;

@end