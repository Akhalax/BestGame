//
//  BGHighscoresManager.h
//  BestGame
//
//  Created by student on 10.07.17.
//  Copyright © 2017 student. All rights reserved.
//

#import <Foundation/Foundation.h>

extern NSString * const kHighscoresPlace;
extern NSString * const kHighscoresDate;
extern NSString * const kHighscoresScores;

@interface BGHighscoresManager : NSObject

+ (instancetype)sharedInstance;

- (void)addRecord:(NSUInteger)scores;
- (NSArray*)allRecords;

@end
