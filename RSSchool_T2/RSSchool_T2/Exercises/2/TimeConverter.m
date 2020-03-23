#import "TimeConverter.h"

@implementation TimeConverter
// Complete the following function
- (NSString*)convertFromHours:(NSString*)hours minutes:(NSString*)minutes {
    int min = [minutes intValue];
    int hr = [hours intValue];
    NSMutableString *resultString = [NSMutableString new];
    
    NSDictionary *timeDictioanry = @{@"1" : @"one", @"2" : @"two", @"3" : @"three", @"4" : @"four", @"5" : @"five", @"6" : @"six", @"07" : @"seven", @"8" : @"eight", @"9" : @"nine", @"10" : @"ten", @"11" : @"eleven", @"12" : @"twelve", @"13" : @"thirteen", @"14" : @"fourteen", @"15" : @"quarter", @"30" : @"half", @"22" : @"twenty two", @"05" : @"five"};
    
    if (min == 0) {
        [resultString appendString:[timeDictioanry valueForKey:hours]];
        [resultString appendString:@" o' clock"];
    } else if (min < 31) {
        resultString = [NSMutableString stringWithString:[NSString stringWithFormat:@"%@ minutes past %@", [timeDictioanry valueForKey:minutes], [timeDictioanry valueForKey:hours]]];
        if (min == 15 || min == 30) {
            resultString = [NSMutableString stringWithString:[resultString stringByReplacingOccurrencesOfString:@"minutes " withString:@""]];
            return resultString;
        }
        return resultString;
    } else if (min > 31 && min <= 59) {
        hr++;
        NSNumber *difNum = [NSNumber numberWithInt:60 - min];
        NSString *difStr = [NSString stringWithFormat:@"%@", difNum];
        NSString *toHour = [NSString stringWithFormat:@"%d", hr ];
        resultString = [NSMutableString stringWithString:[NSString stringWithFormat:@"%@ minutes to %@", [timeDictioanry valueForKey:difStr], [timeDictioanry valueForKey:toHour]]];
        if (min == 45) {
            resultString = [NSMutableString stringWithString:[resultString stringByReplacingOccurrencesOfString:@"minutes " withString:@""]];
            return resultString;
        }
    }
    return resultString;
}
@end
