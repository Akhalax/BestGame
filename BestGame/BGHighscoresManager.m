//
//  BGHighscoresManager.m
//  BestGame
//
//  Created by student on 10.07.17.
//  Copyright © 2017 student. All rights reserved.
//

#import "BGHighscoresManager.h"

#define USE_DUMMY_RECORDS

NSString * const kHighscoresPlace = @"kHighScoresPlace";
NSString * const kHighscoresDate = @"kHighScoresDate";
NSString * const kHighscoresScores = @"kHighScoresScores";

static BGHighscoresManager *sharedInstance;

@implementation BGHighscoresManager

+ (instancetype)sharedInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [BGHighscoresManager new];
    });
    return sharedInstance;
}

- (void)addRecord:(NSUInteger)scores {
    //TBD
}

- (NSArray*)allRecords {
    
    NSArray *result = [NSArray new];
    
#ifdef USE_DUMMY_RECORDS
    result = @[
               @{
                   kHighscoresPlace   : @"1",
                   kHighscoresDate    : @"01.02.2017",
                   kHighscoresScores  : @"984837218"
                   },
               @{
                   kHighscoresPlace   : @"2",
                   kHighscoresDate    : @"23.01.2017",
                   kHighscoresScores  : @"984837218"
                   },
               @{
                   kHighscoresPlace   : @"3",
                   kHighscoresDate    : @"11.03.2017",
                   kHighscoresScores  : @"984837218"
                   },
               @{
                   kHighscoresPlace   : @"4",
                   kHighscoresDate    : @"02.02.2017",
                   kHighscoresScores  : @"984837218"
                   },@{
                   kHighscoresPlace   : @"5",
                   kHighscoresDate    : @"09.05.2017",
                   kHighscoresScores  : @"984837218"
                   },
               @{
                   kHighscoresPlace   : @"6",
                   kHighscoresDate    : @"13.12.2016",
                   kHighscoresScores  : @"984837218"
                   }
               ];
#endif //USE_DUMMY_RECORDS
    
    return result;
}

@end
