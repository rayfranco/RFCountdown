RFCountdown
===========

	// Set timer from a string
    NSString *dateString = [responseObject objectForKey:@"date"];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd hh:mm:ss"];
    NSDate *timerDate = [dateFormatter dateFromString:dateString];

    Timer *timer = [[Timer alloc] initToDate:timerDate];
    [timer setDelegate:self];
    [timer updateTimer];

    // Set timer for 20 seconds
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:20];
    
    Timer *timer = [[Timer alloc] initToDate:timerDate];
    [timer setDelegate:self];
    [timer updateTimer];