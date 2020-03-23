#import "Blocks.h"

@implementation Blocks

NSArray *arrayFromBlockA;

- (BlockA)blockA {
    return [^(NSArray *inputArray){
        arrayFromBlockA = inputArray;
    }copy];
}

- (BlockB)blockB {
    return [^(Class class) {
        int findedInt = 0;
        if ([class isEqual: [NSNumber class]]) {
            for (NSInteger i = 0; i < arrayFromBlockA.count; i++) {
                if ([[arrayFromBlockA objectAtIndex:i] isKindOfClass:[NSNumber class]]) {
                    findedInt += [[arrayFromBlockA objectAtIndex:i] intValue];
                }
            }
            NSNumber *number = [NSNumber numberWithInt:findedInt];
            _blockC(number);
        }
        else if ([class isEqual: [NSString class]]) {
            NSString *str = [NSString new];
            for (NSInteger i = 0; i < arrayFromBlockA.count; i++) {
                if ([[arrayFromBlockA objectAtIndex:i] isKindOfClass:[NSString class]]) {
                    str = [str stringByAppendingString:[NSString stringWithFormat:@"%@",[arrayFromBlockA objectAtIndex:i]]];
                }
            }
            _blockC(str);
        } else if ([class isEqual: [NSDate class]]) {
            NSDate *date = [NSDate dateWithTimeIntervalSince1970:0];
            for (NSInteger i = 0; i < arrayFromBlockA.count; i++) {
                if ([[arrayFromBlockA objectAtIndex:i] isKindOfClass:[NSDate class]]) {
                    date = [date laterDate:[arrayFromBlockA objectAtIndex:i]];
                }
            }
            NSDateFormatter *dateFormatter = [NSDateFormatter new];
            dateFormatter.dateFormat = @"dd.MM.yyy";
            _blockC([dateFormatter stringFromDate:date]);
        }
    } copy];
}

@end

