//
//  MyTableVC.m
//  LeViewShadow
//
//  Created by rex on 10/22/20.
//  Copyright © 2020 leon. All rights reserved.
//

#import "MyTableVC.h"
#import "DSReservationCell.h"

static NSString *const reuseIdentifier = @"DSReservationCell";

@interface MyTableVC ()

@end

@implementation MyTableVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView registerClass:[DSReservationCell class] forCellReuseIdentifier:reuseIdentifier];
    self.tableView.rowHeight = 150;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
}

#pragma mark - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    DSReservationCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    return cell;
}




@end
