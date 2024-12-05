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
        <child id="6402175329643421486" name="cell" index="2hWOu$" />
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
      <concept id="7076342757638906878" name="CarpoolLang.structure.AppTitle" flags="ng" index="2rNpJ0" />
      <concept id="7076342757638906874" name="CarpoolLang.structure.AppName" flags="ng" index="2rNpJ4" />
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
        <child id="7076342757638906877" name="appName" index="2rNpJ3" />
        <child id="7076342757638906885" name="appDescription" index="2rNpKV" />
        <child id="7076342757638906881" name="appTitle" index="2rNpKZ" />
        <child id="7076342757639056165" name="appMenuItems" index="2rNXcr" />
      </concept>
      <concept id="7076342757638906882" name="CarpoolLang.structure.AppDescription" flags="ng" index="2rNpKW" />
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
    <node concept="2rNpJ4" id="68Oe3VTY_w3" role="2rNpJ3" />
    <node concept="2rNpJ0" id="68Oe3VTY_w4" role="2rNpKZ" />
    <node concept="2rNpKW" id="68Oe3VTY_w5" role="2rNpKV" />
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
    </node>
    <node concept="2ocoYJ" id="68Oe3VU40y6" role="2ocHty">
      <ref role="2ocoYE" node="68Oe3VU0nfX" />
      <node concept="2o932N" id="5zp68F9d7_I" role="2o932D">
        <node concept="2o9m_g" id="5zp68F9d7_J" role="2o9m_c">
          <property role="2o9m_e" value="From" />
        </node>
        <node concept="2o9m_g" id="5zp68F9d7_K" role="2o9m_c">
          <property role="2o9m_e" value="To" />
        </node>
        <node concept="2o9m_g" id="5zp68F9d7_L" role="2o9m_c">
          <property role="2o9m_e" value="Date" />
          <property role="2o9m_f" value="68Oe3VU40yh/Date" />
        </node>
        <node concept="2o8Iol" id="5zp68F9d7_M" role="2o8Ioh">
          <property role="2o8Ioj" value="Find ride" />
        </node>
      </node>
      <node concept="2hWOun" id="5zp68F9d7_N" role="2hWIem">
        <node concept="2hWOuD" id="5zp68F9d7_O" role="2hWOuy">
          <property role="2hWOuJ" value="ride.origin" />
          <property role="2hWOuH" value="ride.destination" />
        </node>
        <node concept="2hWOuw" id="5zp68F9d7_P" role="2hWOvl">
          <property role="2hVNqs" value="ride.date" />
          <node concept="2obJ99" id="5zp68F9d7_Q" role="2hWOu$" />
        </node>
        <node concept="2hWOuw" id="5zp68F9eraZ" role="2hWOvl">
          <property role="2hVNqs" value="ride.departureTime" />
        </node>
        <node concept="2hWOuw" id="5zp68F9erb0" role="2hWOvl">
          <property role="2hVNqs" value="ride.seatsAvailable" />
        </node>
        <node concept="2hWOuw" id="5zp68F9erb7" role="2hWOvl">
          <property role="2hVNqs" value="ride.pricePerSeat" />
        </node>
        <node concept="2hWOuw" id="5zp68F9erbh" role="2hWOvl">
          <property role="2hVNqs" value="ride.comments" />
        </node>
        <node concept="2hWOuw" id="5zp68F9erbi" role="2hWOvl">
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
    </node>
    <node concept="2ocoYJ" id="68Oe3VU6GD$" role="2ocHty">
      <ref role="2ocoYE" node="68Oe3VU0nfU" />
      <node concept="2ofuGD" id="68Oe3VU6GDA" role="2oeGZC">
        <property role="2ofuGB" value="@ {{session?.user.username}}" />
      </node>
      <node concept="2oetWv" id="68Oe3VU6GD_" role="2oetWq">
        <property role="2oetWt" value="{session?.user.name}} {{session?.user.surname}}" />
      </node>
      <node concept="3z5yVI" id="6akmAI1yTMi" role="3z4oyb">
        <node concept="3z5yVG" id="6akmAI1yTMj" role="3z5yVy">
          <node concept="3z5yVq" id="6akmAI1yTMk" role="3z5yVu">
            <property role="3z5yVo" value="cars" />
            <property role="3z5yVv" value="My Cars" />
          </node>
        </node>
        <node concept="3z5yVG" id="6akmAI1zotQ" role="3z5yVy">
          <node concept="3z5yVq" id="6akmAI1zotR" role="3z5yVu">
            <property role="3z5yVo" value="rdes" />
            <property role="3z5yVv" value="My Rides" />
          </node>
        </node>
        <node concept="2obJ9l" id="6akmAI1yTMl" role="3z5yUe">
          <node concept="2obJ9j" id="6akmAI1yTMm" role="2obJ9a">
            <node concept="2obJ99" id="6akmAI1yTMn" role="2hZcBk">
              <property role="2obJ97" value="Model" />
            </node>
            <node concept="2obJ99" id="6akmAI1zou6" role="2hZcBk">
              <property role="2obJ97" value="Year" />
            </node>
            <node concept="2obJ99" id="6akmAI1zou7" role="2hZcBk">
              <property role="2obJ97" value="License Plate" />
            </node>
            <node concept="2obJ99" id="6akmAI1zou8" role="2hZcBk">
              <property role="2obJ97" value="Actions" />
            </node>
          </node>
          <node concept="2obJ9f" id="6akmAI1yTMo" role="2obJ9b">
            <node concept="2obJ99" id="6akmAI1yTMp" role="2obJ95">
              <property role="2obJ97" value="{{car.carModel}}" />
            </node>
            <node concept="2obJ99" id="6akmAI1zou9" role="2obJ95">
              <property role="2obJ97" value="{{car.year}}" />
            </node>
            <node concept="2obJ99" id="6akmAI1zoua" role="2obJ95">
              <property role="2obJ97" value="{{car.licensePlate" />
            </node>
          </node>
          <node concept="2o7$Zb" id="6akmAI1yTMq" role="2o7$0B">
            <property role="2o7$Z6" value="My Cars" />
          </node>
          <node concept="2o8Iol" id="6akmAI1yTMr" role="2o7Wv8">
            <property role="2o8Iog" value="/profile/add-car" />
            <property role="2o8Ioj" value="Add New Car" />
          </node>
        </node>
        <node concept="2obJ9l" id="6akmAI1zov6" role="3z5yUe">
          <node concept="2obJ9j" id="6akmAI1zov7" role="2obJ9a">
            <node concept="2obJ99" id="6akmAI1zov8" role="2hZcBk">
              <property role="2obJ97" value="Origin" />
            </node>
            <node concept="2obJ99" id="6akmAI1zovd" role="2hZcBk">
              <property role="2obJ97" value="Destination" />
            </node>
            <node concept="2obJ99" id="6akmAI1zove" role="2hZcBk">
              <property role="2obJ97" value="Date" />
            </node>
            <node concept="2obJ99" id="6akmAI1zovf" role="2hZcBk">
              <property role="2obJ97" value="Time" />
            </node>
            <node concept="2obJ99" id="6akmAI1zovg" role="2hZcBk">
              <property role="2obJ97" value="Price" />
            </node>
            <node concept="2obJ99" id="6akmAI1zovh" role="2hZcBk">
              <property role="2obJ97" value="Actions" />
            </node>
          </node>
          <node concept="2obJ9f" id="6akmAI1zov9" role="2obJ9b">
            <node concept="2obJ99" id="6akmAI1zova" role="2obJ95">
              <property role="2obJ97" value="{{ride.origin}}" />
            </node>
            <node concept="2obJ99" id="6akmAI1zovi" role="2obJ95">
              <property role="2obJ97" value="{{ride.destination}}" />
            </node>
            <node concept="2obJ99" id="6akmAI1zovj" role="2obJ95">
              <property role="2obJ97" value="{{ride.date}}" />
            </node>
            <node concept="2obJ99" id="6akmAI1zovk" role="2obJ95">
              <property role="2obJ97" value="{{ride.departureTime}}" />
            </node>
            <node concept="2obJ99" id="6akmAI1zovl" role="2obJ95">
              <property role="2obJ97" value="{{ride.pricePerSeat}}" />
            </node>
          </node>
          <node concept="2o7$Zb" id="6akmAI1zovb" role="2o7$0B">
            <property role="2o7$Z6" value="My Rides" />
          </node>
          <node concept="2o8Iol" id="6akmAI1zovc" role="2o7Wv8">
            <property role="2o8Ioj" value="Book a Ride" />
            <property role="2o8Iog" value="/find-rides" />
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
    </node>
  </node>
</model>

