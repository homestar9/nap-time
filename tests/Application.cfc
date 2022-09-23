/**
 * Copyright 2005-2007 ColdBox Framework by Luis Majano and Ortus Solutions, Corp
 * www.ortussolutions.com
 * ---
 */
component {

	// APPLICATION CFC PROPERTIES
	this.name                 = "ColdBoxTestingSuite";
	this.sessionManagement    = true;
	this.setClientCookies     = true;
	this.sessionTimeout       = createTimespan( 0, 0, 15, 0 );
	this.applicationTimeout   = createTimespan( 0, 0, 15, 0 );
	// Turn on/off white space management
	this.whiteSpaceManagement = "smart";
	this.enableNullSupport    = shouldEnableFullNullSupport();

	// Create testing mapping
	this.mappings[ "/tests" ] = getDirectoryFromPath( getCurrentTemplatePath() );
	// Map back to its root
	rootPath                  = reReplaceNoCase( this.mappings[ "/tests" ], "tests(\\|/)", "" );
	this.mappings[ "/root" ]  = rootPath;

	public boolean function onRequestStart( targetPage ){
		// Set a high timeout for long running tests
		setting requestTimeout="9999";
		return true;
	}

	public void function onRequestEnd( required targetPage ){
	}

	private boolean function shouldEnableFullNullSupport(){
		var system = createObject( "java", "java.lang.System" );
		var value  = system.getEnv( "FULL_NULL" );
		return isNull( value ) ? false : !!value;
	}

}
