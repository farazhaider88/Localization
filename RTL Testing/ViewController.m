//
//  ViewController.m
//  RTL Testing
//
//  Created by Faraz Haider on 5/26/17.
//  Copyright © 2017 Faraz Haider. All rights reserved.
//

#import "ViewController.h"
#import "NSString+Language.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *welcomeLbl;
@property (weak, nonatomic) IBOutlet UILabel *showTimeLbl;
@property (weak, nonatomic) IBOutlet UITextView *descriptionTxtView;
@property (weak, nonatomic) IBOutlet UIButton *changeLanguageBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.welcomeLbl.text = [@"welcome" localize];
    self.showTimeLbl.text = [@"show Time" localize];
    self.descriptionTxtView.text = [@"ramadan mubarak" localize];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}






@end
