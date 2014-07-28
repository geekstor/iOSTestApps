//
//  XYZContainer.h
//  RandomItems
//
//  Created by Valliappa Chockalingam on 7/4/14.
//  Copyright (c) 2014 Valliappa Chockalingam. All rights reserved.
//

// Gold Challenge - “Create a subclass of XYZItem named XYZContainer. An instance of XYZContainer should have an array of subitems that contains instances of XYZItem. Printing the description of a XYZContainer object should show you the name of the container, its value in dollars (a sum of all items in the container plus the value of the container itself), and a list of every instance of XYZItem it contains. A properly-written XYZContainer class can contain instances of XYZContainer. It can also report back its full value and every contained item properly.”

#import "XYZItem.h"

@interface XYZContainer : XYZItem
{
    NSMutableArray* _itemArray;
}

// Designated init.
- (instancetype)initWithItemName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString*)sNumber;
- (instancetype)initWithItemName:(NSString *)name;

// The Silver Challenge
- (instancetype)initWithItemName:(NSString *)name serialNumber:(NSString *)sNumber;

- (NSString*) description;

- (void) addObjectToContainer:(XYZItem *)item;

- (void) removeObjectAtIndex:(int)i;

@end
