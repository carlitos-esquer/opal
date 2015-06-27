opal_filter "Time" do
  fails "Time#getgm returns a new time which is the utc representation of time"
  fails "Time#getlocal raises ArgumentError if the String argument is not of the form (+|-)HH:MM"
  fails "Time#getlocal raises ArgumentError if the argument represents a value greater than or equal to 86400 seconds"
  fails "Time#getlocal raises ArgumentError if the argument represents a value less than or equal to -86400 seconds"
  fails "Time#getlocal returns a Time with UTC offset specified as an Integer number of seconds"
  fails "Time#getlocal returns a Time with a UTC offset of the specified number of Rational seconds"
  fails "Time#getlocal returns a Time with a UTC offset specified as +HH:MM"
  fails "Time#getlocal returns a Time with a UTC offset specified as -HH:MM"
  fails "Time#getlocal returns a new time which is the local representation of time"
  fails "Time#getlocal returns a new time with the correct utc_offset according to the set timezone"
  fails "Time#getlocal with an argument that responds to #to_int coerces using #to_int"
  fails "Time#getlocal with an argument that responds to #to_r coerces using #to_r"
  fails "Time#getlocal with an argument that responds to #to_str coerces using #to_str"
  fails "Time#getutc returns a new time which is the utc representation of time"
  fails "Time#gmt? returns true if time represents a time in UTC (GMT)"
  fails "Time#gmt_offset given negative offset returns a negative offset"
  fails "Time#gmt_offset given positive offset returns a positive offset"
  fails "Time#gmt_offset returns offset as Rational"
  fails "Time#gmt_offset returns the correct offset for Hawaii around daylight savings time change"
  fails "Time#gmt_offset returns the correct offset for New Zealand around daylight savings time change"
  fails "Time#gmt_offset returns the correct offset for US Eastern time zone around daylight savings time change"
  fails "Time#gmt_offset returns the offset in seconds between the timezone of time and UTC"
  fails "Time#gmtime returns the utc representation of time"
  fails "Time#gmtoff given negative offset returns a negative offset"
  fails "Time#gmtoff given positive offset returns a positive offset"
  fails "Time#gmtoff returns offset as Rational"
  fails "Time#gmtoff returns the correct offset for Hawaii around daylight savings time change"
  fails "Time#gmtoff returns the correct offset for New Zealand around daylight savings time change"
  fails "Time#gmtoff returns the correct offset for US Eastern time zone around daylight savings time change"
  fails "Time#gmtoff returns the offset in seconds between the timezone of time and UTC"
  fails "Time#inspect formats the fixed offset time following the pattern 'yyyy-MM-dd HH:mm:ss +/-HHMM'"
  fails "Time#inspect formats the local time following the pattern 'yyyy-MM-dd HH:mm:ss Z'"
  fails "Time#localtime changes the timezone according to the set one"
  fails "Time#localtime converts self to local time, modifying the receiver"
  fails "Time#localtime converts time to the UTC offset specified as an Integer number of seconds"
  fails "Time#localtime raises ArgumentError if the String argument is not of the form (+|-)HH:MM"
  fails "Time#localtime raises ArgumentError if the argument represents a value greater than or equal to 86400 seconds"
  fails "Time#localtime raises ArgumentError if the argument represents a value less than or equal to -86400 seconds"
  fails "Time#localtime returns a Time with a UTC offset of the specified number of Rational seconds"
  fails "Time#localtime returns a Time with a UTC offset specified as +HH:MM"
  fails "Time#localtime returns a Time with a UTC offset specified as -HH:MM"
  fails "Time#localtime returns self"
  fails "Time#localtime with an argument that responds to #to_int coerces using #to_int"
  fails "Time#localtime with an argument that responds to #to_r coerces using #to_r"
  fails "Time#localtime with an argument that responds to #to_str coerces using #to_str"
  fails "Time#nsec returns 0 for a Time constructed with a whole number of seconds"
  fails "Time#nsec returns the nanoseconds part of a Time constructed with a Float number of seconds"
  fails "Time#nsec returns the nanoseconds part of a Time constructed with a Rational number of seconds"
  fails "Time#nsec returns the nanoseconds part of a Time constructed with an Float number of microseconds"
  fails "Time#nsec returns the nanoseconds part of a Time constructed with an Integer number of microseconds"
  fails "Time#nsec returns the nanoseconds part of a Time constructed with an Rational number of microseconds"
  fails "Time#round copies own timezone to the returning value"
  fails "Time#round defaults to rounding to 0 places"
  fails "Time#round returns an instance of Time, even if #round is called on a subclass"
  fails "Time#round rounds to 0 decimal places with an explicit argument"
  fails "Time#round rounds to 7 decimal places with an explicit argument"
  fails "Time#strftime rounds an offset to the nearest second when formatting with %z"
  fails "Time#strftime should be able to print the commercial year with leading zeroes"
  fails "Time#strftime should be able to print the commercial year with only two digits"
  fails "Time#strftime should be able to print the julian day with leading zeroes"
  fails "Time#strftime should be able to show the commercial week day"
  fails "Time#strftime should be able to show the commercial week"
  fails "Time#strftime should be able to show the number of seconds since the unix epoch"
  fails "Time#strftime should be able to show the timezone if available"
  fails "Time#strftime should be able to show the timezone of the date with a : separator"
  fails "Time#strftime should be able to show the week number with the week starting on Sunday (%U) and Monday (%W)"
  fails "Time#strftime with %N formats the microseconds of the second with %6N"
  fails "Time#strftime with %N formats the milliseconds of the second with %3N"
  fails "Time#strftime with %N formats the nanoseconds of the second with %9N"
  fails "Time#strftime with %N formats the nanoseconds of the second with %N"
  fails "Time#strftime with %N formats the picoseconds of the second with %12N"
  fails "Time#subsec returns 0 as a Fixnum for a Time with a whole number of seconds"
  fails "Time#subsec returns the fractional seconds as a Rational for a Time constructed with a Float number of seconds"
  fails "Time#subsec returns the fractional seconds as a Rational for a Time constructed with a Rational number of seconds"
  fails "Time#subsec returns the fractional seconds as a Rational for a Time constructed with an Float number of microseconds"
  fails "Time#subsec returns the fractional seconds as a Rational for a Time constructed with an Integer number of microseconds"
  fails "Time#subsec returns the fractional seconds as a Rational for a Time constructed with an Rational number of microseconds"
  fails "Time#to_f returns the float number of seconds + usecs since the epoch"
  fails "Time#to_r returns a Rational even for a whole number of seconds"
  fails "Time#to_r returns the a Rational representing seconds and subseconds since the epoch"
  fails "Time#to_s formats the fixed offset time following the pattern 'yyyy-MM-dd HH:mm:ss +/-HHMM'"
  fails "Time#to_s formats the local time following the pattern 'yyyy-MM-dd HH:mm:ss Z'"
  fails "Time#tv_sec returns the value of time as an integer number of seconds since epoch"
  fails "Time#usec returns 0 for a Time constructed with an Rational number of microseconds < 1"
  fails "Time#usec returns the microseconds for time created by Time#local"
  fails "Time#usec returns the microseconds part of a Time constructed with a Rational number of seconds"
  fails "Time#usec returns the microseconds part of a Time constructed with an Float number of microseconds > 1"
  fails "Time#usec returns the microseconds part of a Time constructed with an Integer number of microseconds"
  fails "Time#usec returns the microseconds part of a Time constructed with an Rational number of microseconds > 1"
  fails "Time#utc returns the utc representation of time"
  fails "Time#utc_offset given negative offset returns a negative offset"
  fails "Time#utc_offset given positive offset returns a positive offset"
  fails "Time#utc_offset returns offset as Rational"
  fails "Time#utc_offset returns the correct offset for Hawaii around daylight savings time change"
  fails "Time#utc_offset returns the correct offset for New Zealand around daylight savings time change"
  fails "Time#utc_offset returns the correct offset for US Eastern time zone around daylight savings time change"
  fails "Time#utc_offset returns the offset in seconds between the timezone of time and UTC"
  fails "Time#yday returns an integer representing the day of the year, 1..366"
  fails "Time#zone Encoding.default_internal is set doesn't raise errors for a Time with a fixed offset"
  fails "Time#zone Encoding.default_internal is set doesn't raise errors for a Time with a fixed offset"
  fails "Time#zone Encoding.default_internal is set returns the string with the default internal encoding"
  fails "Time#zone Encoding.default_internal is set returns the string with the default internal encoding"
  fails "Time#zone returns UTC when called on a UTC time"
  fails "Time#zone returns nil for a Time with a fixed offset"
  fails "Time#zone returns nil when getting the local time with a fixed offset"
  fails "Time#zone returns the correct timezone for a local time"
  fails "Time#zone returns the time zone used for time"
  fails "Time._load is a private method"
  fails "Time._load loads MRI's marshaled time format"
  fails "Time._load loads a time object in the new format"
  fails "Time._load loads a time object in the old UNIX timestamp based format"
  fails "Time.gm accepts nil month, day, hour, minute, and second"
  fails "Time.gm accepts various year ranges"
  fails "Time.gm coerces the day with #to_int"
  fails "Time.gm coerces the hour with #to_int"
  fails "Time.gm coerces the minute with #to_int"
  fails "Time.gm coerces the month with #to_int"
  fails "Time.gm coerces the month with #to_str"
  fails "Time.gm coerces the second with #to_int"
  fails "Time.gm coerces the year with #to_int"
  fails "Time.gm creates a time based on given C-style gmtime arguments, interpreted as UTC (GMT)"
  fails "Time.gm creates a time based on given values, interpreted as UTC (GMT)"
  fails "Time.gm handles a String month given as a short month name"
  fails "Time.gm handles float arguments"
  fails "Time.gm handles fractional microseconds as a Float"
  fails "Time.gm handles fractional microseconds as a Rational"
  fails "Time.gm handles fractional seconds as a Float"
  fails "Time.gm handles fractional seconds as a Rational"
  fails "Time.gm handles microseconds"
  fails "Time.gm handles string arguments"
  fails "Time.gm handles years from 0 as such"
  fails "Time.gm ignores fractional seconds if a passed fractional number of microseconds"
  fails "Time.gm ignores fractional seconds if a passed whole number of microseconds"
  fails "Time.gm raises ArgumentError when given 11 arguments"
  fails "Time.gm raises ArgumentError when given 9 arguments"
  fails "Time.gm returns subclass instances"
  fails "Time.local coerces the month with #to_str"
  fails "Time.local creates a time based on given C-style gmtime arguments, interpreted in the local time zone"
  fails "Time.local creates a time based on given values, interpreted in the local time zone"
  fails "Time.local creates the correct time just after dst change"
  fails "Time.local creates the correct time just before dst change"
  fails "Time.local handles a String month given as a short month name"
  fails "Time.local handles fractional microseconds as a Float"
  fails "Time.local handles fractional microseconds as a Rational"
  fails "Time.local handles fractional seconds as a Float"
  fails "Time.local handles fractional seconds as a Rational"
  fails "Time.local handles microseconds"
  fails "Time.local handles years from 0 as such"
  fails "Time.local ignores fractional seconds if a passed fractional number of microseconds"
  fails "Time.local ignores fractional seconds if a passed whole number of microseconds"
  fails "Time.local respects rare old timezones"
  fails "Time.local returns subclass instances"
  fails "Time.local timezone changes correctly adjusts the timezone change to 'CEST' on 'Europe/Amsterdam'"
  fails "Time.local timezone changes correctly adjusts the timezone change to 'EET' on 'Europe/Istanbul'"
  fails "Time.mktime coerces the month with #to_str"
  fails "Time.mktime creates a time based on given C-style gmtime arguments, interpreted in the local time zone"
  fails "Time.mktime creates a time based on given values, interpreted in the local time zone"
  fails "Time.mktime creates the correct time just after dst change"
  fails "Time.mktime creates the correct time just before dst change"
  fails "Time.mktime handles a String month given as a short month name"
  fails "Time.mktime handles fractional seconds as a Float"
  fails "Time.mktime handles fractional seconds as a Rational"
  fails "Time.mktime handles years from 0 as such"
  fails "Time.mktime respects rare old timezones"
  fails "Time.mktime returns subclass instances"
  fails "Time.mktime timezone changes correctly adjusts the timezone change to 'CEST' on 'Europe/Amsterdam'"
  fails "Time.mktime timezone changes correctly adjusts the timezone change to 'EET' on 'Europe/Istanbul'"
  fails "Time.new accepts nil month, day, hour, minute, and second"
  fails "Time.new coerces the day with #to_int"
  fails "Time.new coerces the hour with #to_int"
  fails "Time.new coerces the minute with #to_int"
  fails "Time.new coerces the month with #to_int"
  fails "Time.new coerces the month with #to_str"
  fails "Time.new coerces the second with #to_int"
  fails "Time.new coerces the year with #to_int"
  fails "Time.new creates a subclass instance if called on a subclass"
  fails "Time.new creates a time based on given values, interpreted in the local time zone"
  fails "Time.new handles a String month given as a short month name"
  fails "Time.new handles fractional seconds as a Float"
  fails "Time.new handles fractional seconds as a Rational"
  fails "Time.new handles years from 0 as such"
  fails "Time.new raises ArgumentError when given 11 arguments"
  fails "Time.new raises ArgumentError when given 9 arguments"
  fails "Time.new raises a TypeError if the year is nil"
  fails "Time.new raises an ArgumentError for out of range day"
  fails "Time.new raises an ArgumentError for out of range hour"
  fails "Time.new raises an ArgumentError for out of range minute"
  fails "Time.new raises an ArgumentError for out of range month"
  fails "Time.new raises an ArgumentError for out of range second"
  fails "Time.new respects rare old timezones"
  fails "Time.new returns subclass instances"
  fails "Time.new timezone changes correctly adjusts the timezone change to 'CEST' on 'Europe/Amsterdam'"
  fails "Time.new timezone changes correctly adjusts the timezone change to 'EET' on 'Europe/Istanbul'"
  fails "Time.new with a utc_offset argument raises ArgumentError if the String argument is not of the form (+|-)HH:MM"
  fails "Time.new with a utc_offset argument raises ArgumentError if the argument represents a value greater than or equal to 86400 seconds"
  fails "Time.new with a utc_offset argument raises ArgumentError if the argument represents a value less than or equal to -86400 seconds"
  fails "Time.new with a utc_offset argument raises ArgumentError if the hour value is greater than 23"
  fails "Time.new with a utc_offset argument returns a Time with a UTC offset of the specified number of Integer seconds"
  fails "Time.new with a utc_offset argument returns a Time with a UTC offset of the specified number of Rational seconds"
  fails "Time.new with a utc_offset argument returns a Time with a UTC offset specified as +HH:MM"
  fails "Time.new with a utc_offset argument returns a Time with a UTC offset specified as -HH:MM"
  fails "Time.new with a utc_offset argument returns a local Time if the argument is nil"
  fails "Time.new with a utc_offset argument with an argument that responds to #to_int coerces using #to_int"
  fails "Time.new with a utc_offset argument with an argument that responds to #to_r coerces using #to_r"
  fails "Time.new with a utc_offset argument with an argument that responds to #to_str coerces using #to_str"
  fails "Time.now creates a subclass instance if called on a subclass"
  fails "Time.utc accepts nil month, day, hour, minute, and second"
  fails "Time.utc accepts various year ranges"
  fails "Time.utc coerces the day with #to_int"
  fails "Time.utc coerces the hour with #to_int"
  fails "Time.utc coerces the minute with #to_int"
  fails "Time.utc coerces the month with #to_int"
  fails "Time.utc coerces the month with #to_str"
  fails "Time.utc coerces the second with #to_int"
  fails "Time.utc coerces the year with #to_int"
  fails "Time.utc creates a time based on given C-style gmtime arguments, interpreted as UTC (GMT)"
  fails "Time.utc creates a time based on given values, interpreted as UTC (GMT)"
  fails "Time.utc handles a String month given as a short month name"
  fails "Time.utc handles float arguments"
  fails "Time.utc handles fractional microseconds as a Float"
  fails "Time.utc handles fractional microseconds as a Rational"
  fails "Time.utc handles fractional seconds as a Float"
  fails "Time.utc handles fractional seconds as a Rational"
  fails "Time.utc handles microseconds"
  fails "Time.utc handles string arguments"
  fails "Time.utc handles years from 0 as such"
  fails "Time.utc ignores fractional seconds if a passed fractional number of microseconds"
  fails "Time.utc ignores fractional seconds if a passed whole number of microseconds"
  fails "Time.utc raises ArgumentError when given 11 arguments"
  fails "Time.utc raises ArgumentError when given 9 arguments"
  fails "Time.utc returns subclass instances"
end
