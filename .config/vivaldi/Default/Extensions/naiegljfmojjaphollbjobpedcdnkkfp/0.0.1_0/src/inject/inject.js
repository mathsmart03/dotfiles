chrome.extension.sendMessage({}, function(response) {
	var readyStateCheckInterval = setInterval(function() {
	if (document.readyState === "complete") {
		clearInterval(readyStateCheckInterval);

		// ----------------------------------------------------------
		// This part of the script triggers when page is done loading
		console.log("Hello. This message was sent from scripts/inject.js");
		// ----------------------------------------------------------

		$(document).on('click', 'a[href*="dQw4w9WgXcQ"]', function(e){
			if (!confirm('Are you sure?  You are about to get Rick Rolled')) e.preventDefault();
		});
		$('a[href*="dQw4w9WgXcQ"]').append(' <div class="rickrollbox"><img src="' + chrome.extension.getURL('icons/rickastley.png') + '" width="24"></div>');
	}
	}, 10);
});
