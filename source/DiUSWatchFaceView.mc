using Toybox.WatchUi as Ui;
using Toybox.Graphics as Gfx;
using Toybox.System as Sys;
using Toybox.Lang as Lang;

class DiUSWatchFaceView extends Ui.WatchFace {
    var logo;

    //! Load your resources here
    function onLayout(dc) {
		logo = Ui.loadResource(Rez.Drawables.id_logo);
    }

    //! Restore the state of the app and prepare the view to be shown
    function onShow() {
    }

    //! Update the view
    function onUpdate(dc) {
        dc.setColor(Gfx.COLOR_WHITE, Gfx.COLOR_WHITE);
    	dc.clear();
        // Get and show the current time
        var clockTime = Sys.getClockTime();
        var timeString = Lang.format("$1$:$2$", [clockTime.hour, clockTime.min.format("%.2d")]);
        dc.setColor(Gfx.COLOR_BLACK, Gfx.COLOR_WHITE);
        dc.drawText(dc.getWidth()/2, (dc.getHeight()/2) , Gfx.FONT_LARGE, timeString, Gfx.TEXT_JUSTIFY_CENTER);
    
        var logoWidth = logo.getWidth();
        dc.drawBitmap(dc.getWidth()/2 - logoWidth/2, 0, logo);
    }
    
    //! The user has just looked at their watch. Timers and animations may be started here.
    function onExitSleep() {
    }

    //! Terminate any active timers and prepare for slow updates.
    function onEnterSleep() {
    }

}