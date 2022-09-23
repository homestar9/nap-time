component extends="testbox.system.BaseSpec" {

	/*********************************** LIFE CYCLE Methods ***********************************/

	function beforeAll(){
	}

	function afterAll(){
	}

	/*********************************** BDD SUITES ***********************************/

	function run(){
		describe( "Nap Time Tests", function(){
			beforeEach( function( currentSpec ){
				// Setup as a request
			} );

			it( "Should return a JSON response", function(){
				var response = "";
				cfhttp( url = "http://127.0.0.1:6969/0/", result = "response" ) {
				}


				expect( response.responseheader.status_code ).toBe( 200 );
				expect( isJSON( response.filecontent ) ).toBeTrue( "fileContent was not JSON" );
			} );

            it( "Will return the sleep seconds in the response", function(){
				var sleepSeconds = 2;
                var response = "";
				cfhttp( url = "http://127.0.0.1:6969/#sleepSeconds#/", result = "response" ) {
				}

				expect( response.responseheader.status_code ).toBe( 200 );
				expect( deserializeJson( response.filecontent ).messages[ 1 ] ).toBe( "What a nice #sleepSeconds# second nap" );
			} );

			it( "Should wait for a specified amount of time", function(){
				var sleepSeconds = randRange( 1, 10 ); // random number between 1 and 10
				var start        = getTickCount();

				var response = "";
				cfhttp( url = "http://127.0.0.1:6969/#sleepSeconds#/", result = "response" ) {
				}

				var duration = ( getTickCount() - start ) / 1000;

				expect( response.responseheader.status_code ).toBe( 200 );
				expect( duration ).toBeBetween( sleepSeconds, sleepSeconds + 1 );
			} );
		} );
	}

}
