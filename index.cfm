<cfscript>
param sleepSeconds = 30;

// look for a new sleep second value in the path
pathArray = listToArray( cgi.PATH_INFO, "/" );
if ( 
    pathArray.len() 
) {
    if ( !isValid( "integer", pathArray[ 1 ] ) ) {
        throw( "invalid timeout specified. Append timeout just after the host like this: http://127.0.0.1:6969/200/" );
    }
    // reset the sleep time
    sleepSeconds = pathArray[ 1 ];
}

// request timeout should be set to 5 seconds beyond our sleep time
setting requesttimeout= sleepSeconds + 5;

// JSON response to simulate API
cfheader( name="Content-Type", value="application/json" );

// take a nap zzzzzz
sleep( sleepSeconds * 1000 );

// return
writeOutput( 
    serializeJson( {
    "data": "",
    "message": "What a nice #sleepSeconds# second nap",
    "error": false
    } ) 
);
</cfscript>