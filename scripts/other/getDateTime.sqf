//--- Type date, time and location
    private [ "_year", "_month", "_day", "_hour", "_minute", "_date", "_time" ];

    _year = ( date select 0 );
    _month = ( date select 1 );
    _day = ( date select 2 );

    if( _month < 10 ) then { _month = format[ "0%1", _month ] };
    if( _day < 10 ) then { _day = format[ "0%1", _day ] };

    //--- Get date
    introDate = format[ "%1-%2-%3", _day, _month, _year ];

    _hour = ( date select 3 );
    _minute = ( date select 4 );

    if( _hour < 10 ) then { _hour = format[ "0%1", _hour ] };
    if( _minute < 10 ) then { _minute = format[ "0%1", _minute ] };

    //--- Get time
    introTime = format[ "%1:%2", _hour, _minute ];
