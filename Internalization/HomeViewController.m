//
//  HomeViewController.m
//  Internalization
//
//  Created by appledeveloper on 01/04/19.
//  Copyright © 2019 Senthilkumar K. All rights reserved.
//

#import "HomeViewController.h"
#import "Language Manager/LanguageManager.h"


@interface HomeViewController ()

@end

@implementation HomeViewController
@synthesize languageLabel;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    languageLabel.text = [LanguageManager localizedStringForKey:@"How are you"];

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
