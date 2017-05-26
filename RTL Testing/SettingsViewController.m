//
//  SettingsViewController.m
//  RTL Testing
//
//  Created by Faraz Haider on 5/27/17.
//  Copyright © 2017 Faraz Haider. All rights reserved.
//

#import "SettingsViewController.h"
#import "AppDelegate.h"
#import "NSBundle+Language.h"

@interface SettingsViewController ()

@end

@implementation SettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)englishButtonClicked:(id)sender {
    [[NSUserDefaults standardUserDefaults]setObject:@[@"en", @"ar"] forKey:@"AppleLanguages"];
    [[NSUserDefaults standardUserDefaults]synchronize];
    NSBundle *langBundle = [[NSBundle alloc]init];
    [langBundle setLanguage:@"en"];
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    UIStoryboard *story = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    appDelegate.window.rootViewController = story.instantiateInitialViewController;
}

- (IBAction)arabicButtonClicked:(id)sender {
    [[NSUserDefaults standardUserDefaults]setObject:@[@"ar", @"en"] forKey:@"AppleLanguages"];
    [[NSUserDefaults standardUserDefaults]synchronize];
    NSBundle *langBundle = [[NSBundle alloc]init];
    [langBundle setLanguage:@"fa"];
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    UIStoryboard *story = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    appDelegate.window.rootViewController = story.instantiateInitialViewController;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell  *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    return cell;
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
