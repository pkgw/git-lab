// Render LaTeX equations inside class=katex elements into fancy math with
// KaTeX.

var RevealKatexMath = window.RevealKatexMath || (function () {
    // TODO: options
    var katexurl = 'katex/katex.min.js';

    function reveal_katex_render_slide_math (domslide) {
	var elems = domslide.querySelectorAll ('.kmath');

	for (var i = 0; i < elems.length; i++) {
	    var elem = elems[i];

	    if (!elem.hasOwnProperty ('_katex_latex_source'))
		elem._katex_latex_source = elem.textContent;

	    katex.render (elem._katex_latex_source, elem);
	}
    }

    load_script (katexurl, function () {
	// Need this to render math on the first slide.
	reveal_katex_render_slide_math (Reveal.getCurrentSlide ());
    });

    Reveal.addEventListener ('slidechanged', function (event) {
	reveal_katex_render_slide_math (event.currentSlide);
    });

    function load_script (url, callback) {
	// Stolen from the math.js plugin.
        var script = document.createElement ('script');
        script.type = 'text/javascript';
        script.src = url;

        script.onload = function load_script_finish () {
	    // Non-IE
            if (typeof callback === 'function') {
                callback.call ();
                callback = null;
            }
        };

        script.onreadystatechange = function load_script_statechange () {
            // IE
            if (this.readyState === 'loaded')
                script.onload ();
        };

        document.querySelector ('head').appendChild (script);
    }
}) ();
