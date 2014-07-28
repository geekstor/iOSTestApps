//
//  XYZContainer.m
//  RandomItems
//
//  Created by Valliappa Chockalingam on 7/4/14.
//  Copyright (c) 2014 Valliappa Chockalingam. All rights reserved.
//

// Gold Challenge - “Create a subclass of XYZItem named XYZContainer. An instance of XYZContainer should have an array of subitems that contains instances of XYZItem. Printing the description of a XYZContainer object should show you the name of the container, its value in dollars (a sum of all items in the container plus the value of the container itself), and a list of every instance of XYZItem it contains. A properly-written XYZContainer class can contain instances of XYZContainer. It can also report back its full value and every contained item properly.”

#import "XYZContainer.h"

@implementation XYZContainer

// Designated init.
- (instancetype)initWithItemName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString*)sNumber
{
    self = [super initWithItemName:name valueInDollars:value serialNumber:sNumber];
    
    if(self)
    {
        _itemArray = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (instancetype)initWithItemName:(NSString *)name
{
    self = [super initWithItemName:name];
    
    if(self)
    {
        _itemArray = [[NSMutableArray alloc] init];
    }
    
    return self;
}

// The Silver Challenge
- (instancetype)initWithItemName:(NSString *)name serialNumber:(NSString *)sNumber
{
    self = [super initWithItemName:(NSString *)name serialNumber:(NSString *)sNumber];
    
    if(self)
    {
        _itemArray = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (NSString*) description
{
    
    return [[NSString alloc] initWithFormat:@"The container's name: %@, and it's value is: %lu", self.itemName, [self totalValueOfContents]];
}

- (void) addObjectToContainer:(XYZItem *)item
{
    [_itemArray addObject:item];
    NSLog(@"Item added: %@", [item description]);
}

- (void) removeObjectAtIndex:(int)i
{
    [_itemArray removeObjectAtIndex:i];
    NSLog(@"Removing item: %@", [[_itemArray objectAtIndex:i] description]);
}
            
- (NSUInteger) totalValueOfContents
{
    NSUInteger i = 0;
    for(XYZItem* item in _itemArray)
    {
        i = i + [item valueInDollars];
    }
    
    i = self.valueInDollars + i;
    
    return i;
}
            
@end
