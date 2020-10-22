//
//  DSReservationCell.m
//  IHKApp
//
//  Created by rex on 10/22/20.
//  Copyright © 2020 www.ihk.cn. All rights reserved.
//

#import "DSReservationCell.h"


@interface DSReservationCell ()


@property (nonatomic, strong) UILabel *nameLabel;
@property (nonatomic, strong) UILabel *dateLabel;
@property (nonatomic, strong) UILabel *brokerLabel;
@property (nonatomic, strong) UILabel *statusLabel;

@end

@implementation DSReservationCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self setupAppearance];
    }
    return self;
}
- (void)setupAppearance {
    
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    self.backgroundColor = [UIColor clearColor];
    
    // 容器
    UIView *bgView = [UIView new];
    bgView.backgroundColor = [UIColor whiteColor];
    bgView.layer.masksToBounds = YES;
    bgView.layer.cornerRadius = 5;
    bgView.frame = CGRectMake(20, 10, [UIScreen mainScreen].bounds.size.width - 40, 130);
    [self.contentView addSubview:bgView];
    
    
    
    // 阴影
    CALayer *subLayer = [CALayer layer];
    CGRect fixframe = bgView.frame;
    subLayer.frame = fixframe;
    subLayer.cornerRadius = 5;
    subLayer.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.8].CGColor;
    subLayer.masksToBounds = NO;
    subLayer.shadowColor = [UIColor blackColor].CGColor;//shadowColor阴影颜色
    subLayer.shadowOffset = CGSizeMake(1,1);
    subLayer.shadowOpacity = 0.3;
    subLayer.shadowRadius = 5;
    [self.contentView.layer insertSublayer:subLayer below:bgView.layer];
    

    
}


@end

