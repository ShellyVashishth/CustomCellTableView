//
//  ViewController.m
//  CustomCellTableview
//
//  Created by admin on 17/07/13.
//  Copyright (c) 2013 admin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    array=[NSArray arrayWithObjects:@"Red",@"Green",@"Blue", nil];
    Array1=[NSArray arrayWithObjects:@"15",@"16",@"17", nil];
    Imagearray=[NSArray arrayWithObjects:@"images22.jpg",@"images23.jpg",@"images25.jpg",@"images23.jpg",nil];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView;
{
    return  1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
        return [array count] ;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
        static NSString *CellIdentifier = @"CustomCell";
        CustomCell *cell = (CustomCell *) [tblview dequeueReusableCellWithIdentifier:CellIdentifier];
    BOOL evencount=0;
    BOOL oddcount=0;
        if (cell == nil) {
            //for odd cell
            if(indexPath.row%2!=0)
            {
                if(oddcount==0)
                {
            NSArray* topLevelObjects = [[NSBundle mainBundle] loadNibNamed:@"CustomCell" owner:self options:nil];
            for (id currentObject in topLevelObjects) {
                if ([currentObject isKindOfClass:[UITableViewCell class]]) {
                    cell = (CustomCell *)currentObject;
//                    cell.imageView.image=[UIImage imageNamed:@"images23.jpg"];
                    [cell setValues:[array objectAtIndex:indexPath.row] SizeValue:[Array1 objectAtIndex:indexPath.row] Image:[Imagearray objectAtIndex:indexPath.row*oddcount] Image1:[Imagearray objectAtIndex:indexPath.row*oddcount+1]];
                }
                else
                {
                    [cell setValues:[array objectAtIndex:indexPath.row] SizeValue:[Array1 objectAtIndex:indexPath.row] Image:[Imagearray objectAtIndex:indexPath.row*oddcount] Image1:[Imagearray objectAtIndex:indexPath.row*oddcount+1]]; 
                }
//[cell setValues:  SizeValue:(NSString*)sizevalue Image:(UIImage*)imageValue  Image1:(UIImage*)imageValue1];
            break;
                }
            }
        }
         //For even cell
            else
            {
                
            }
        }
    // Configure the cell.
    return cell;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
