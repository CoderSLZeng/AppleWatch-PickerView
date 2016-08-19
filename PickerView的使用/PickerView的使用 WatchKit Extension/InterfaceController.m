//
//  InterfaceController.m
//  PickerView的使用 WatchKit Extension
//
//  Created by Anthony on 16/8/19.
//  Copyright © 2016年 SLZeng. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfacePicker *listPicker;
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfacePicker *stackPicker;
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfacePicker *sequencePicker;

@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    // Configure interface objects here.
    
    WKPickerItem *item1 = [[WKPickerItem alloc] init];
    item1.title = @"第1个";
    item1.contentImage = [WKImage imageWithImage:[UIImage imageNamed:@"ad_00"]];
    item1.caption = @"薯片真好吃";
    
    WKPickerItem *item2 = [[WKPickerItem alloc] init];
    item2.title = @"第2个";
    item2.contentImage = [WKImage imageWithImage:[UIImage imageNamed:@"ad_01"]];
    item2.caption = @"饼干真好吃";
    
    WKPickerItem *item3 = [[WKPickerItem alloc] init];
    item3.title =  @"第3个";
    item3.contentImage = [WKImage imageWithImage:[UIImage imageNamed:@"ad_02"]];
    item3.caption = @"水疗";
    
    WKPickerItem *item4 = [[WKPickerItem alloc] init];
    item4.title = @"第4个";
    item4.contentImage = [WKImage imageWithImage:[UIImage imageNamed:@"ad_03"]];
    item4.caption = @"汤真美味";
    
    WKPickerItem *item5 = [[WKPickerItem alloc] init];
    item5.title = @"第5个";
    item5.contentImage = [WKImage imageWithImage:[UIImage imageNamed:@"ad_04"]];
    item5.caption = @"餐厅很干净";
    
    [self.listPicker setItems:@[item1, item2, item3, item4, item5]];
    [self.stackPicker setItems:@[item1, item2, item3, item4, item5]];
    [self.sequencePicker setItems:@[item1, item2, item3, item4, item5]];

}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



