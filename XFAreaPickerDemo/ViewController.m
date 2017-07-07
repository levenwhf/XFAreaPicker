//
//  ViewController.m
//  XFAreaPickerDemo
//
//  Created by weihongfang on 2017/7/7.
//  Copyright © 2017年 Leven Wei. All rights reserved.
//

#import "ViewController.h"

#import "XFAreaPickerView/XFAreaPickerView.h"

@interface ViewController () <XFAreaPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UITextField *txt;
@property (weak, nonatomic) IBOutlet UIButton *btn;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)click:(id)sender
{
    XFAreaPickerView *areaPicker = [[XFAreaPickerView alloc]initWithDelegate:self];
    areaPicker.isHidden = NO;
}

- (void)areaPickerView:(XFAreaPickerView *)areaPickerView didSelectArea:(NSString *)area
{
    _txt.text = area;
}

@end
