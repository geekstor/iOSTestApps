//
//  XYZItem.m
//  RandomItems
//
//  Created by Valliappa Chockalingam on 7/2/14.
//  Copyright (c) 2014 Valliappa Chockalingam. All rights reserved.
//

#import "XYZItem.h"

@implementation XYZItem

+ (instancetype)randomItem
{
    NSArray* randomAdjectiveList = @[@"Fluffy", @"Rusty", @"Shiny"];
    
    NSArray* randomNounList = @[@"Bear", @"Spork", @"Mac"];
    
    NSInteger adjectiveIndex = arc4random() % [randomAdjectiveList count];
    
    NSInteger nounIndex = arc4random() % [randomNounList count];
    
    /* You could use array syntax instead of the  [... objectAtIndex:...] message */
    
    NSString* randomName = [NSString stringWithFormat:@"%@ %@", [randomAdjectiveList objectAtIndex:adjectiveIndex],
                           [randomNounList objectAtIndex:nounIndex]];
    
    
    int randomValue = arc4random() % 100;
    
    NSString *randomSerialNumber = [NSString stringWithFormat:@"%c%c%c%c%c",
                                     '0' + arc4random() % 10,
                                     'A' + arc4random() % 26,
                                     '0' + arc4random() % 10,
                                     'A' + arc4random() % 26,
                                     '0' + arc4random() % 10];
    
    
    XYZItem *newItem = [[self alloc] initWithItemName:randomName
                                       valueInDollars:randomValue serialNumber:randomSerialNumber];
                            
    
    return newItem;
}

- (instancetype)initWithItemName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)sNumber
{
    self = [super init];
    
    if(self)
    {
        self.itemName = name;
        self.serialNumber = sNumber;
        self.valueInDollars = value;
        _dateCreated = [[NSDate alloc] init];
    }
    
    return self;
}

// The Silver Challenge
- (instancetype)initWithItemName:(NSString *)name serialNumber:(NSString *)sNumber
{
    return [self initWithItemName:name valueInDollars:0 serialNumber:sNumber];
}

- (instancetype)initWithItemName:(NSString *)name
{
    return [self initWithItemName:name valueInDollars:0 serialNumber:@""];
}

- (instancetype)init
{
    return [self initWithItemName:@"Item"];
}

// - (void)setItemName:(NSString *)str
// {
//      _itemName = str;
// }

// - (NSString *)itemName
// {
//    return _itemName;
//}

// - (void)setSerialNumber:(NSString *)str
// {
//    _serialNumber = str;
// }

// -(NSString *)serialNumber
// {
//    return _serialNumber;
// }

// - (void)setValueInDollars:(int)v
// {
//    _valueInDollars = v;
// }

// - (int)valueInDollars
// {
//    return _valueInDollars;
// }

// - (NSDate *)dateCreated
// {
//     return _dateCreated;
// }

- (NSString *)description
{
    NSString* descriptionString = [[NSString alloc] initWithFormat:@"%@ (%@): Worth %d, recorded on %@", self.itemName, self.serialNumber, self.valueInDollars, self.dateCreated];
    
    return descriptionString;
}

// Checking how dealloc works (ARC)
// - (void)dealloc
// {
//    NSLog(@"Destroyed: %@", [self description]);
// }

// Method Implementations to demonstrate a Strong Reference Cycle
 - (void)setContainedItem:(XYZItem *)item
 {
    _containedItem = item;

    item.container = self;

// This is where the "Loop" occurs, when the self's _containedItem is set to the argument item,
// the item's _container is then set to self, causing a loop (if both _containedItem and _conatainer are strong references)
 }

// - (XYZItem *)containedItem
// {
//    return _containedItem;
// }

// - (void)setContainer:(XYZItem *)item
// {
//    _container = item;
// }

// - (XYZItem *)container
// {
//    return _container;
// }

@end
