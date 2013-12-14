/*I'm still having routing issues, so images are uploaded and hotlinked and all scripts and CSS are inline.
There are some other templates I'm working on, but this one actually works, so it is up here for now.
CSS is a little messy. I'm working on it.*/

<!DOCTYPE html>
<html>
<head>
</head>



<div class="wrapper">
<div class="header">
<div class="headerboxa">
 
<script>
	var mydate=new Date()
	var year=mydate.getYear()
	if (year < 1000)
		year+=1900
	var day=mydate.getDay()
	var month=mydate.getMonth()
	var daym=mydate.getDate()
	if (daym<10)
		daym="0"+daym
	var dayarray=new Array("Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday")
	var montharray=new Array("January","February","March","April","May","June","July","August","September","October","November","December")
	document.write("<font font-color='white' font-size='20pt' font-family='Georgia'>"+dayarray[day]+", "+montharray[month]+" "+daym+", "+year+"</font>")
</script>

</div>

<div class="headerboxa">
        <img src="/blank.png" height="100">
</div>                

<div class="headerboxb">
        <h1>BEERS ON TAP</h1>
</div>
</div>    
                <br />
                <!-- Background div for column headers -->
                 <div class="TitleBarBack">
                </div>
                
                <div class="TitleBarBeerPic">
                </div>
                
                <div class="TitleBarBeerName">
                NAME
                </div>
                
                <div class="TitleBarInfo">
                INFO
                </div>
                
                <div class="TitleBarKeg">
                STATUS
                </div>
                
                <!-- Tap 1 -->

                <div class="content-rowe">
                	<div class="content-row2a">
                        <div class="BeerPic">
                                <img src="/SRM 15.png" height="150">
                        </div>     

                        <div class="BeerNameL">
                        	<h1>No Coast Amber</h1>
                        	<h2>Wet hopped with awesome hand-picked local hops!</h2>
                        </div>   
                      
                        <div class="BeerInfo">
                        	6.5%
                        	<br>
                        	<h2>ABV</h2>
                        	<img src="/2 Hops.png" width="200">
                        </div>

                        <div class="BeerStatus" id="beer1">
                            {{percent1}}%
                            <br>
                            full
                        </div>
                    </div>
                </div>



                <!-- Tap 2 -->
                <div class="content-row2">
                        <div class="content-row2g">
                        </div>                
                        <div class="content-row2a">
                        <div class="BeerPic">
                                <img src="/SRM 0.png" height="150">
                        </div>        
                        <div class="BeerNameL">
                        	<h1>Seltzer</h1>
                        	<h2>Carbonated for your pleasure and deliciously alcohol-free!</h2>
                        </div>
                        <div class="BeerInfo">
                                0%
                                <br>
                                <h2>ABV</h2>
                                <img src="/0 Hops.png" width="200">
                        </div>

                        <div class="BeerStatus" id="beer2">
                            {{percent2}}%
                            <br>
                            full
                        </div>
                    </div>
                </div>
</div>
</body>
</html>


<style type="text/css">
body {
  background-image: url('/tweedbackground.png');
  background-repeat: repeat;
}

div.wrapper {
	width: 1014px;
	display: block;
	margin-left: auto;
	margin-right: auto;
}

div.header {
	width: 1014px;
	height: 100px;
	border-bottom: 1px white dashed;
}
div.headerboxb {
	width:342px;
	text-align:center;
	float: left;
}
div.headerboxa {
	padding-left: 30px;
	width: 141px;
	float: left;
	font: 20pt Georgia;
	color: white;
	font-weight: bold;
	text-align: center;
}
h1 {
    color: white;
    font-family: Georgia;
	font-size: 2.5em;
}
span {
    position: absolute;
    display: block;
    top: 0;
    left: 0;
    height: 100%;
    width: 100%;
    background:url('images/overlay.png');
	z-index: 3;
	opacity: .8;
}
div.TitleBarBack {
	width: 1012px;
	height: 30px;
	position: relative;
	z-index: 1;
	opacity: .4;
	background: grey;
	text-align: center;
	vertical-align: middle;
}
div.TitleBarBeerPic {
	width: 140px;
	height: 30px;
	position: relative;
	z-index: 2;
	top: -30px;
	float: left;
}
div.TitleBarBeerName {
	height: 25px;
	width: 580px;
	padding-left: 10px;
	padding-top: 5px;
	border-left: 1px white dashed;
	position: relative;
	z-index: 2;
	top: -30px;
	float: left;
	font: 1em arial, verdana, sans-serif;
	color: white;
	text-align: center;
	font-weight: bold;
	font-style:italic;
}
div.TitleBarInfo {
	height: 25px;
	width: 140px;
	padding-top: 5px;
	border-left: 1px white dashed;
	border-right: 1px white dashed;
	position: relative;
	z-index: 2;
	top: -30px;
	float: left;
	font: 1em arial, verdana, sans-serif;
	color: white;
	text-align: center;
	font-weight: bold;
	font-style:italic;
}
div.TitleBarKeg {
	height: 25px;
	width: 135px;
	padding-top: 5px;
	position: relative;
	z-index: 2;
	top: -30px;
	float: left;
	font: 1em arial, verdana, sans-serif;
	color: white;
	text-align: center;
	font-weight: bold;
	font-style:italic;
}
div.BeerPic {
	padding-left: 20px;
	padding-right: 20px;
	float: left;
	margin-top: 10px;
	margin-left: auto;
	margin-right: auto;
	margin-bottom: 10px;
}
div.BeerName {
	height: 180px;
	width: 580px;
	padding-left: 10px;
	border-left: 1px white dashed;
	float:left;
}
div.BeerNameL {
        height: 180px;
        width: 580px;
        padding-left: 10px;
        border-left: 1px white dashed;
        float:left;
}
div.BeerName h1 {
	color: white;
	font: 1.5em Georgia;
	font-weight: bold;
	word-wrap: break-word;
	-webkit-margin-before: 10px;
	-webkit-margin-after: 1.82em;
}
div.BeerNameL h1 {
        color: white;
        font: 1.5em Georgia;
        font-weight: bold;
        word-wrap: break-word;
        -webkit-margin-before: 10px;
        -webkit-margin-after: .8em;
}
div.BeerNameL h2 {
        font: 1em Georgia;
        color: #888888;
}
div.BeerName h2 {
	font: 1em Georgia;
	color: #888888;
}
div.BeerInfo {
	height:170px;
	width: 140px;
	float:left;
	padding-top:10px;
	border-left: 1px white dashed;
	border-right: 1px white dashed;
	text-align: center;
	font: 30pt Georgia;
	color: #D8D8D8;
}
div.BeerInfo h2 {
	text-align: center;
	font: 15pt Georgia;
	color: #C0C0C0;
	-webkit-margin-before: 5px;
	-webkit-margin-after: 0px;
}
div.BeerStatus {
	height: 160px;
	width: 100px;
	float:left;
	padding-left: 30px;
	padding-top: 20px;
	opacity: .8;
	text-align: center;
	font: 30pt Georgia;
	color: #D8D8D8;
}
div.content-row1a {
	font: 20pt arial, verdana, sans-serif;
	width: 1012px;
	height: 180px;
	position: relative;
	top: -30;
}
div.content-rowe {
	font: 20pt arial, verdana, sans-serif;
	width: 1012px;
	height: 180px;
}
div.content-row2 {
	position: relative;
	width: 1012px;
	height: 180px;
}
div.content-row2a {
	position: absolute;
	width: 1012px;
	height: 180px;
	z-index: 2;
	font: 20pt arial, verdana, sans-serif;
}
div.content-row2g {
	position: absolute;
	width: 1012px;
	height: 180px;
	background: gray;
	opacity:0.4;
	z-index: 1;
}
div.footer {
	float: right;
	color: #aeef33;
        -webkit-margin-before: 4px;
}
div.links1 {
	width: 100%;
	height: 180px;
	z-index: 5;
	position: absolute;
    display: block;
    top: 157;
    left: 0;
}
div.links2 {
	width: 100%;
	height: 180px;
	z-index: 5;
	position: absolute;
    display: block;
    top: 337;
    left: 0;
}
div.links3 {
	width: 100%;
	height: 180px;
	z-index: 5;
	position: absolute;
    display: block;
    top: 517;
    left: 0;
}
div.links4 {
	width: 100%;
	height: 180px;
	z-index: 5;
	position: absolute;
    display: block;
    top: 697;
    left: 0;
}
div.links5 {
	width: 100%;
	height: 180px;
	z-index: 5;
	position: absolute;
    display: block;
    top: 877;
    left: 0;
}
div.links6 {
	width: 100%;
	height: 180px;
	z-index: 5;
	position: absolute;
    display: block;
    top: 1057;
    left: 0;
}
</style>

<script>
	setInterval(function(){
	  	var httpRequest;

	  	function alertContents() {
	    	if (httpRequest.readyState === 4) {
	    		if (httpRequest.status === 200) {
	    			var valueobject = JSON.parse(httpRequest.responseText);
	    			document.getElementById("beer1").innerHTML = valueobject[1]+'% full';
					document.getElementById("beer2").innerHTML = valueobject[2]+'% full';
	    		}
	    		else {
	    			alert('uh-oh, http request status = '+httpRequest.status);
				}
			}
		}

	  	if (window.XMLHttpRequest) {
	  		httpRequest = new XMLHttpRequest();
	  	};

		if (!httpRequest) {
	      alert('Giving up :( Cannot create an XMLHTTP instance');
	      return false;
	    }

	    httpRequest.onreadystatechange = alertContents;
	    httpRequest.open('GET', '/update');
	    httpRequest.send();
	},
 	2000);
 </script>

