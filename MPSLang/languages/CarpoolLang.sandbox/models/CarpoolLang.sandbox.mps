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
        <child id="7076342757641079412" name="tableHeadings" index="2obJ9a" />
        <child id="7076342757641079413" name="tableRows" index="2obJ9b" />
      </concept>
      <concept id="7076342757639698321" name="CarpoolLang.structure.AppRender" flags="ng" index="2ocoYJ">
        <reference id="7076342757639698324" name="componentName" index="2ocoYE" />
        <child id="1567574944605580565" name="listOfChildRenders" index="11Lowe" />
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
  <node concept="2rNpJ9" id="2eH18dHfKX8">
    <property role="2rNA0x" value="Carpool App" />
    <property role="2rNA0u" value="JoinMyRide" />
    <property role="2rNA0v" value="Ride sharing" />
    <property role="2rNA0s" value="300" />
    <property role="2hWt0N" value="Carpool @ 2024" />
    <property role="2hWt0K" value="Yes" />
    <property role="2rNA0t" value="light" />
    <property role="2rNVdf" value="left" />
    <property role="2odkKO" value="http://localhost:300" />
    <node concept="2rNXcv" id="2eH18dHfKX9" role="2rNXcr">
      <property role="2rNXct" value="Find a Ride" />
      <property role="2rNXcq" value="FindARide" />
    </node>
    <node concept="2rNXcv" id="2eH18dHfKXd" role="2rNXcr">
      <property role="2rNXct" value="Home" />
      <property role="2rNXcq" value="Home" />
    </node>
    <node concept="2rNXcv" id="2eH18dHfKXe" role="2rNXcr">
      <property role="2rNXct" value="Profile" />
      <property role="2rNXcq" value="Profile" />
    </node>
    <node concept="2rNXcv" id="2eH18dHfKXf" role="2rNXcr">
      <property role="2rNXct" value="Add Ride" />
      <property role="2rNXcq" value="AddRide" />
    </node>
    <node concept="2od1e8" id="2eH18dHfKXa" role="2od1e5">
      <property role="2od1e6" value="Home" />
      <property role="2od1e7" value="/" />
      <property role="2od1e4" value="no" />
    </node>
    <node concept="2od1e8" id="2eH18dHfKXg" role="2od1e5">
      <property role="2od1e6" value="FindARide" />
      <property role="2od1e7" value="/find-ride" />
      <property role="2od1e4" value="no" />
    </node>
    <node concept="2od1e8" id="2eH18dHfKXh" role="2od1e5">
      <property role="2od1e6" value="OfferARide" />
      <property role="2od1e7" value="/offer-ride" />
      <property role="2od1e4" value="yes" />
    </node>
    <node concept="2od1e8" id="2eH18dHfKXi" role="2od1e5">
      <property role="2od1e6" value="RideDetails" />
      <property role="2od1e7" value="/ride-details" />
      <property role="2od1e4" value="yes" />
    </node>
    <node concept="2od1e8" id="2eH18dHfKXj" role="2od1e5">
      <property role="2od1e6" value="Profile" />
      <property role="2od1e7" value="/profile" />
      <property role="2od1e4" value="yes" />
    </node>
    <node concept="2od1e8" id="2eH18dHfKXk" role="2od1e5">
      <property role="2od1e6" value="Sign Up" />
      <property role="2od1e7" value="/auth/signup" />
      <property role="2od1e4" value="no" />
    </node>
    <node concept="2od1e8" id="2eH18dHfKXl" role="2od1e5">
      <property role="2od1e6" value="Login" />
      <property role="2od1e7" value="/auth/sigin" />
      <property role="2od1e4" value="no" />
    </node>
    <node concept="2odkKT" id="2eH18dHfKXb" role="2odkMV">
      <property role="2odkKR" value="findRide" />
      <property role="2odkKz" value="/api/ride" />
    </node>
    <node concept="2odkKT" id="2eH18dHfKXm" role="2odkMV">
      <property role="2odkKR" value="offerRide" />
      <property role="2odkKz" value="/api/rides" />
      <property role="2odkLW" value="5zp68F98GSm/POST" />
    </node>
    <node concept="2odkKT" id="2eH18dHfKXq" role="2odkMV">
      <property role="2odkKR" value="profile" />
      <property role="2odkKz" value="/api/users/[userId]" />
    </node>
    <node concept="2odkKT" id="2eH18dHfKXr" role="2odkMV">
      <property role="2odkKR" value="addCar" />
      <property role="2odkKz" value="/api/cars?ownerId=[userId]" />
      <property role="2odkLW" value="5zp68F98GSm/POST" />
    </node>
    <node concept="2odkKT" id="2eH18dHfKXs" role="2odkMV">
      <property role="2odkKR" value="editCar" />
      <property role="2odkKz" value="/api/users/[userId]/cars/[carId]" />
      <property role="2odkLW" value="5zp68F98GSo/DELETE" />
    </node>
    <node concept="2odkKT" id="2eH18dHfKXt" role="2odkMV">
      <property role="2odkKR" value="sigin" />
      <property role="2odkKz" value="/api/auth/sigin" />
      <property role="2odkLW" value="5zp68F98GSm/POST" />
    </node>
    <node concept="2odkKT" id="2eH18dHfKXu" role="2odkMV">
      <property role="2odkKR" value="signout" />
      <property role="2odkKz" value="/api/auth.signout" />
      <property role="2odkLW" value="5zp68F98GSm/POST" />
    </node>
    <node concept="2ocoYJ" id="2eH18dHfKXc" role="2ocHty">
      <ref role="2ocoYE" node="2eH18dHfKXa" />
      <node concept="2oetWv" id="2eH18dHgBlI" role="11Lowe">
        <property role="2oetWt" value="Welcome to RideTogether" />
      </node>
      <node concept="2ofuGD" id="2eH18dHgBlL" role="11Lowe">
        <property role="2ofuGB" value="Travel smarter, save money, and reduce carbon footprints by carpooling!" />
      </node>
      <node concept="1IipSc" id="2eH18dHgBlO" role="11Lowe">
        <node concept="2o8Iol" id="2eH18dHgBlQ" role="1IipSa">
          <property role="2o8Ioj" value="Find a Ride" />
          <node concept="1IgwfU" id="2eH18dHgBlU" role="1IgwfE">
            <property role="1IgwfS" value="/find-ride" />
          </node>
        </node>
        <node concept="2o8Iol" id="2eH18dHgBlS" role="1IipSa">
          <property role="2o8Ioj" value="Offer a Ride" />
          <node concept="1IgwfU" id="2eH18dHgBlT" role="1IgwfE">
            <property role="1IgwfS" value="/add-ride" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2ocoYJ" id="2eH18dHgBlJ" role="2ocHty">
      <ref role="2ocoYE" node="2eH18dHfKXg" />
      <node concept="2oetWv" id="2eH18dHgBlW" role="11Lowe">
        <property role="2oetWt" value="Find a Ride" />
      </node>
      <node concept="2o932N" id="2eH18dHgBm0" role="11Lowe">
        <node concept="2o9m_g" id="2eH18dHgBm2" role="2o9m_c">
          <property role="2o9m_e" value="From" />
        </node>
        <node concept="2o9m_g" id="2eH18dHgBm4" role="2o9m_c">
          <property role="2o9m_e" value="To" />
        </node>
        <node concept="2o9m_g" id="2eH18dHgBm5" role="2o9m_c">
          <property role="2o9m_e" value="Date" />
          <property role="2o9m_f" value="68Oe3VU40yh/Date" />
        </node>
        <node concept="2o8Iol" id="2eH18dHgBm8" role="2o8Ioh">
          <property role="2o8Ioj" value="Offer a Ride" />
        </node>
      </node>
      <node concept="2hWOun" id="2eH18dHgBma" role="11Lowe">
        <node concept="2hWOuD" id="2eH18dHgBmc" role="2hWOuy">
          <property role="2hWOuJ" value="ride.origin" />
          <property role="2hWOuH" value="ride.destination" />
        </node>
        <node concept="2hWOuw" id="2eH18dHgBme" role="2hWOvl">
          <property role="2hVNqs" value="ride.date" />
        </node>
        <node concept="2hWOuw" id="2eH18dHgBmg" role="2hWOvl">
          <property role="2hVNqs" value="ride.departureTime" />
        </node>
        <node concept="2hWOuw" id="2eH18dHgBmh" role="2hWOvl">
          <property role="2hVNqs" value="ride.seatsAvailable" />
        </node>
        <node concept="2hWOuw" id="2eH18dHgBmi" role="2hWOvl">
          <property role="2hVNqs" value="ride.pricePerSeat" />
        </node>
        <node concept="2hWOuw" id="2eH18dHgBmj" role="2hWOvl">
          <property role="2hVNqs" value="ride.comments" />
        </node>
        <node concept="2hWOuw" id="2eH18dHgBmk" role="2hWOvl">
          <property role="2hVNqs" value="ride.driver.name" />
        </node>
      </node>
    </node>
    <node concept="2ocoYJ" id="2eH18dHgBlY" role="2ocHty">
      <ref role="2ocoYE" node="2eH18dHfKXh" />
      <node concept="2o932N" id="2eH18dHgBmm" role="11Lowe">
        <node concept="2o9m_g" id="2eH18dHgBmo" role="2o9m_c">
          <property role="2o9m_e" value="Start Location" />
        </node>
        <node concept="2o9m_g" id="2eH18dHgBmq" role="2o9m_c">
          <property role="2o9m_e" value="End Location" />
        </node>
        <node concept="2o9m_g" id="2eH18dHgBmr" role="2o9m_c">
          <property role="2o9m_e" value="Date of Travel" />
          <property role="2o9m_f" value="68Oe3VU40yh/Date" />
        </node>
        <node concept="2o9m_g" id="2eH18dHgBms" role="2o9m_c">
          <property role="2o9m_e" value="Time" />
          <property role="2o9m_f" value="68Oe3VU40yi/Time" />
        </node>
        <node concept="2o9m_g" id="2eH18dHgBmt" role="2o9m_c">
          <property role="2o9m_e" value="Available Seats" />
          <property role="2o9m_f" value="68Oe3VU40yj/Number" />
        </node>
        <node concept="2o9m_g" id="2eH18dHgBmu" role="2o9m_c">
          <property role="2o9m_e" value="Cost per Seat in EUR" />
          <property role="2o9m_f" value="68Oe3VU40yj/Number" />
        </node>
        <node concept="2o9m_g" id="2eH18dHgBmv" role="2o9m_c">
          <property role="2o9m_e" value="Additional Info" />
          <property role="2o9m_f" value="68Oe3VU40yk/TextArea" />
        </node>
        <node concept="2o8Iol" id="2eH18dHgBmw" role="2o8Ioh">
          <property role="2o8Ioj" value="Offer a Ride" />
          <node concept="1IgwfU" id="2eH18dHgBmx" role="1IgwfE">
            <property role="1IgwfS" value="/offer-ride" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2ocoYJ" id="2eH18dHgBmy" role="2ocHty">
      <ref role="2ocoYE" node="2eH18dHfKXj" />
      <node concept="2oetWv" id="2eH18dHgBm$" role="11Lowe">
        <property role="2oetWt" value="{{session?.user.name}} {{session?.user.surname}}" />
      </node>
      <node concept="2ofuGD" id="2eH18dHgBmC" role="11Lowe">
        <property role="2ofuGB" value="@ {{session?.user.username}}" />
      </node>
      <node concept="3z5yVI" id="2eH18dHgBmF" role="11Lowe">
        <node concept="3z5yVG" id="2eH18dHgBmH" role="3z5yVy">
          <node concept="3z5yVq" id="2eH18dHgBmJ" role="3z5yVu">
            <property role="3z5yVo" value="cars" />
            <property role="3z5yVv" value="My Cars" />
          </node>
        </node>
        <node concept="3z5yVG" id="2eH18dHgBmX" role="3z5yVy">
          <node concept="3z5yVq" id="2eH18dHgBmY" role="3z5yVu">
            <property role="3z5yVo" value="rides" />
            <property role="3z5yVv" value="My Rides" />
          </node>
        </node>
        <node concept="2obJ9l" id="2eH18dHgBn6" role="3z5yUe">
          <node concept="2obJ9j" id="2eH18dHgBn7" role="2obJ9a">
            <node concept="2obJ99" id="2eH18dHgBn8" role="2hZcBk">
              <property role="2obJ97" value="Model" />
            </node>
            <node concept="2obJ99" id="2eH18dHgBnc" role="2hZcBk">
              <property role="2obJ97" value="Year" />
            </node>
            <node concept="2obJ99" id="2eH18dHgBnd" role="2hZcBk">
              <property role="2obJ97" value="License Plate" />
            </node>
            <node concept="2obJ99" id="2eH18dHgBne" role="2hZcBk">
              <property role="2obJ97" value="Actions" />
            </node>
          </node>
          <node concept="2obJ9f" id="2eH18dHgBn9" role="2obJ9b">
            <node concept="2obJ99" id="2eH18dHgBna" role="2obJ95">
              <property role="2obJ97" value="{{car.carModel}}" />
            </node>
            <node concept="2obJ99" id="2eH18dHgBnf" role="2obJ95">
              <property role="2obJ97" value="{{car.year}}" />
            </node>
            <node concept="2obJ99" id="2eH18dHgBng" role="2obJ95">
              <property role="2obJ97" value="{{car.licensePlate}}" />
            </node>
          </node>
          <node concept="2o7$Zb" id="2eH18dHgBnb" role="2o7$0B">
            <property role="2o7$Z6" value="My cars" />
          </node>
        </node>
        <node concept="2obJ9l" id="2eH18dHgBmL" role="3z5yUe">
          <node concept="2obJ9j" id="2eH18dHgBmN" role="2obJ9a">
            <node concept="2obJ99" id="2eH18dHgBmP" role="2hZcBk">
              <property role="2obJ97" value="Origin" />
            </node>
            <node concept="2obJ99" id="2eH18dHgBmZ" role="2hZcBk">
              <property role="2obJ97" value="Destination" />
            </node>
            <node concept="2obJ99" id="2eH18dHgBn0" role="2hZcBk">
              <property role="2obJ97" value="Date" />
            </node>
            <node concept="2obJ99" id="2eH18dHgBn1" role="2hZcBk">
              <property role="2obJ97" value="Time" />
            </node>
            <node concept="2obJ99" id="2eH18dHgBnh" role="2hZcBk">
              <property role="2obJ97" value="Price" />
            </node>
            <node concept="2obJ99" id="2eH18dHgBni" role="2hZcBk">
              <property role="2obJ97" value="Actions" />
            </node>
          </node>
          <node concept="2obJ9f" id="2eH18dHgBmR" role="2obJ9b">
            <node concept="2obJ99" id="2eH18dHgBmT" role="2obJ95">
              <property role="2obJ97" value="{{ride.origin}}" />
            </node>
            <node concept="2obJ99" id="2eH18dHgBn2" role="2obJ95">
              <property role="2obJ97" value="{{ride.destination}}" />
            </node>
            <node concept="2obJ99" id="2eH18dHgBn3" role="2obJ95">
              <property role="2obJ97" value="{{ride.date}}" />
            </node>
            <node concept="2obJ99" id="2eH18dHgBnj" role="2obJ95">
              <property role="2obJ97" value="{{ride.departureTime}}" />
            </node>
            <node concept="2obJ99" id="2eH18dHgBnk" role="2obJ95">
              <property role="2obJ97" value="{{ride.pricePerSeat}}" />
            </node>
          </node>
          <node concept="2o7$Zb" id="2eH18dHgBmV" role="2o7$0B">
            <property role="2o7$Z6" value="My Rides" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2ocoYJ" id="2eH18dHgBmA" role="2ocHty">
      <ref role="2ocoYE" node="2eH18dHfKXl" />
      <node concept="2oetWv" id="2eH18dHgBnm" role="11Lowe">
        <property role="2oetWt" value="Login" />
      </node>
      <node concept="2o932N" id="2eH18dHgBns" role="11Lowe">
        <node concept="2o9m_g" id="2eH18dHgBnu" role="2o9m_c">
          <property role="2o9m_e" value="Email" />
          <property role="2o9m_f" value="68Oe3VU40yl/Email" />
        </node>
        <node concept="2o9m_g" id="2eH18dHgBnw" role="2o9m_c">
          <property role="2o9m_e" value="Password" />
          <property role="2o9m_f" value="68Oe3VU40ym/Password" />
        </node>
        <node concept="2o8Iol" id="2eH18dHgBn$" role="2o8Ioh">
          <property role="2o8Ioj" value="Login" />
          <node concept="1IgwfU" id="2eH18dHgBn_" role="1IgwfE">
            <property role="1IgwfS" value="/login" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

