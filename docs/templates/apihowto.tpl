{include file="header.tpl"}

    <h3>PlanningAlerts.com API</h3>
    <p>
	    Planning application data is available programmatically as <a href="http://georss.org/">GeoRSS feeds</a>. GeoRSS can be used in almost most all web mapping APIs and desktop GIS software, and in services like <a href="http://mapufactu re.com">mapufacture</a> and <a href="http://pipes.yahoo.com/">Yahoo Pipes</a>.
	<p/>
	<p>
	   Just want the raw data? You can also download it <a href="http://www.planningalerts.com/backup.gz">here</a>. (gzipped mysql database dump with all user information removed).
	</p>

    <h4>API documentation</h4>
    
    <!--Postcode-->
    <div class="apiitem">
        <h5>Single Location by postcode</h5>
        <p class="apidefinition">
    	   Return applications near a given postcode. The area included is a square either 400m (s), 800m (m) or 4000m (l) with the postcode at it's center.
    	</p>
        <code>
    	http://www.planningalerts.com/api.php?<strong>call</strong>=postcode<br/>&<strong>postcode</strong>=[some postcode]&<strong>area_size</strong>=['s' 'm' or 'l']</em>
    	</code>
    	<p class="apiexamples">
    	    <a href="http://www.planningalerts.com/api.php?lat=51.52277&lng=-0.067281&area_size=l">view example</a>
    	    <a href="http://www.planningalerts.com/api.php?lat=51.52277&lng=-0.067281&area_size=l">view on a map</a>
        </p>
    </div>
	
	<!--Single-->
	<div class="apiitem">
    	<h5>Single Location by longitude/latitude</h5>
    	<p class="apidefinition">
    	   Return applications near a given longitude/latitude. The area included is a square either 400m (s), 800m (m) or 4000m (l) with the longitude/latitude at it's center.
    	</p>
    	<code>
    	http://www.planningalerts.com/api.php?<strong>call</strong>=point<br/>&<strong>lat</strong>=[some latitude]&<strong>lng</strong>=[some longitude]<strong>area_size</strong>=['s' 'm' or 'l']
    	</code>
    	<p class="apiexamples">
    	    <a href="http://www.planningalerts.com/api.php?lat=51.52277&lng=-0.067281&area_size=l">view example</a>
    	    <a href="http://www.planningalerts.com/api.php?lat=51.52277&lng=-0.067281&area_size=l">view on a map</a>
        </p>
    </div>
    
    <!--Single-->
	<div class="apiitem">
    	<h5>Single Location by OSGB</h5>
    	<p class="apidefinition">
    	   Return applications near a given longitude/latitude. The area included is a square either 400m (s), 800m (m) or 4000m (l) with the OSGB point at it's center.
    	</p>
    	<code>
    	http://www.planningalerts.com/api.php?<strong>call</strong>=pointos<br/>&<strong>easting</strong>=[some easting]&<strong>northing</strong>=[some northing]<strong>area_size</strong>=['s' 'm' or 'l']
    	</code>
    	<p class="apiexamples">
    	    <a href="http://www.planningalerts.com/api.php?lat=51.52277&lng=-0.067281&area_size=l">view example</a>
    	    <a href="http://www.planningalerts.com/api.php?lat=51.52277&lng=-0.067281&area_size=l">view on a map</a>
        </p>
    </div>

    <!--Box OSGB-->
	<div class="apiitem">
    	<h5>Area by longitude/latitude</h5>
    	<p class="apidefinition">
    	   Return applications within a rectangle defined by longitude/latitude.
    	</p>
    	<code>
    	http://www.planningalerts.com/api.php?<strong>call</strong>=area<br/>&<strong>bottom_left_lat</strong>=[some latitude]&<strong>bottom_left_lng</strong>=[some longitude]&<strong>top_right_lat</strong>=[some latitude]&<strong>top_right_lng</strong>=[some longitude]
    	</code>
    	<p class="apiexamples">
    	    <a href="http://www.planningalerts.com/api.php?lat=51.52277&lng=-0.067281&area_size=l">view example</a>
    	    <a href="http://www.planningalerts.com/api.php?lat=51.52277&lng=-0.067281&area_size=l">view on a map</a>
        </p>
    </div>
    
    <!--Box-->
	<div class="apiitem">
    	<h5>Area by OSGB</h5>
    	<p class="apidefinition">
    	   Return applications within a rectangle defined by OSGB coordinates.
    	</p>
    	<code>
    	http://www.planningalerts.com/api.php?<strong>call</strong>=areaos<br/>&<strong>bottom_left_easting</strong>=[some easting]&<strong>bottom_left_northing</strong>=[some northing]&<strong>top_right_easting</strong>=[some easting]&<strong>top_right_northing</strong>=[some northing]
    	</code>
    	<p class="apiexamples">
    	    <a href="http://www.planningalerts.com/api.php?lat=51.52277&lng=-0.067281&area_size=l">view example</a>
    	    <a href="http://www.planningalerts.com/api.php?lat=51.52277&lng=-0.067281&area_size=l">view on a map</a>
        </p>
    </div>
    
    <!--Box-->
	<div class="apiitem">
    	<h5>By planning authority</h5>
    	<p class="apidefinition">
    	   Return applications for a specific planning authority (e.g. a local council) by authority short name.
    	</p>
    	<code>
    	http://www.planningalerts.com/api.php?<strong>call</strong>=authority<br/>&<strong>authority_short_name</strong>=[some name]
    	</code>
    	<p class="apiexamples">
    	    <a href="http://www.planningalerts.com/api.php?lat=51.52277&lng=-0.067281&area_size=l">view example</a>
    	    <a href="http://www.planningalerts.com/api.php?lat=51.52277&lng=-0.067281&area_size=l">view on a map</a>
        </p>
    </div>
	

    <h4>License information</h4>
    <p>
                Both the <a href="http://www.planningalerts.com/backup.gz"> raw data</a> and data via the api are licensed under the <a hrref="http://creativecommons.org/licenses/by-sa/2.0/">Creative Commons Attribution-ShareAlike 2.0 license</a>. The license granted in relation to the 'Work' should be read broadly to relate not only copyright but all other IP rights present in this dataset including, for example, any Database rights.
    </p>
		
{include file="footer.tpl"}