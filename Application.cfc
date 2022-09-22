component {

	this.name                  = hash( getCurrentTemplatePath() );
	this.applicationTimeout    = createTimespan( 30, 0, 0, 0 ); // one month
	this.sessionManagement     = false;
	this.baseDir               = getDirectoryFromPath( getCurrentTemplatePath() );
	this.enablerobustexception = true;

	// request start (Always include index)
	public boolean function onRequestStart( string targetPage ){
		include "/index.cfm";
		return false;
	}

}
