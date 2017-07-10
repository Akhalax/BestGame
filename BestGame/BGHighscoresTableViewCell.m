//
//  BGHighscoresTableViewCell.m
//  BestGame
//
//  Created by student on 10.07.17.
//  Copyright © 2017 student. All rights reserved.
//

#import "BGHighscoresTableViewCell.h"
#import "BGHighscoresManager.h"

@interface BGHighscoresTableViewCell () <UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UILabel *placeLabel;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
@property (weak, nonatomic) IBOutlet UILabel *scoresLabel;


@end

@implementation BGHighscoresTableViewCell


- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setHighscoreRecord:(NSDictionary*)record{
    self.placeLabel.text = [record objectForKey:kHighscoresPlace];
    self.dateLabel.text = [record objectForKey:kHighscoresDate];
    self.scoresLabel.text = [record objectForKey:kHighscoresScores];
}

@end
