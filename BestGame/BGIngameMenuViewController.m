//
//  BGIngameMenuViewController.m
//  BestGame
//
//  Created by student on 07.07.17.
//  Copyright © 2017 student. All rights reserved.
//

#import "BGIngameMenuViewController.h"

@interface BGIngameMenuViewController ()

- (void)goToMainMenu;
- (void)dismissSelf;

@end

@implementation BGIngameMenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

#pragma mark - Private

- (void)goToMainMenu {
    [(UINavigationController*)self.presentingViewController popViewControllerAnimated:YES];
}

- (void)dismissSelf{
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark - Actions

- (IBAction)didPressedResumeButton:(id)sender {
    [self dismissSelf];
}

- (IBAction)didPressedQuitButton:(id)sender {
    [self dismissSelf];
    [self goToMainMenu];
}


@end
