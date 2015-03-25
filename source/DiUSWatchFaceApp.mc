using Toybox.Application as App;

class DiUSWatchFaceApp extends App.AppBase {

    //! onStart() is called on application start up
    function onStart() {
    	return false;
    }

    //! onStop() is called when your application is exiting
    function onStop() {
    	return false;
    }

    //! Return the initial view of your application here
    function getInitialView() {
        return [ new DiUSWatchFaceView() ];
    }

}