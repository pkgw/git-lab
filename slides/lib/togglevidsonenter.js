/* Toggle video play/pause state on the current slide when you hit Enter,
 * and toggle presence of controls with "c".
 * @author Peter Williams
 */

var ToggleVideosOnEnter = window.ToggleVideosOnEnter || (function () {
    document.addEventListener ('keydown', function (event) {
        if (document.querySelector(':focus') !== null)
	    return;
	if (event.shiftKey || event.altKey || event.ctrlKey || event.metaKey)
	    return;

	if (event.keyCode === 13) {
	    // enter key!
	    var vids = Reveal.getCurrentSlide ().querySelectorAll ("video");

	    for (var i = 0; i < vids.length; i++) {
		var vid = vids[i];

		if (vid.paused)
		    vid.play ();
		else
		    vid.pause ();
	    }
	} else if (event.keyCode === 67) {
	    // "c"!
	    var vids = Reveal.getCurrentSlide ().querySelectorAll ("video");

	    for (var i = 0; i < vids.length; i++) {
		var vid = vids[i];

		if (vid.hasAttribute ('controls'))
		    vid.removeAttribute ('controls');
		else
		    vid.setAttribute ('controls', 'controls');
	    }
	} else {
	    return; // do not call preventDefault()
	}

	event.preventDefault ();
    }, false);
})();
