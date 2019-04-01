//
//  ViewController.m
//  Internalization
//
//  Created by appledeveloper on 01/04/19.
//  Copyright © 2019 Senthilkumar K. All rights reserved.
//

#import "ViewController.h"
#import "Language Manager/LanguageManager.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize englishButton,spanishButton;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    

}


- (void) viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    
    // English Button Title Change
    englishButton.titleLabel.text = [LanguageManager localizedStringForKey:@"English"];
    
    
    // Spanish Button Title Change
    spanishButton.titleLabel.text = [LanguageManager localizedStringForKey:@"Spanish"];

    
}

#pragma mark - English Button Action
- (IBAction)englishAction:(id)sender {
    
    [[NSUserDefaults standardUserDefaults] setObject:[NSArray arrayWithObjects:@"en", nil] forKey:@"AppleLanguages"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
}

#pragma mark - Spanish Button Action
- (IBAction)spanishAction:(id)sender {
    
    [[NSUserDefaults standardUserDefaults] setObject:[NSArray arrayWithObjects:@"es", nil] forKey:@"AppleLanguages"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    
}


@end
