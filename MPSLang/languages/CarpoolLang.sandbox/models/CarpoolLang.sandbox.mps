<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2678b336-5a7b-4128-af10-9b850aca7844(CarpoolLang.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="722e4ffa-13ae-440c-b33c-3c19945a9c69" name="CarpoolLang" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="722e4ffa-13ae-440c-b33c-3c19945a9c69" name="CarpoolLang">
      <concept id="6402175329643421469" name="CarpoolLang.structure.RenderCard" flags="ng" index="2hWOun">
        <child id="6402175329643421480" name="title" index="2hWOuy" />
        <child id="6402175329643421535" name="content" index="2hWOvl" />
      </concept>
      <concept id="6402175329643421482" name="CarpoolLang.structure.CardContent" flags="ng" index="2hWOuw">
        <property id="6402175329644195350" name="label" index="2hVNqs" />
      </concept>
      <concept id="6402175329643421475" name="CarpoolLang.structure.CardTitle" flags="ng" index="2hWOuD">
        <property id="6402175329643421479" name="labelTo" index="2hWOuH" />
        <property id="6402175329643421477" name="labelFrom" index="2hWOuJ" />
      </concept>
      <concept id="7076342757642106869" name="CarpoolLang.structure.TableTitle" flags="ng" index="2o7$Zb">
        <property id="7076342757642106872" name="label" index="2o7$Z6" />
      </concept>
      <concept id="7076342757640822315" name="CarpoolLang.structure.Button" flags="ng" index="2o8Iol">
        <property id="7076342757640822318" name="url" index="2o8Iog" />
        <property id="7076342757640822317" name="label" index="2o8Ioj" />
        <child id="8418759418188362492" name="href" index="1IgwfE" />
      </concept>
      <concept id="7076342757640374413" name="CarpoolLang.structure.RenderForm" flags="ng" index="2o932N">
        <child id="7076342757640822319" name="formButton" index="2o8Ioh" />
        <child id="7076342757640458610" name="formInputs" index="2o9m_c" />
      </concept>
      <concept id="7076342757640458606" name="CarpoolLang.structure.FormInput" flags="ng" index="2o9m_g">
        <property id="7076342757640458608" name="inputLabel" index="2o9m_e" />
        <property id="7076342757640458609" name="inputType" index="2o9m_f" />
      </concept>
      <concept id="7076342757641079415" name="CarpoolLang.structure.TableCell" flags="ng" index="2obJ99">
        <property id="7076342757641079417" name="label" index="2obJ97" />
      </concept>
      <concept id="7076342757641079409" name="CarpoolLang.structure.TableRow" flags="ng" index="2obJ9f">
        <child id="7076342757641079419" name="cells" index="2obJ95" />
      </concept>
      <concept id="7076342757641079405" name="CarpoolLang.structure.TableHeading" flags="ng" index="2obJ9j">
        <child id="6402175329643123038" name="cell" index="2hZcBk" />
      </concept>
      <concept id="7076342757641079403" name="CarpoolLang.structure.RenderTable" flags="ng" index="2obJ9l">
        <child id="7076342757642106905" name="title" index="2o7$0B" />
        <child id="7076342757642207222" name="button" index="2o7Wv8" />
        <child id="7076342757641079412" name="tableHeadings" index="2obJ9a" />
        <child id="7076342757641079413" name="tableRows" index="2obJ9b" />
      </concept>
      <concept id="7076342757639698321" name="CarpoolLang.structure.AppRender" flags="ng" index="2ocoYJ">
        <reference id="7076342757639698324" name="componentName" index="2ocoYE" />
        <child id="6402175329643526940" name="renderCard" index="2hWIem" />
        <child id="7076342757640374423" name="renderForm" index="2o932D" />
        <child id="7076342757640234788" name="renderHeading" index="2oetWq" />
        <child id="7076342757640304598" name="renderText" index="2oeGZC" />
        <child id="1567574944605580565" name="listOfChildRenders" index="11Lowe" />
        <child id="7103401930051146464" name="renderTabs" index="3z4oyb" />
      </concept>
      <concept id="7076342757639334838" name="CarpoolLang.structure.AppComponents" flags="ng" index="2od1e8">
        <property id="7076342757639334842" name="authentication" index="2od1e4" />
        <property id="7076342757639334840" name="componentName" index="2od1e6" />
        <property id="7076342757639334841" name="url" index="2od1e7" />
      </concept>
      <concept id="7076342757639418887" name="CarpoolLang.structure.AppApiEndpoints" flags="ng" index="2odkKT">
        <property id="7076342757639418909" name="url" index="2odkKz" />
        <property id="7076342757639418889" name="apiEndpointName" index="2odkKR" />
        <property id="7076342757639418946" name="method" index="2odkLW" />
      </concept>
      <concept id="7076342757640234785" name="CarpoolLang.structure.RenderHeading" flags="ng" index="2oetWv">
        <property id="7076342757640234787" name="value" index="2oetWt" />
      </concept>
      <concept id="7076342757639967511" name="CarpoolLang.structure.RenderText" flags="ng" index="2ofuGD">
        <property id="7076342757639967513" name="value" index="2ofuGB" />
      </concept>
      <concept id="7076342757638906871" name="CarpoolLang.structure.CarpoolNotation" flags="ng" index="2rNpJ9">
        <property id="6402175329643317434" name="footerOption" index="2hWt0K" />
        <property id="6402175329643317433" name="footer" index="2hWt0N" />
        <property id="7076342757639418890" name="appApiUrl" index="2odkKO" />
        <property id="7076342757638952994" name="appPort" index="2rNA0s" />
        <property id="7076342757638952995" name="appTheme" index="2rNA0t" />
        <property id="7076342757638952992" name="appTitle" index="2rNA0u" />
        <property id="7076342757638952993" name="appDescription" index="2rNA0v" />
        <property id="7076342757638952991" name="appName" index="2rNA0x" />
        <property id="7076342757639031665" name="appMenuPosition" index="2rNVdf" />
        <child id="7076342757639778140" name="appRender" index="2ocHty" />
        <child id="7076342757639334843" name="appComponents" index="2od1e5" />
        <child id="7076342757639419013" name="appApiEndpoints" index="2odkMV" />
        <child id="7076342757639056165" name="appMenuItems" index="2rNXcr" />
      </concept>
      <concept id="7076342757639056161" name="CarpoolLang.structure.AppMenuItems" flags="ng" index="2rNXcv">
        <property id="7076342757639056164" name="component" index="2rNXcq" />
        <property id="7076342757639056163" name="label" index="2rNXct" />
      </concept>
      <concept id="7103401930050925745" name="CarpoolLang.structure.TabsListRow" flags="ng" index="3z5yVq">
        <property id="7103401930050925747" name="value" index="3z5yVo" />
        <property id="7103401930050925748" name="label" index="3z5yVv" />
      </concept>
      <concept id="7103401930050925703" name="CarpoolLang.structure.TabsList" flags="ng" index="3z5yVG">
        <child id="7103401930050925749" name="rows" index="3z5yVu" />
      </concept>
      <concept id="7103401930050925701" name="CarpoolLang.structure.RenderTabs" flags="ng" index="3z5yVI">
        <child id="7103401930050925797" name="tables" index="3z5yUe" />
        <child id="7103401930050925705" name="list" index="3z5yVy" />
      </concept>
      <concept id="8418759418188362476" name="CarpoolLang.structure.ButtonLink" flags="ng" index="1IgwfU">
        <property id="8418759418188362478" name="url" index="1IgwfS" />
      </concept>
      <concept id="8418759418188721946" name="CarpoolLang.structure.RenderButtons" flags="ng" index="1IipSc">
        <child id="8418759418188721948" name="buttons" index="1IipSa" />
      </concept>
    </language>
  </registry>
  <node concept="2rNpJ9" id="68Oe3VTY_w2">
    <property role="2rNA0x" value="Carpool App" />
    <property role="2rNA0u" value="JoinMyRide" />
    <property role="2rNA0v" value="Ride sharing" />
    <property role="2rNA0s" value="3000" />
    <property role="2rNA0t" value="light" />
    <property role="2rNVdf" value="top" />
    <property role="2odkKO" value="http://localhost:3000" />
    <property role="2hWt0N" value="Carpool @ 2024" />
    <property role="2hWt0K" value="Yes" />
    <node concept="2rNXcv" id="68Oe3VTZkqm" role="2rNXcr">
      <property role="2rNXct" value="Find a Ride" />
      <property role="2rNXcq" value="FindARide" />
    </node>
    <node concept="2rNXcv" id="68Oe3VTZV3l" role="2rNXcr">
      <property role="2rNXct" value="Home" />
      <property role="2rNXcq" value="Home" />
    </node>
    <node concept="2rNXcv" id="68Oe3VTZV3m" role="2rNXcr">
      <property role="2rNXct" value="Profile" />
      <property role="2rNXcq" value="Profile" />
    </node>
    <node concept="2rNXcv" id="68Oe3VTZkql" role="2rNXcr">
      <property role="2rNXct" value="Add Ride" />
      <property role="2rNXcq" value="AddRide" />
    </node>
    <node concept="2od1e8" id="68Oe3VU0nfY" role="2od1e5">
      <property role="2od1e6" value="Home" />
      <property role="2od1e7" value="/" />
      <property role="2od1e4" value="no" />
    </node>
    <node concept="2od1e8" id="68Oe3VU0nfX" role="2od1e5">
      <property role="2od1e6" value="FindARide" />
      <property role="2od1e7" value="/find-ride" />
      <property role="2od1e4" value="no" />
    </node>
    <node concept="2od1e8" id="68Oe3VU0nfW" role="2od1e5">
      <property role="2od1e6" value="OfferARide" />
      <property role="2od1e7" value="/offer-ride" />
      <property role="2od1e4" value="yes" />
    </node>
    <node concept="2od1e8" id="68Oe3VU0nfV" role="2od1e5">
      <property role="2od1e6" value="RideDetails" />
      <property role="2od1e7" value="/ride-details" />
      <property role="2od1e4" value="no" />
    </node>
    <node concept="2od1e8" id="68Oe3VU0nfU" role="2od1e5">
      <property role="2od1e6" value="Profile" />
      <property role="2od1e7" value="/profile" />
      <property role="2od1e4" value="yes" />
    </node>
    <node concept="2od1e8" id="68Oe3VU0nfT" role="2od1e5">
      <property role="2od1e6" value="Sign Up" />
      <property role="2od1e7" value="/auth/signup" />
      <property role="2od1e4" value="no" />
    </node>
    <node concept="2od1e8" id="68Oe3VU0nfR" role="2od1e5">
      <property role="2od1e6" value="Login" />
      <property role="2od1e7" value="/auth/signin" />
      <property role="2od1e4" value="no" />
    </node>
    <node concept="2odkKT" id="68Oe3VU1e3y" role="2odkMV">
      <property role="2odkKR" value="findRide" />
      <property role="2odkKz" value="/api/rides" />
      <property role="2odkLW" value="GET" />
    </node>
    <node concept="2odkKT" id="68Oe3VU1e3x" role="2odkMV">
      <property role="2odkKR" value="offerRide" />
      <property role="2odkKz" value="/api/rides" />
      <property role="2odkLW" value="POST" />
    </node>
    <node concept="2odkKT" id="68Oe3VU1e3w" role="2odkMV">
      <property role="2odkKR" value="profile" />
      <property role="2odkKz" value="/api/users/[userId]" />
      <property role="2odkLW" value="GET" />
    </node>
    <node concept="2odkKT" id="68Oe3VU1e3v" role="2odkMV">
      <property role="2odkKR" value="addCar" />
      <property role="2odkKz" value="/api/cars?ownerId=[userId]" />
      <property role="2odkLW" value="POST" />
    </node>
    <node concept="2odkKT" id="68Oe3VU1e3u" role="2odkMV">
      <property role="2odkKR" value="editCar" />
      <property role="2odkKz" value="/api/users/[userId]/cars/[carId]" />
      <property role="2odkLW" value="PUT" />
    </node>
    <node concept="2odkKT" id="68Oe3VU1e3t" role="2odkMV">
      <property role="2odkKR" value="deleteCar" />
      <property role="2odkKz" value="/api/users/[userId]/cars/[carId]" />
      <property role="2odkLW" value="DELETE" />
    </node>
    <node concept="2odkKT" id="68Oe3VU1e3s" role="2odkMV">
      <property role="2odkKR" value="signin" />
      <property role="2odkKz" value="/api/auth/signin" />
      <property role="2odkLW" value="POST" />
    </node>
    <node concept="2odkKT" id="68Oe3VU0$Dn" role="2odkMV">
      <property role="2odkKR" value="signout" />
      <property role="2odkKz" value="/api/auth/signout" />
      <property role="2odkLW" value="POST" />
    </node>
    <node concept="2ocoYJ" id="68Oe3VU3Jvj" role="2ocHty">
      <ref role="2ocoYE" node="68Oe3VU0nfY" />
      <node concept="2oetWv" id="68Oe3VU3Jvk" role="2oetWq">
        <property role="2oetWt" value="Welcome to Carpool Ride Sharing Dashboard" />
      </node>
      <node concept="2ofuGD" id="68Oe3VU40y5" role="2oeGZC">
        <property role="2ofuGB" value="Find rides, offer rides and manage your trips here." />
      </node>
      <node concept="2oetWv" id="7jlshoq_RbB" role="11Lowe">
        <property role="2oetWt" value="Welcome to RideTogether" />
      </node>
      <node concept="2ofuGD" id="7jlshoq_RbD" role="11Lowe">
        <property role="2ofuGB" value="Travel smarter, save money, and reduce carbon footprints by carpooling!" />
      </node>
      <node concept="1IipSc" id="7jlshoqCbeQ" role="11Lowe">
        <node concept="2o8Iol" id="7jlshoqCbeS" role="1IipSa">
          <property role="2o8Ioj" value="Find a Ride" />
          <node concept="1IgwfU" id="7jlshoqD7GJ" role="1IgwfE">
            <property role="1IgwfS" value="/find-ride" />
          </node>
        </node>
        <node concept="2o8Iol" id="7jlshoqCbeU" role="1IipSa">
          <property role="2o8Ioj" value="Offer a Ride" />
          <node concept="1IgwfU" id="7jlshoqD7GK" role="1IgwfE">
            <property role="1IgwfS" value="/add-ride" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2ocoYJ" id="68Oe3VU40y6" role="2ocHty">
      <ref role="2ocoYE" node="68Oe3VU0nfX" />
      <node concept="2o932N" id="3$oVHIS1J3W" role="2o932D">
        <node concept="2o9m_g" id="3$oVHIS1J3X" role="2o9m_c">
          <property role="2o9m_e" value="From:" />
        </node>
        <node concept="2o9m_g" id="3$oVHIS1J3Y" role="2o9m_c">
          <property role="2o9m_e" value="To" />
        </node>
        <node concept="2o9m_g" id="3$oVHIS1J3Z" role="2o9m_c">
          <property role="2o9m_e" value="Date" />
          <property role="2o9m_f" value="68Oe3VU40yh/Date" />
        </node>
        <node concept="2o8Iol" id="3$oVHIS1J40" role="2o8Ioh">
          <property role="2o8Ioj" value="Find ride" />
        </node>
      </node>
      <node concept="2hWOun" id="3$oVHIS1J41" role="2hWIem">
        <node concept="2hWOuD" id="3$oVHIS1J42" role="2hWOuy">
          <property role="2hWOuJ" value="ride.origin" />
          <property role="2hWOuH" value="ride.destination" />
        </node>
        <node concept="2hWOuw" id="3$oVHIS1J43" role="2hWOvl">
          <property role="2hVNqs" value="ride.date" />
        </node>
        <node concept="2hWOuw" id="3$oVHIS1J44" role="2hWOvl">
          <property role="2hVNqs" value="ride.deprartureTime" />
        </node>
        <node concept="2hWOuw" id="3$oVHIS1J45" role="2hWOvl">
          <property role="2hVNqs" value="ride.seatsAvailable" />
        </node>
        <node concept="2hWOuw" id="3$oVHIS1J46" role="2hWOvl">
          <property role="2hVNqs" value="ride.pricePerSeat" />
        </node>
        <node concept="2hWOuw" id="3$oVHIS1J47" role="2hWOvl">
          <property role="2hVNqs" value="ride.comments" />
        </node>
        <node concept="2hWOuw" id="3$oVHIS1J48" role="2hWOvl">
          <property role="2hVNqs" value="ride.driver.name" />
        </node>
      </node>
      <node concept="2oetWv" id="7jlshoqA3GL" role="11Lowe">
        <property role="2oetWt" value="Find a Ride" />
      </node>
      <node concept="2o932N" id="7jlshoqD7GM" role="11Lowe">
        <node concept="2o9m_g" id="7jlshoqD7GO" role="2o9m_c">
          <property role="2o9m_e" value="From" />
        </node>
        <node concept="2o9m_g" id="7jlshoqD7GQ" role="2o9m_c">
          <property role="2o9m_e" value="To" />
        </node>
        <node concept="2o9m_g" id="7jlshoqD7GR" role="2o9m_c">
          <property role="2o9m_e" value="Date" />
        </node>
        <node concept="2o8Iol" id="7jlshoqD7GX" role="2o8Ioh">
          <property role="2o8Ioj" value="Find ride" />
        </node>
      </node>
      <node concept="2hWOun" id="7jlshoqA3GN" role="11Lowe">
        <node concept="2hWOuD" id="7jlshoqA3GP" role="2hWOuy">
          <property role="2hWOuJ" value="ride.origin" />
          <property role="2hWOuH" value="ride.destination" />
        </node>
        <node concept="2hWOuw" id="7jlshoqA3GR" role="2hWOvl">
          <property role="2hVNqs" value="ride.date" />
        </node>
        <node concept="2hWOuw" id="7jlshoqBeWh" role="2hWOvl">
          <property role="2hVNqs" value="ride.departureTime" />
        </node>
        <node concept="2hWOuw" id="7jlshoqBeWi" role="2hWOvl">
          <property role="2hVNqs" value="ride.seatsAvailable" />
        </node>
        <node concept="2hWOuw" id="7jlshoqBeWj" role="2hWOvl">
          <property role="2hVNqs" value="ride.pricePerSeat" />
        </node>
        <node concept="2hWOuw" id="7jlshoqBeWk" role="2hWOvl">
          <property role="2hVNqs" value="ride.comments" />
        </node>
        <node concept="2hWOuw" id="7jlshoqBeWl" role="2hWOvl">
          <property role="2hVNqs" value="ride.driver.name" />
        </node>
      </node>
    </node>
    <node concept="2ocoYJ" id="68Oe3VU40yb" role="2ocHty">
      <ref role="2ocoYE" node="68Oe3VU0nfW" />
      <node concept="2oetWv" id="68Oe3VU40yc" role="2oetWq">
        <property role="2oetWt" value="Offer a New Ride" />
      </node>
      <node concept="2o932N" id="68Oe3VU59uJ" role="2o932D">
        <node concept="2o9m_g" id="68Oe3VU5HS$" role="2o9m_c">
          <property role="2o9m_e" value="Start Location" />
        </node>
        <node concept="2o9m_g" id="68Oe3VU5HS_" role="2o9m_c">
          <property role="2o9m_e" value="End Location" />
        </node>
        <node concept="2o9m_g" id="68Oe3VU5HSD" role="2o9m_c">
          <property role="2o9m_e" value="Date of Travel" />
          <property role="2o9m_f" value="68Oe3VU40yh/Date" />
        </node>
        <node concept="2o9m_g" id="68Oe3VU5HSC" role="2o9m_c">
          <property role="2o9m_e" value="Time" />
          <property role="2o9m_f" value="68Oe3VU40yi/Time" />
        </node>
        <node concept="2o9m_g" id="68Oe3VU5HSB" role="2o9m_c">
          <property role="2o9m_e" value="Available Seats" />
          <property role="2o9m_f" value="68Oe3VU40yj/Number" />
        </node>
        <node concept="2o9m_g" id="68Oe3VU5HSA" role="2o9m_c">
          <property role="2o9m_e" value="Cost per Seat in EUR" />
          <property role="2o9m_f" value="68Oe3VU40yj/Number" />
        </node>
        <node concept="2o9m_g" id="68Oe3VU59uK" role="2o9m_c">
          <property role="2o9m_e" value="Additional Info" />
          <property role="2o9m_f" value="68Oe3VU40yk/TextArea" />
        </node>
        <node concept="2o8Iol" id="68Oe3VU62sr" role="2o8Ioh">
          <property role="2o8Ioj" value="Offer a Ride" />
          <property role="2o8Iog" value="/offer-ride" />
        </node>
      </node>
      <node concept="2o932N" id="7jlshoqD7GY" role="11Lowe">
        <node concept="2o9m_g" id="7jlshoqD7GZ" role="2o9m_c">
          <property role="2o9m_e" value="Start Location" />
        </node>
        <node concept="2o9m_g" id="7jlshoqD7H0" role="2o9m_c">
          <property role="2o9m_e" value="End Location" />
        </node>
        <node concept="2o9m_g" id="7jlshoqD7H1" role="2o9m_c">
          <property role="2o9m_e" value="Date of Travel" />
          <property role="2o9m_f" value="68Oe3VU40yh/Date" />
        </node>
        <node concept="2o9m_g" id="7jlshoqD7H2" role="2o9m_c">
          <property role="2o9m_e" value="Time" />
          <property role="2o9m_f" value="68Oe3VU40yi/Time" />
        </node>
        <node concept="2o9m_g" id="7jlshoqD7H3" role="2o9m_c">
          <property role="2o9m_e" value="Available Seats" />
          <property role="2o9m_f" value="68Oe3VU40yj/Number" />
        </node>
        <node concept="2o9m_g" id="7jlshoqD7H4" role="2o9m_c">
          <property role="2o9m_e" value="Cost per Seat in EUR" />
          <property role="2o9m_f" value="68Oe3VU40yj/Number" />
        </node>
        <node concept="2o9m_g" id="7jlshoqD7H5" role="2o9m_c">
          <property role="2o9m_e" value="Additional Info" />
          <property role="2o9m_f" value="68Oe3VU40yk/TextArea" />
        </node>
        <node concept="2o8Iol" id="7jlshoqD7H6" role="2o8Ioh">
          <property role="2o8Ioj" value="Offer a Ride" />
          <node concept="1IgwfU" id="7jlshoqD7H7" role="1IgwfE">
            <property role="1IgwfS" value="/offer-ride" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2ocoYJ" id="68Oe3VU6GD$" role="2ocHty">
      <ref role="2ocoYE" node="68Oe3VU0nfU" />
      <node concept="2ofuGD" id="68Oe3VU6GDA" role="2oeGZC">
        <property role="2ofuGB" value="@ {{session?.user.username}}" />
      </node>
      <node concept="2oetWv" id="68Oe3VU6GD_" role="2oetWq">
        <property role="2oetWt" value="{{session?.user.name}} {{session?.user.surname}}" />
      </node>
      <node concept="3z5yVI" id="3$oVHIS1J49" role="3z4oyb">
        <node concept="3z5yVG" id="3$oVHIS1J4a" role="3z5yVy">
          <node concept="3z5yVq" id="3$oVHIS1J4b" role="3z5yVu">
            <property role="3z5yVo" value="cars" />
            <property role="3z5yVv" value="My Cars" />
          </node>
        </node>
        <node concept="3z5yVG" id="3$oVHIS1J4j" role="3z5yVy">
          <node concept="3z5yVq" id="3$oVHIS1J4k" role="3z5yVu">
            <property role="3z5yVo" value="rides" />
            <property role="3z5yVv" value="My Rides" />
          </node>
        </node>
        <node concept="2obJ9l" id="3$oVHIS1J4c" role="3z5yUe">
          <node concept="2obJ9j" id="3$oVHIS1J4l" role="2obJ9a">
            <node concept="2obJ99" id="3$oVHIS1J4m" role="2hZcBk">
              <property role="2obJ97" value="Model" />
            </node>
          </node>
          <node concept="2obJ9j" id="3$oVHIS1J4d" role="2obJ9a">
            <node concept="2obJ99" id="3$oVHIS1J4e" role="2hZcBk">
              <property role="2obJ97" value="Year" />
            </node>
            <node concept="2obJ99" id="3$oVHIS1J4n" role="2hZcBk">
              <property role="2obJ97" value="License Plate" />
            </node>
            <node concept="2obJ99" id="3$oVHIS1J4o" role="2hZcBk">
              <property role="2obJ97" value="Actions" />
            </node>
          </node>
          <node concept="2obJ9f" id="3$oVHIS1J4f" role="2obJ9b">
            <node concept="2obJ99" id="3$oVHIS1J4g" role="2obJ95">
              <property role="2obJ97" value="{{car.carModel}}" />
            </node>
            <node concept="2obJ99" id="3$oVHIS1J4p" role="2obJ95">
              <property role="2obJ97" value="{{car.year}}" />
            </node>
            <node concept="2obJ99" id="3$oVHIS1J4q" role="2obJ95">
              <property role="2obJ97" value="{{car.licensePlate}}" />
            </node>
          </node>
          <node concept="2o7$Zb" id="3$oVHIS1J4h" role="2o7$0B">
            <property role="2o7$Z6" value="My Cars" />
          </node>
          <node concept="2o8Iol" id="3$oVHIS1J4i" role="2o7Wv8">
            <property role="2o8Ioj" value="Add New Car" />
            <property role="2o8Iog" value="/profile/add-car" />
          </node>
        </node>
        <node concept="2obJ9l" id="3$oVHIS1J4_" role="3z5yUe">
          <node concept="2obJ9j" id="3$oVHIS1J4A" role="2obJ9a">
            <node concept="2obJ99" id="3$oVHIS1J4B" role="2hZcBk">
              <property role="2obJ97" value="Origin" />
            </node>
          </node>
          <node concept="2obJ9j" id="3$oVHIS1J4I" role="2obJ9a">
            <node concept="2obJ99" id="3$oVHIS1J4J" role="2hZcBk">
              <property role="2obJ97" value="Destionation" />
            </node>
            <node concept="2obJ99" id="3$oVHIS1J4K" role="2hZcBk">
              <property role="2obJ97" value="Date" />
            </node>
            <node concept="2obJ99" id="3$oVHIS1J4L" role="2hZcBk">
              <property role="2obJ97" value="Time" />
            </node>
            <node concept="2obJ99" id="3$oVHIS1J4M" role="2hZcBk">
              <property role="2obJ97" value="Price" />
            </node>
            <node concept="2obJ99" id="3$oVHIS1J4N" role="2hZcBk">
              <property role="2obJ97" value="Actions" />
            </node>
          </node>
          <node concept="2obJ9f" id="3$oVHIS1J4C" role="2obJ9b">
            <node concept="2obJ99" id="3$oVHIS1J4D" role="2obJ95">
              <property role="2obJ97" value="{{ride.origin}}" />
            </node>
            <node concept="2obJ99" id="3$oVHIS1J4O" role="2obJ95">
              <property role="2obJ97" value="{{ride.destination}}" />
            </node>
            <node concept="2obJ99" id="3$oVHIS1J4P" role="2obJ95">
              <property role="2obJ97" value="{{ride.date}}" />
            </node>
            <node concept="2obJ99" id="3$oVHIS1J4Q" role="2obJ95">
              <property role="2obJ97" value="{{ride.departureTime}}" />
            </node>
            <node concept="2obJ99" id="3$oVHIS1J4R" role="2obJ95">
              <property role="2obJ97" value="{{ride.pricePerSeat}}" />
            </node>
          </node>
          <node concept="2o7$Zb" id="3$oVHIS1J4E" role="2o7$0B">
            <property role="2o7$Z6" value="My Rides" />
          </node>
          <node concept="2o8Iol" id="3$oVHIS1J4F" role="2o7Wv8">
            <property role="2o8Ioj" value="Book a Ride" />
            <property role="2o8Iog" value="/find-rides" />
          </node>
        </node>
      </node>
      <node concept="2oetWv" id="7jlshoqD7H8" role="11Lowe">
        <property role="2oetWt" value="{{session?.user.name}} {{session?.user.surname}}" />
      </node>
      <node concept="2ofuGD" id="7jlshoqD7Ha" role="11Lowe">
        <property role="2ofuGB" value="@ {{session?.user.username}}" />
      </node>
      <node concept="3z5yVI" id="7jlshoqD7Hd" role="11Lowe">
        <node concept="3z5yVG" id="7jlshoqD7Hf" role="3z5yVy">
          <node concept="3z5yVq" id="7jlshoqD7Hh" role="3z5yVu">
            <property role="3z5yVo" value="cars" />
            <property role="3z5yVv" value="My Cars" />
          </node>
          <node concept="3z5yVq" id="7jlshoqD7Hx" role="3z5yVu">
            <property role="3z5yVo" value="rides" />
            <property role="3z5yVv" value="My Rides" />
          </node>
        </node>
        <node concept="2obJ9l" id="7jlshoqD8Fu" role="3z5yUe">
          <node concept="2obJ9j" id="7jlshoqD8Fv" role="2obJ9a">
            <node concept="2obJ99" id="7jlshoqD8Fw" role="2hZcBk">
              <property role="2obJ97" value="Model" />
            </node>
            <node concept="2obJ99" id="7jlshoqD8F$" role="2hZcBk">
              <property role="2obJ97" value="Year" />
            </node>
            <node concept="2obJ99" id="7jlshoqD8F_" role="2hZcBk">
              <property role="2obJ97" value="License Plate" />
            </node>
            <node concept="2obJ99" id="7jlshoqD8FA" role="2hZcBk">
              <property role="2obJ97" value="Actions" />
            </node>
          </node>
          <node concept="2obJ9f" id="7jlshoqD8Fx" role="2obJ9b">
            <node concept="2obJ99" id="7jlshoqD8Fy" role="2obJ95">
              <property role="2obJ97" value="{{car.carModel}}" />
            </node>
            <node concept="2obJ99" id="7jlshoqD8FB" role="2obJ95">
              <property role="2obJ97" value="{{car.year}}" />
            </node>
            <node concept="2obJ99" id="7jlshoqD8FC" role="2obJ95">
              <property role="2obJ97" value="{{car.licensePlate}}" />
            </node>
          </node>
          <node concept="2o7$Zb" id="7jlshoqD8Fz" role="2o7$0B">
            <property role="2o7$Z6" value="My Cars" />
          </node>
        </node>
        <node concept="2obJ9l" id="7jlshoqD7Hj" role="3z5yUe">
          <node concept="2obJ9j" id="7jlshoqD7Hl" role="2obJ9a">
            <node concept="2obJ99" id="7jlshoqD7Hn" role="2hZcBk">
              <property role="2obJ97" value="Origin" />
            </node>
            <node concept="2obJ99" id="7jlshoqD7Hy" role="2hZcBk">
              <property role="2obJ97" value="Destination" />
            </node>
            <node concept="2obJ99" id="7jlshoqD7Hz" role="2hZcBk">
              <property role="2obJ97" value="Date" />
            </node>
            <node concept="2obJ99" id="7jlshoqD7H$" role="2hZcBk">
              <property role="2obJ97" value="Time" />
            </node>
            <node concept="2obJ99" id="7jlshoqD8FD" role="2hZcBk">
              <property role="2obJ97" value="Price" />
            </node>
            <node concept="2obJ99" id="7jlshoqD8FE" role="2hZcBk">
              <property role="2obJ97" value="Actions" />
            </node>
          </node>
          <node concept="2obJ9f" id="7jlshoqD7Hp" role="2obJ9b">
            <node concept="2obJ99" id="7jlshoqD7Hr" role="2obJ95">
              <property role="2obJ97" value="{{ride.origin}}" />
            </node>
            <node concept="2obJ99" id="7jlshoqD7HA" role="2obJ95">
              <property role="2obJ97" value="{{ride.destination}}" />
            </node>
            <node concept="2obJ99" id="7jlshoqD8FF" role="2obJ95">
              <property role="2obJ97" value="{{ride.date}}" />
            </node>
            <node concept="2obJ99" id="7jlshoqD8FG" role="2obJ95">
              <property role="2obJ97" value="{{ride.departureTime}}" />
            </node>
            <node concept="2obJ99" id="7jlshoqD8FH" role="2obJ95">
              <property role="2obJ97" value="{{ride.pricePerSeat}}" />
            </node>
          </node>
          <node concept="2o7$Zb" id="7jlshoqD7Ht" role="2o7$0B">
            <property role="2o7$Z6" value="My Rides" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2ocoYJ" id="68Oe3VUbo$7" role="2ocHty">
      <ref role="2ocoYE" node="68Oe3VU0nfR" />
      <node concept="2oetWv" id="68Oe3VUbo$8" role="2oetWq">
        <property role="2oetWt" value="Login" />
      </node>
      <node concept="2o932N" id="68Oe3VUbo$9" role="2o932D">
        <node concept="2o9m_g" id="68Oe3VUbo$a" role="2o9m_c">
          <property role="2o9m_e" value="Email" />
          <property role="2o9m_f" value="68Oe3VU40yl/Email" />
        </node>
        <node concept="2o9m_g" id="68Oe3VUbo$b" role="2o9m_c">
          <property role="2o9m_e" value="Password" />
          <property role="2o9m_f" value="68Oe3VU40ym/Password" />
        </node>
        <node concept="2o8Iol" id="68Oe3VUbo$c" role="2o8Ioh">
          <property role="2o8Ioj" value="Login" />
          <property role="2o8Iog" value="/login" />
        </node>
      </node>
      <node concept="2oetWv" id="7jlshoqD8FI" role="11Lowe">
        <property role="2oetWt" value="Login" />
      </node>
      <node concept="2o932N" id="7jlshoqD8FZ" role="11Lowe">
        <node concept="2o9m_g" id="7jlshoqD8G1" role="2o9m_c">
          <property role="2o9m_e" value="Email" />
          <property role="2o9m_f" value="68Oe3VU40yl/Email" />
        </node>
        <node concept="2o9m_g" id="7jlshoqD8G3" role="2o9m_c">
          <property role="2o9m_e" value="Password" />
          <property role="2o9m_f" value="68Oe3VU40ym/Password" />
        </node>
        <node concept="2o8Iol" id="7jlshoqD8G4" role="2o8Ioh">
          <property role="2o8Ioj" value="Login" />
          <node concept="1IgwfU" id="7jlshoqD8G5" role="1IgwfE">
            <property role="1IgwfS" value="/login" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

