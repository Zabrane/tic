
%% Days between Jan 1, 0001 (beginning of the Gregorian calendar) and Jan 1,
%% 1970 (Unix epoch) in seconds.  62167219200 = calendar:datetime_to_gregorian_seconds({{1970,1,1},{0,0,0}}).

-define(TIC_GREGORIAN_SECONDS_TO_UNIX_EPOCH, 62167219200).

-type millisecond()         :: 0..999.

-record(iso8601, {
    year :: calendar:year1970(),
    month :: calendar:month(),
    day :: calendar:day(),
    hour :: calendar:hour(),
    min :: calendar:minute(),
    sec :: calendar:second(),
    ms :: millisecond(),
    tz_offset :: integer() | undefined
}).

-type epoch_seconds()       :: non_neg_integer().
-type epoch_milliseconds()  :: non_neg_integer().
-type epoch_microseconds()  :: non_neg_integer().
-type datetime_ms()         :: {calendar:datetime1970(), millisecond()}.
-type datetime()            :: datetime_ms() | calendar:datetime1970().
-type iso8601()             :: #iso8601{}.