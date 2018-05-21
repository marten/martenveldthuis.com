if (window.self == window.top) {
    // fix framing
    
    let template = '<frameset rows="100,*"> \
            <frame src="/topbar.html" name="topbar" scrolling="no" /> \
            <frameset cols="300,*"> \
                <frame src="/menu.html" name="side" /> \
                <frame src="' + window.location.href + '" name="main" /> \
            </frameset> \
            </frameset>';

    document.getElementsByTagName('html')[0].innerHTML = template
}

function fixFrames(event) {
    window.top.history.pushState({location: event.target.href}, 'foo', event.target.href);
}

Array.from(document.getElementsByTagName('a')).forEach((element) => {
    element.onclick = fixFrames;
});

// Can't get popstate to work. So hacky hacky hack
if (window.location.href != window.top.location.href) {
    window.top.history.pushState(null, 'foo', window.location.href);
}

