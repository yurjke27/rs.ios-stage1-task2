#import "Dates.h"

@implementation Dates

- (NSString *)textForDay:(NSString *)day month:(NSString *)month year:(NSString *)year {
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"d M yyyy"];
    NSString *inputDateString = [NSString stringWithFormat:@"%@ %@ %@", day, month, year];
    NSDate *date = [dateFormatter dateFromString:inputDateString];
    NSLocale *locale = [[NSLocale alloc] initWithLocaleIdentifier:@"ru_RU"];
    [dateFormatter setLocale:locale];
    [dateFormatter setDateFormat:@"d MMMM, EEEE"];
    NSString* resultString = [dateFormatter stringFromDate:date];
    NSLog(@"%@", resultString);
    if (!resultString) {
        return @"Такого дня не существует";
    }
    return resultString;
}

@end
