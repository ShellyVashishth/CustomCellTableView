//
//  CustomCell.m
//  CustomCellTableview
//
//  Created by admin on 17/07/13.
//  Copyright (c) 2013 admin. All rights reserved.
//

#import "CustomCell.h"

@implementation CustomCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier 
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

-(void)setValues:(NSString*)ColorValue  SizeValue:(NSString*)sizevalue Image:(UIImage*)imageValue  Image1:(UIImage*)imageValue1
{
    lblcolor.text=ColorValue;
    lblsize.text=sizevalue;
    imgView.image=[UIImage imageNamed:[NSString stringWithFormat:@"%@",imageValue]];
    imgView1.image=[UIImage imageNamed:[NSString stringWithFormat:@"%@",imageValue1]];
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
    // Configure the view for the selected state
}

@end
