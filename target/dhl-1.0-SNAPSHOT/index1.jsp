<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>create shipment request</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.1/css/bulma.min.css">
  </head>
  <body>
  <section class="section">
    <form action="CreateShipmentRequest" method="POST">
    
    <!-- here the header info for auth and ws-sec -->
	    <div class="field">
	  		<label class="label is-large">user auth</label>
	  	</div>
	  	<div class="field">
	  		<label class="label">user name</label>
		  		<div class="control">
		    		<input class="input" name="auth_username" type="text" placeholder="Text input">
	  			</div>
	  	</div>
	  	<div class="field">
	  		<label class="label">password</label>
		  		<div class="control">
		    		<input class="input" name="auth_password" type="text" placeholder="Text input">
		    	</div>
	  	</div>
	  	<div class="field">
	  		<label class="label">nonce</label>
		  		<div class="control">
		    		<input class="input" name="auth_nonce" type="text" placeholder="Text input">
		    	</div>
	  	</div>
	  	<div class="field">
	  		<label class="label">created at</label>
		  		<div class="control">
		    		<input class="input" name="aurh_created" type="text" placeholder="Text input">
		    	</div>
	  	</div>
	  	
	  	
	  	<!-- here the info of the shipment -->
	  	 <div class="field">
	  		<label class="label is-large">requestedshipment/shipmentinfo</label>
	  	</div>
	  	
	  	<div class="field">
	  	<label class="label">drop of type</label>
	  		<div class="control">
				<div class="select">
					<select name="drop_of_type">
				      <option value="REGULAR_PICKUP">REGULAR_PICKUP</option>
				      <option value="REQUEST_COURIER">REQUEST_COURIER</option>
					</select>
				</div>
	    	</div>
	  	</div>
	  	
	  	<div class="field">
	  		<label class="label">service type</label>
	  		<div class="control">
	  			<input class="input" name="service_type" type="text" placeholder="service type" />
	  		</div>
	  	</div>
	  	
	  	<div class="field">
	  	<label class="label">currency</label>
	  		<div class="control">
				<div class="select">
					<select name="currency">
						<option value="USD" selected="selected">United States Dollars</option>
						<option value="EUR">Euro</option>
						<option value="GBP">United Kingdom Pounds</option>
						<option value="DZD">Algeria Dinars</option>
						<option value="ARP">Argentina Pesos</option>
						<option value="AUD">Australia Dollars</option>
						<option value="ATS">Austria Schillings</option>
						<option value="BSD">Bahamas Dollars</option>
						<option value="BBD">Barbados Dollars</option>
						<option value="BEF">Belgium Francs</option>
						<option value="BMD">Bermuda Dollars</option>
						<option value="BRR">Brazil Real</option>
						<option value="BGL">Bulgaria Lev</option>
						<option value="CAD">Canada Dollars</option>
						<option value="CLP">Chile Pesos</option>
						<option value="CNY">China Yuan Renmimbi</option>
						<option value="CYP">Cyprus Pounds</option>
						<option value="CSK">Czech Republic Koruna</option>
						<option value="DKK">Denmark Kroner</option>
						<option value="NLG">Dutch Guilders</option>
						<option value="XCD">Eastern Caribbean Dollars</option>
						<option value="EGP">Egypt Pounds</option>
						<option value="FJD">Fiji Dollars</option>
						<option value="FIM">Finland Markka</option>
						<option value="FRF">France Francs</option>
						<option value="DEM">Germany Deutsche Marks</option>
						<option value="XAU">Gold Ounces</option>
						<option value="GRD">Greece Drachmas</option>
						<option value="HKD">Hong Kong Dollars</option>
						<option value="HUF">Hungary Forint</option>
						<option value="ISK">Iceland Krona</option>
						<option value="INR">India Rupees</option>
						<option value="IDR">Indonesia Rupiah</option>
						<option value="IEP">Ireland Punt</option>
						<option value="ILS">Israel New Shekels</option>
						<option value="ITL">Italy Lira</option>
						<option value="JMD">Jamaica Dollars</option>
						<option value="JPY">Japan Yen</option>
						<option value="JOD">Jordan Dinar</option>
						<option value="KRW">Korea (South) Won</option>
						<option value="LBP">Lebanon Pounds</option>
						<option value="LUF">Luxembourg Francs</option>
						<option value="MYR">Malaysia Ringgit</option>
						<option value="MXP">Mexico Pesos</option>
						<option value="NLG">Netherlands Guilders</option>
						<option value="NZD">New Zealand Dollars</option>
						<option value="NOK">Norway Kroner</option>
						<option value="PKR">Pakistan Rupees</option>
						<option value="XPD">Palladium Ounces</option>
						<option value="PHP">Philippines Pesos</option>
						<option value="XPT">Platinum Ounces</option>
						<option value="PLZ">Poland Zloty</option>
						<option value="PTE">Portugal Escudo</option>
						<option value="ROL">Romania Leu</option>
						<option value="RUR">Russia Rubles</option>
						<option value="SAR">Saudi Arabia Riyal</option>
						<option value="XAG">Silver Ounces</option>
						<option value="SGD">Singapore Dollars</option>
						<option value="SKK">Slovakia Koruna</option>
						<option value="ZAR">South Africa Rand</option>
						<option value="KRW">South Korea Won</option>
						<option value="ESP">Spain Pesetas</option>
						<option value="XDR">Special Drawing Right (IMF)</option>
						<option value="SDD">Sudan Dinar</option>
						<option value="SEK">Sweden Krona</option>
						<option value="CHF">Switzerland Francs</option>
						<option value="TWD">Taiwan Dollars</option>
						<option value="THB">Thailand Baht</option>
						<option value="TTD">Trinidad and Tobago Dollars</option>
						<option value="TRL">Turkey Lira</option>
						<option value="VEB">Venezuela Bolivar</option>
						<option value="ZMK">Zambia Kwacha</option>
						<option value="EUR">Euro</option>
						<option value="XCD">Eastern Caribbean Dollars</option>
						<option value="XDR">Special Drawing Right (IMF)</option>
						<option value="XAG">Silver Ounces</option>
						<option value="XAU">Gold Ounces</option>
						<option value="XPD">Palladium Ounces</option>
						<option value="XPT">Platinum Ounces</option>
					</select>
				</div>
	    	</div>
	  	</div>
	  	
	  	<div class="field">
	  	<label class="label">unit of measurement</label>
	  		<div class="control">
				<div class="select">
					<select name="unit_of_measurement">
				      <option value="SI">international metric system</option>
				      <option value="SU">the US system of measurement </option>
					</select>
				</div>
	    	</div>
	  	</div>
	  	<!-- here the timestamp for the request -->
	  	 <div class="field">
	  		<label class="label is-large">requested shipment/time of shipment</label>
	  	</div>
	  	
	  	<div class="field">
	  		<label class="label">ship date and time</label>
	  		<div class="control">
	  			<input class="input" name="time_of_shipment" type="date" />
	  		</div>
	  	</div>
	  	
	  	
	  	<!-- payment info -->
	  	<div>
	  		<label class="label is-large">requested shipmemnt/payment info</label>
	  	</div>
	  	
	  	<div class="field">
	  		<label class="label">payment info</label>
	  		<div class=select>
	  			<select name="payment_info">
				      <option value="CFR">Cost And Freight</option>
				      <option value="CIF">Cost, Insurance and Freight</option>
				      <option value="CIP">Carriage And Insurance Paid To</option>
				      <option value="CPT">Carriage Paid To</option>
				      <option value="DAF">Delivered At Frontier</option>
				      <option value="DDP">Delivery Duty Paid</option>
				      <option value="DDU">Delivery Duty Unpaid</option>
				      <option value="DAP">Delivered At Place</option>
				      <option value="DEQ">Delivered Ex Quay (Duty Paid)</option>
				      <option value="DES">Delivered Ex Ship</option>
				      <option value="EXW">Ex Works</option>
				      <option value="FAS">Free Alongside Ship</option>
				      <option value="FCA">Free Carrier</option>
				      <option value="FOB">Free On Boar</option>
				      
					</select>
	  		</div>
	  	</div>
	  	
	  	
	  	<!-- international details fields -->
	  	<div class="field">
	  		<label class="label is-large">requested shipmemnt/international details</label>
	  	</div>
	  	
	  	<div class="field">
	  		<label class="label">commodities/description</label>
	  		<div class="control">
	  			<input class="input" name="decription" type="text" />
	  		</div>
	  	</div>
	  	
	  	
	  	<!-- ship details fields -->
	  	<div class="field">
	  		<label class="label is-large">requested shipment/shiper</label>
	  	</div>
	  	
	  	<div class="field">
	  		<label class="label">shiper name</label>
	  		<div class="control" >
	  			<input class="input" type="text" name="shiper_person_name" placeholder="person name" />
			</div>
	  	</div>
	  	
	  	<div class="field">
	  		<label class="label">company name</label>
	  		<div class="control" >
	  			<input class="input" type="text" name="shiper_company_name" placeholder="company name" />
			</div>
	  	</div>
	  	
	  	<div class="field">
	  		<label class="label">phone number</label>
	  		<div class="control" >
	  			<input class="input" type="tel" name="shiper_phone_number" placeholder="phone number" />
			</div>
	  	</div>
	  	
	  	<div class="field">
	  		<label class="label">adress/street lines</label>
	  		<div class="control" >
	  			<input class="input" type="text" name="shiper_street_lines" placeholder="street lines" />
			</div>
	  	</div>
	  	
	  	<div class="field">
	  		<label class="label">city</label>
	  		<div class="control" >
	  			<input class="input" type="text" name="shiper_city" placeholder="city" />
			</div>
	  	</div>
	  	
	  	<div class="field">
	  		<label class="label">postal code</label>
	  		<div class="control" >
	  			<input class="input" type="text" name="shiper_postal_code" placeholder="postal code" />
			</div>
	  	</div>
	  	
	  	<div class="field">
	  		<label class="label">country code</label>
	  		<div class="control" >
	  			<input class="input" type="text" name="shiper_country_code" placeholder="country code" />
			</div>
	  	</div>
	  	
	  	
	  	<div class="field">
	  		<label class="label is-large">requested shipment/reciepent</label>
	  	</div>
	  	
	  	 	
	  	<div class="field">
	  		<label class="label">reciepent name</label>
	  		<div class="control" >
	  			<input class="input" type="text" name="reciepent_person_name" placeholder="person name" />
			</div>
	  	</div>
	  	
	  	<div class="field">
	  		<label class="label">company name</label>
	  		<div class="control" >
	  			<input class="input" type="text" name="reciepent_company_name" placeholder="company name" />
			</div>
	  	</div>
	  	
	  	<div class="field">
	  		<label class="label">phone number</label>
	  		<div class="control" >
	  			<input class="input" type="tel" name="reciepent_phone_number" placeholder="phone number" />
			</div>
	  	</div>
	  	
	  	<div class="field">
	  		<label class="label">adress/street lines</label>
	  		<div class="control" >
	  			<input class="input" type="text" name="reciepent_street_lines" placeholder="street lines" />
			</div>
	  	</div>
	  	
	  	<div class="field">
	  		<label class="label">city</label>
	  		<div class="control" >
	  			<input class="input" type="text" name="reciepent_city" placeholder="city" />
			</div>
	  	</div>
	  	
	  	<div class="field">
	  		<label class="label">postal code</label>
	  		<div class="control" >
	  			<input class="input" type="text" name="reciepent_postal_code" placeholder="postal code" />
			</div>
	  	</div>
	  	
	  	<div class="field">
	  		<label class="label">country code</label>
	  		<div class="control" >
	  			<input class="input" type="text" name="reciepent_country_code" placeholder="country code" />
			</div>
	  	</div>
	  	
	  	
	  	<!-- packages details -->
	  	<div class="field">
	  		<label class="label is-large">packages</label>
	  	</div>
	  	
	  	<div class="field" >
	  		<label class="label" >requested package/weight</label>
	  		<div class="control" >
	  			<input class="input" type="text" name="package_weight" placeholder="weight ex : 15.3D" />
	  		</div>
	  	</div>
	  	
	  	<div class="field" >
	  		<label class="label" >requested package/length</label>
	  		<div class="control" >
	  			<input class="input" type="text" name="package_length" placeholder="length ex : 15.3D >=0.2" />
	  		</div>
	  	</div>
	  	
	  	<div class="field" >
	  		<label class="label" >requested package/width</label>
	  		<div class="control" >
	  			<input class="input" type="text" name="package_width" placeholder="length ex : 15.3D >=0.2" />
	  		</div>
	  	</div>
	  	
	  	<div class="field" >
	  		<label class="label" >requested package/height</label>
	  		<div class="control" >
	  			<input class="input" type="text" name="package_height" placeholder="length ex : 15.3D >=0.2" />
	  		</div>
	  	</div>
	  	
	  	<div class="control">
  			<button class="button is-link">Submit</button>
  		</div>
	  	
	  	
	  	
    </form>
  </section>
  </body>
</html>