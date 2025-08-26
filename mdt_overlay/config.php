<script>// CAD/MDT In-Game Integration System (Developed by Tommy Johnston)

//Your CAD url link with a trailing slash, example (https://cad.example.com/)
var communityapi = "PASTE YOUR LINK HERE";





























//CODE BEGINS (DON'T TOUCH UNLESS YOU KNOW WHAT YOUR DOING)

		window.addEventListener('message', (event) => {
		    let data = event.data;
		    if (data.action == 'sendSteam') {
		    var steam = data.steam;

		    if (steam !== false) {
		      var callsign = 'NA';
		      var unitname = 'NA';
		      var unitstatus = '10-42';
		      var logged = false;
		      var callid = 'NA';
		      var calldetails = 'NA';
		      var callpostal = 'NA';
 		      var calllocation = 'NA';
			  var calltype = 'NA';
 		      var callerid = 'NA';

		setInterval(function(){
		      $.getJSON(communityapi + 'api/nui.php?steam=' + steam, function(query) {
		        callsign = query.callsign;
		        unitname = query.unitname;
		        unitstatus = query.unitstatus;
		        logged = query.logged;
		        attached = query.attached;
		        callid = query.callid;
		        calldetails = query.calldetails;
		        callpostal = query.callpostal;
		        calllocation = query.calllocation;
		        calltype = query.calltype;
		        callerid = query.callerid;
				if(logged && attached){
		        $("#callsign").html(callsign + " // " + unitname + " [" + unitstatus + "]");
		        $("#callerid").html(calltype + " #" + callid + ' - ' + callerid);
		        $("#calldetails").html("Call Description: " + calldetails);
		        $("#callloc").html("Call Location: " + calllocation + ' #' + callpostal);
				document.getElementById("container").style.display = "block";
				}else if(logged){
		        $("#callsign").html(callsign + " // " + unitname + " [" + unitstatus + "]");
		        $("#callerid").html(calltype + callid + callerid);
		        $("#calldetails").html("Call Description: " + calldetails);
		        $("#callloc").html("Call Location: " + calllocation + callpostal);
				document.getElementById("container").style.display = "block";
				}else{
				document.getElementById("container").style.display = "none";
				}
		      });

		}, 5000);
		    }
		  }
		});
	</script>
<html>
	<head>
		<link rel="stylesheet" href="html/reset.css" type="text/css">
		<link rel="stylesheet" href="html/style.css" type="text/css">
		<script src="nui://game/ui/jquery.js" type="text/javascript"></script>
		<script src="./html/listener.js" type="text/javascript"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	</head>
	<body>
		<div id="container">
                <div class="card">
                  <div class="card-body">
                    <div style='background-color:rgba(0,0,0,0.65);' class="card card-inverse-secondary mb-5">
					  <div class="card-body">
                        <p id="callsign" class="mb-4"></p>
                        <p id="callerid" class="mb-4"></p>
                        <p id="calldetails" class="mb-4"></p>
                        <p id="callloc" class="mb-4"></p>
                      </div>
                    </div>
                  </div>
                </div>
		</div>
	</body>
</html>
