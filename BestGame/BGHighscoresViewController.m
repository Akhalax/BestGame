//
//  BGHighscoresViewController.m
//  BestGame
//
//  Created by student on 10.07.17.
//  Copyright © 2017 student. All rights reserved.
//

#import "BGHighscoresViewController.h"
#import "BGHighscoresManager.h"
#import "BGHighscoresTableViewCell.h"

@interface BGHighscoresViewController () <UITableViewDataSource>

@end

@implementation BGHighscoresViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[[BGHighscoresManager sharedInstance] allRecords] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    BGHighscoresTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"BGHighscoresTableViewCellPrototype"];
    
    if (cell == nil) {
        cell = [[BGHighscoresTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"BGHighscoresTableViewCellPrototype"];
    }
    
    NSDictionary *record = [[[BGHighscoresManager sharedInstance] allRecords] objectAtIndex:indexPath.row];
    [cell setHighscoreRecord:record];
    
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
