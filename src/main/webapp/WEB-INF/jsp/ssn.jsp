<!DOCTYPE html>
<html>
<head>
<title>Event Source Client</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script>
$(document).ready(function () {

	function createEventSource() {
        var eventSource = new EventSource("http://localhost:8080/ReactiveServer/ssn");
        eventSource.addEventListener('message', function (e) {
            const body = JSON.parse(e.data);
            $("#updated").text(body);
        }, false);
        return eventSource;
    }

    var eventSource;

    $("#start").click(function() {
        if (eventSource) {
            eventSource.close();
        }
        eventSource = createEventSource();
    });

    $("#cancel").click(function() {
        eventSource.close();
    });
});
</script>
</head>
<body>
	<div>
		<h1>Real time Bitcoin prices</h1>
		<p id="updated"></p>
		<button id="start">Start</button>
		<button id="cancel">Cancel</button>
	</div>
</body>
</html>