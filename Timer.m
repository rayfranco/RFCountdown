//
//  Timer.m
//  IntraMuros
//
//  Created by Franco Bouly on 21/06/12.
//  Copyright (c) 2012 Technogical. All rights reserved.
//

#import "Timer.h"

@implementation Timer

// Timer
@synthesize date = _date;
@synthesize timer = _timer;
@synthesize delegate = _delegate;

- (id)initToDate:(NSDate *)date
{
    if (date) {
        _date = date;
    }
    return self;
}

- (void)updateTimer
{
    NSTimeInterval remainingSeconds = [_date timeIntervalSinceNow];
    
    if (!_timer) {
        if (!_date) {
            _date = [NSDate dateWithTimeIntervalSinceNow:20.0];
        }
        remainingSeconds = [_date timeIntervalSinceNow];
        _timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateTimer) userInfo:nil repeats:YES];
    }
    
    if (remainingSeconds <= 0) {
        [_delegate timerDidFinishCounting];
    }
    
    NSInteger hours = remainingSeconds / 3600;
    NSInteger remaining = ((NSInteger)remainingSeconds) % 3600;
    NSInteger minutes = remaining / 60;
    NSInteger seconds = remaining % 60;
    
    [_delegate timerDidUpdateToHour:hours minutes:minutes seconds:seconds];
}

@end
