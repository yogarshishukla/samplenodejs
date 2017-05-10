<html>
<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<!--<meta name="description" content="jqxChart - Javascript Chart Area series." />
		<meta name="keywords" content="jqwidgets charts, jquery charts, javascript charts, ajax charts, graphs, plots, line charts, bar charts, pie charts, javascript plots, ajax plots" />	
		<link rel="stylesheet" href="css/jqx.base.css" type="text/css" />-->
		<script type="text/javascript" src="lib/jquery-1.11.1.min.js"></script>
		<!--<script type="text/javascript" src="js/jqxcore.js"></script>
		<script type="text/javascript" src="js/jqxdata.js"></script>
		<script type="text/javascript" src="js/jqxdraw.js"></script>
		<script type="text/javascript" src="js/jqxchart.core.js"></script>-->

		<script src="js/bootstrap.min.js"></script>
		<link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>
		<script src="js/angular.min.js"></script>
		
		<script>
			var app = angular.module('weatherApp', []);
			app.controller('weatherCtrl', function($scope, $http) {
				//console.log('Angular started');
				$scope.getWeather = function() {
					$http.get("city.json")
					.then(function (response) {
						$scope.cityList = response.data;
						console.log(JSON.stringify(response));
					});
				}
				$scope.getWeather();
				
			});
		</script>

		
		<style>
		
			@font-face {
				font-family: 'agfa_rotis_sans_serif_lightRg';
				src: url('fonts/rotsanl-webfont.woff2') format('woff2'),
					 url('fonts/rotsanl-webfont.woff') format('woff');
				font-weight: normal;
				font-style: normal;
			}
			.header{
					background-image: url("images/Acc_Weather_App_Header_BG.png");
					padding: 14px;
					
				}
			.navbar {
				color: #FFFFFF;
				background-color: #CC3333;
				font-size : 17px;
				
			}
			a{
				text-decoration: none;
				color : #ffffff !important;
			}
			.leftborder{
				border-left: .1px solid white;
			}
			.navbar-default .navbar-nav>.active>a, a:hover {
					color: #f3dd40 !important;
					background-color: transparent !important;
			}
			.city-panel{
				font-size : 16px;
				margin-left : 50px;
			}
			.weather-panel{
				border-left: 1px solid #e0e0e0;
				background-color: #ffffff;
				border-right: 1px solid #e0e0e0;
				border-bottom: 1px solid #e0e0e0;
				
			}
			body{
				background-color : #f5f5f5;
			}
			.custom-padding{
				padding-right: 0px !important; 
				padding-left: 0px !important;
			}
			.custom-anchor{
				text-decoration: none !important;
				color : #a53c30 !important;
			}
			.custom-panel-heading{
				background-color : 0f83a0 !important;
				color: #ffffff !important;
			}
			.searchbutton{
				background-color : #eeaa00;
			}
			.searchbutton-highlight{
				color : #ffffff;
			}
			c-f-toggle{
				color : #000000;
			}
		</style>
</head>
<body  style="font-family: 'Roboto', sans-serif;">
<div ng-app="weatherApp" ng-controller="weatherCtrl">
	<div class="container-fluid" >
		
		
		
		
			<div class="row header">
				<div class="col-md-3">
						<img src="images/Acc_Logo.png" >
					</div>
				<div class="col-md-6">
						<div class="form-group">
						<div class="input-group">
							<input type="text" class="form-control input-lg" style="color: #000000; 	font-size:15px; opacity: .8;" placeholder="Delhi, IN">
							<span  class="input-group-addon searchbutton" onmouseover="$('.searchbutton').removeClass('searchbutton-highlight');$(this).addClass('searchbutton-highlight');" onmouseout="$('.searchbutton').removeClass('searchbutton-highlight');">
							<span class="glyphicon glyphicon-search"></span></span>
						</div>
						</div>
					</div>					
			</div>
			
			
			
			
			
	<div class="row" style="padding:19px">
		<div class="col-md-8 weather-panel custom-padding" style="padding-bottom:15px">
			<div class="navbar navbar-default ">
			<div class="row">
				<div class="container-fluid" style="font-family: 'agfa_rotis_sans_serif_lightRg';font-size:20px;">
				
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#weather">
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
					</div>
					
					<div class="collapse navbar-collapse" id="weather">
						<ul class="nav navbar-nav">
							<li class="active"><a href="#today">Today</a></li>
							<li class="leftborder"><a href="#weekday">Weekday</a></li>
							<li class="leftborder"><a href="#weekend">Weekend</a></li>
							<li class="leftborder"><a href="#month">Month</a></li>
							<li class="leftborder"><a href="#satellite">Satellite</a></li>
						</ul>
					</div>
				</div>
				</div>
			</div>
			
			
			<div class="col-md-12" style="color:#787878">			
					<a style="color:#787878 !important;text-decoration: none;" href="">Now</a> | <a style="color:#787878 !important;text-decoration: none;" href="">Hour</a> | <a style="color:#787878 !important;text-decoration: none;" href="">Tonight</a>
			</div>
			<div id="delhi">
				<div class="row" style="padding: 40px;">
					<div class="col-md-6" >
					<div ng-repeat="cityName in cityList.city">
						<div ng-if="'Delhi'==cityName"> 
							<span style="font-size:30px;"> {{cityName}}</span><br>
						</div>
					</div>
						<span style="font-size:25px;">Thursday, 2:25 PM</span><br><br>
						<span style="font-size:40px;color:#007896;"><img src="images/cloudy.png"> 31&deg </span>
						<sup  style="font-size:22px;">C | <span style="color:#443bbc" id="fahrenheit">F</span></sup>
					</div>
					
					
					<div class="col-md-6">
						<div class="row"  style="font-size: 17px;font-family: 'agfa_rotis_sans_serif_lightRg';">
							<div class="col-md-4" style="background-color : eeaa00; padding: 5px;" align="center">Precipitation</div>
							<div class="col-md-4 leftborder" style="background-color : e1e1e1; padding: 5px;" align="center">Humidity</div>
							<div class="col-md-4 leftborder" style="background-color : e1e1e1; padding: 5px;" align="center">Wind</div>
						</div>
						<div class="row" style="font-size: 20px;"><br>
							<div class="col-md-10	pull-right">
								<ul class="center" style="list-style-type:square;">
													<li>Precipitation : <span style="color:#007896;">8%</span></li>
													<li>Humidity : <span style="color:#007896;">63%</span></li>
													<li><span>Wind : <span style="color:#007896;">16 km/h</span></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			
			<!--<div class="row">
				<div id='chartContainer' style="width:800px; height:200px">
				</div>
			</div>-->
		
			<div class="row" style="margin-left: 24px; border: #ffffff; margin-right: 24px;color: #c8c8c8;">
							
							<div class="panel panel-info">
								
						  <div class="panel-body" align="center">
							<div class="col-md-2">
								<div style="cursor:pointer;">
									<h4>Wed</h4><br>
									<img src="images/rain.png">
									<br><br>
									<center><span style="color:#8e8e8e">38&deg</span> 27&deg</center>
								</div>
							</div>
							
							<div class="col-md-2">
								<div style="cursor:pointer;">
									<h4>Thu</h4><br>
									<img src="images/rain.png">
									<br><br>
									<center><span style="color:#8e8e8e">34&deg</span> 26&deg</center>
								</div>
							</div>
							
							<div class="col-md-2">
								<div style="cursor:pointer;">
									<h4>Fri</h4><br>
									<img src="images/Thunder.png">
									<br><br>
									<center><span style="color:#8e8e8e">31&deg</span> 25&deg</center>
								</div>	
							</div>
							
							<div class="col-md-2">
								<div style="cursor:pointer;">
									<h4>Sat</h4><br>
									<img src="images/rain.png">
									<br><br>
									<center><span style="color:#8e8e8e">32&deg</span> 26&deg</span><center>
								</div>	
							</div>
							
							<div class="col-md-2">
								<div style="cursor:pointer;">
									<h4>Sun</h4><br>
									<img src="images/rain.png">
									<br><br>
									<center><span style="color:#8e8e8e">34&deg</span> 27&deg</center>
								</div>	
							</div>
							
							<div class="col-md-2">
								<div style="cursor:pointer;">
									<h4>Mon</h4><br>
									<img src="images/Drizzle.png">
									<br><br>
									<center><span style="color:#8e8e8e">34&deg</span> 27&deg</center>
								</div>	
							</div>
						  </div>
						</div>
					</div>
			</div>
		</div>
		
		
		<div class="col-md-3 city-panel custom-padding" >
			<div class="panel panel-info">
			
				
				<div class="panel-heading custom-panel-heading" style="padding:10px;">
					<span class="panel-title" style="font-family: 'agfa_rotis_sans_serif_lightRg';font-size:20px">Other Locations</span>
				</div>
				
				
				<div class="row" style="margin-left:10px;margin-right:10px;padding:2px;"><br>					
						<a href="weatherforecast_bengaluru.jsp" class="custom-anchor">
							<div class="col-md-8">
								<div>
									<span style="font-size:17px;color:#a3372b;">Bengaluru</span>
								</div>
								<span style="font-size:14px;color:#818181;">Cloudy with Rainfall</span>
							</div>
							<div class="col-md-4">
								<span style="font-size:15px;color:#555555;"><img src="images/Drizzle.png">24&deg</span>
							</div>
						</a>
				</div><hr>
				
				
				<div class="row" style="margin-left:10px;margin-right:10px;padding-top:2px;padding-bottom:2px;">				
						<a href="weatherforecast_chennai.jsp" class="custom-anchor">
							<div class="col-md-8">
								<div>
									<span style="font-size:17px;color:#a3372b;">Chennai</span>
								</div>
								<span style="font-size:13px;color:#818181;">Cloudy with Thunderstorm</span>
							</div>
							<div class="col-md-4">
								<span style="font-size:15px;color:#555555;"><img src="images/Thunder.png">24&deg</span>
							</div>
						</a>
				</div><hr>
				
				
				<div class="row" style="margin-left:10px;margin-right:10px;padding:2px;">		
						<a href="weatherforecast_hyd.jsp" class="custom-anchor">
							<div class="col-md-8">
								<div>
									<span style="font-size:17px;color:#a3372b;">Hyderabad</span>
								</div>
								<span style="font-size:13x;color:#818181;">Rain and Thunderstorm</span>
							</div>
							<div class="col-md-4">
								<span style="font-size:15px;color:#555555;"><img src="images/rain.png">23&deg</span>
							</div>
						</a>
				</div><hr>
				
				
				<div class="row" style="margin-left:10px;margin-right:10px;padding:2px;">					
						<a href="weatherforecast_mumbai.jsp" class="custom-anchor">
							<div class="col-md-8">
								<div>
									<span style="font-size:17px;color:#a3372b;">Mumbai</span>
								</div>
								<span style="font-size:13px;color:#818181;">Heavy Rain Showers</span>
							</div>
							<div class="col-md-4">
								<span style="font-size:15px;color:#555555;"><img src="images/Drizzle.png">27&deg</span>
							</div>
						</a>
				</div><hr>
				
				
				<div class="row" style="margin-left:10px;margin-right:10px;padding:2px;">		
						<a href="weatherforecast_pune.jsp" class="custom-anchor">
							<div class="col-md-8">
								<div>
									<span style="font-size:17px;color:#a3372b;">Pune</span>
								</div>
								<span style="font-size:13px;color:#818181;">Cloudy and Windy</span>
							</div>
							<div class="col-md-4">
								<span style="font-size:15px;color:#555555;"><img src="images/Windy.png">23&deg</span>
							</div>
						</a>
				</div><br>
				
			</div>
				</div>
			</div>
</div>			
				<footer>
			<div class="container-fluid" style="background-color:#36454f; color : #b9b9b9; font-size : 14px; text-align: center; padding : 5px">
				<div class="row">
				&#169; 2016 Accenture All Rights Reserved
				</div>
			</div>
		</footer>
	</div>	
	</body>
</html>
</body>
</html>