<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.6.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="17" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="16" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="200" name="200bmp" color="1" fill="10" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="icmi-custom-parts">
<description>&lt;h1&gt;ICMI Custom Parts&lt;/h1&gt;
                &lt;p&gt;This library contains some custom parts I had to design, because they were missing from the
                stock libraries and could not be supplied by Adafruit of Sparkfun.&lt;/p&gt;
                &lt;p&gt;You can always find the latest version of this library under &lt;a
                href="https://github.com/hmbusch/PCB-Designs/tree/master/EAGLE-Libraries"&gt;https://github.com/hmbusch/PCB-Designs/tree/master/EAGLE-Libraries&lt;/a&gt;&lt;/p&gt;
                &lt;p&gt;&lt;span xmlns:dct="http://purl.org/dc/terms/" href="http://purl.org/dc/dcmitype/Dataset"
                property="dct:title" rel="dct:type"&gt;ICMI Custom Parts for EAGLE&lt;/span&gt; by &lt;a
                xmlns:cc="http://creativecommons.org/ns#"
                href="https://github.com/hmbusch/PCB-Designs/tree/master/EAGLE-Libraries" property="cc:attributionName"
                rel="cc:attributionURL"&gt;Hendrik Busch&lt;/a&gt; is licensed under a &lt;a rel="license"
                href="http://creativecommons.org/licenses/by-nc-sa/3.0/de/"&gt;Creative Commons
                Attribution-NonCommercial-ShareAlike 3.0 Germany License&lt;/a&gt;.&lt;/p&gt;
                &lt;p&gt;&lt;a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/3.0/de/"&gt;&lt;img
                alt="Creative Commons License" style="border-width:0"
                src="http://i.creativecommons.org/l/by-nc-sa/3.0/de/88x31.png" /&gt;&lt;/a&gt;&lt;/p&gt;</description>
<packages>
<package name="LIPO-BMS-CHARGER">
<description>&lt;strong&gt;LIPO BMS/charger for single cells&lt;/strong&gt;
&lt;p&gt;This is the symbol for a combined LiPo charger / protection circuit, usually found on ebay. These modules use a TP4056 for charging and a DW01 for cell protection. Please note that &lt;code&gt;IN-&lt;/code&gt; and &lt;code&gt;OUT-&lt;/code&gt; are connected to each other, whereas all other pins are are seperate.&lt;/p&gt;
&lt;p&gt;The module also features a Micro-USB connector, not represented in the package here.&lt;/p&gt;</description>
<wire x1="17.2" y1="0" x2="17.2" y2="27.5" width="0.254" layer="21"/>
<wire x1="0" y1="0" x2="0" y2="27.5" width="0.254" layer="21"/>
<wire x1="0" y1="27.5" x2="4.6" y2="27.5" width="0.254" layer="21"/>
<wire x1="4.6" y1="27.5" x2="12.6" y2="27.5" width="0.254" layer="21"/>
<wire x1="12.6" y1="27.5" x2="17.2" y2="27.5" width="0.254" layer="21"/>
<wire x1="4.6" y1="27.5" x2="4.6" y2="28.7" width="0.254" layer="21"/>
<wire x1="4.6" y1="28.7" x2="12.6" y2="28.7" width="0.254" layer="21"/>
<wire x1="12.6" y1="28.7" x2="12.6" y2="27.5" width="0.254" layer="21"/>
<wire x1="0" y1="0" x2="2.2" y2="0" width="0.254" layer="21"/>
<wire x1="2.2" y1="0" x2="2.2" y2="0.75" width="0.254" layer="21"/>
<wire x1="2.95" y1="1.5" x2="14.25" y2="1.5" width="0.254" layer="21"/>
<wire x1="15" y1="0.75" x2="15" y2="0" width="0.254" layer="21"/>
<wire x1="15" y1="0" x2="17.2" y2="0" width="0.254" layer="21"/>
<wire x1="2.2" y1="0.75" x2="2.95" y2="1.5" width="0.254" layer="21" curve="-90"/>
<wire x1="14.25" y1="1.5" x2="15" y2="0.75" width="0.254" layer="21" curve="-90"/>
<wire x1="17.2" y1="0" x2="17.2" y2="27.5" width="0.254" layer="51"/>
<wire x1="0" y1="0" x2="0" y2="27.5" width="0.254" layer="51"/>
<wire x1="0" y1="27.5" x2="4.6" y2="27.5" width="0.254" layer="51"/>
<wire x1="4.6" y1="27.5" x2="12.6" y2="27.5" width="0.254" layer="51"/>
<wire x1="12.6" y1="27.5" x2="17.2" y2="27.5" width="0.254" layer="51"/>
<wire x1="4.6" y1="27.5" x2="4.6" y2="28.7" width="0.254" layer="51"/>
<wire x1="4.6" y1="28.7" x2="12.6" y2="28.7" width="0.254" layer="51"/>
<wire x1="12.6" y1="28.7" x2="12.6" y2="27.5" width="0.254" layer="51"/>
<wire x1="0" y1="0" x2="2.2" y2="0" width="0.254" layer="51"/>
<wire x1="2.2" y1="0" x2="2.2" y2="0.75" width="0.254" layer="51"/>
<wire x1="2.95" y1="1.5" x2="14.25" y2="1.5" width="0.254" layer="51"/>
<wire x1="15" y1="0.75" x2="15" y2="0" width="0.254" layer="51"/>
<wire x1="15" y1="0" x2="17.2" y2="0" width="0.254" layer="51"/>
<wire x1="2.2" y1="0.75" x2="2.95" y2="1.5" width="0.254" layer="51" curve="-90"/>
<wire x1="14.25" y1="1.5" x2="15" y2="0.75" width="0.254" layer="51" curve="-90"/>
<pad name="IN-" x="1.57" y="26.23" drill="0.8" diameter="1.6764" shape="square"/>
<pad name="IN+" x="15.63" y="26.23" drill="0.8" diameter="1.6764"/>
<pad name="OUT-" x="1.72" y="3.3" drill="0.8" diameter="1.6764" shape="square"/>
<pad name="OUT+" x="15.63" y="3.3" drill="0.8" diameter="1.6764"/>
<pad name="BAT+" x="12.43" y="3.3" drill="0.8" diameter="1.6764"/>
<pad name="BAT-" x="5.02" y="3.3" drill="0.8" diameter="1.6764" shape="square"/>
<text x="8.6" y="25.4" size="1.27" layer="21" font="vector" ratio="10" align="bottom-center">USB</text>
<text x="1.57" y="21.59" size="1.27" layer="51" font="vector" rot="R90" align="center-left">IN-</text>
<text x="15.63" y="21.59" size="1.27" layer="51" font="vector" rot="R90" align="center-left">IN+</text>
<text x="1.57" y="21.59" size="1.27" layer="21" font="vector" ratio="10" rot="R90" align="center-left">IN-</text>
<text x="15.63" y="21.59" size="1.27" layer="21" font="vector" ratio="10" rot="R90" align="center-left">IN+</text>
<text x="1.62" y="5.08" size="1.27" layer="21" font="vector" ratio="10" rot="R270" align="center-right">OUT-</text>
<text x="5.02" y="5.08" size="1.27" layer="21" font="vector" ratio="10" rot="R270" align="center-right">BAT-</text>
<text x="12.43" y="5.08" size="1.27" layer="21" font="vector" ratio="10" rot="R270" align="center-right">BAT+</text>
<text x="15.63" y="5.08" size="1.27" layer="21" font="vector" ratio="10" rot="R270" align="center-right">OUT+</text>
<text x="1.72" y="5.08" size="1.27" layer="51" font="vector" rot="R270" align="center-right">OUT-</text>
<text x="5.02" y="5.08" size="1.27" layer="51" font="vector" rot="R270" align="center-right">BAT-</text>
<text x="12.43" y="5.08" size="1.27" layer="51" font="vector" rot="R270" align="center-right">BAT+</text>
<text x="15.63" y="5.08" size="1.27" layer="51" font="vector" rot="R270" align="center-right">OUT+</text>
</package>
<package name="ADAFRUIT_HUZZAH">
<description>&lt;strong&gt;Adafruit HUZZAH ESP8266 Basic Breakout Board&lt;/strong&gt;
&lt;p&gt;Package for the basic ESP8266 breakout board HUZZAH from Adafruit. Engineered from the original schematics.&lt;/p&gt;</description>
<pad name="P$1" x="22.86" y="35.56" drill="2.5" diameter="3.2"/>
<pad name="P$2" x="2.54" y="35.56" drill="2.5" diameter="3.2"/>
<pad name="P$3" x="22.86" y="2.54" drill="2.5" diameter="3.2"/>
<pad name="P$4" x="2.54" y="2.54" drill="2.5" diameter="3.2"/>
<pad name="NC1" x="6.35" y="2.032" drill="1" diameter="1.778" rot="R90"/>
<pad name="TX" x="8.89" y="2.032" drill="1" diameter="1.778" rot="R90"/>
<pad name="RX" x="11.43" y="2.032" drill="1" diameter="1.778" rot="R90"/>
<pad name="VCC" x="13.97" y="2.032" drill="1" diameter="1.778" rot="R90"/>
<pad name="NC2" x="16.51" y="2.032" drill="1" diameter="1.778" rot="R90"/>
<pad name="GND_S" x="19.05" y="2.032" drill="1" diameter="1.778" rot="R90"/>
<pad name="GND_R" x="22.86" y="8.89" drill="1" diameter="1.778" rot="R90"/>
<pad name="LDO" x="22.86" y="11.43" drill="1" diameter="1.778" rot="R90"/>
<pad name="3.3V" x="22.86" y="13.97" drill="1" diameter="1.778" rot="R90"/>
<pad name="15" x="22.86" y="16.51" drill="1" diameter="1.778" rot="R90"/>
<pad name="2" x="22.86" y="19.05" drill="1" diameter="1.778" rot="R90"/>
<pad name="0" x="22.86" y="21.59" drill="1" diameter="1.778" rot="R90"/>
<pad name="4" x="22.86" y="24.13" drill="1" diameter="1.778" rot="R90"/>
<pad name="5" x="22.86" y="26.67" drill="1" diameter="1.778" rot="R90"/>
<pad name="RX_1" x="22.86" y="29.21" drill="1" diameter="1.778" rot="R90"/>
<pad name="TX_1" x="22.86" y="31.75" drill="1" diameter="1.778" rot="R90"/>
<pad name="GND_L" x="2.54" y="8.89" drill="1" diameter="1.778" rot="R90"/>
<pad name="VBAT" x="2.54" y="11.43" drill="1" diameter="1.778" rot="R90"/>
<pad name="V+" x="2.54" y="13.97" drill="1" diameter="1.778" rot="R90"/>
<pad name="13" x="2.54" y="16.51" drill="1" diameter="1.778" rot="R90"/>
<pad name="12" x="2.54" y="19.05" drill="1" diameter="1.778" rot="R90"/>
<pad name="14" x="2.54" y="21.59" drill="1" diameter="1.778" rot="R90"/>
<pad name="16" x="2.54" y="24.13" drill="1" diameter="1.778" rot="R90"/>
<pad name="EN" x="2.54" y="26.67" drill="1" diameter="1.778" rot="R90"/>
<pad name="A" x="2.54" y="29.21" drill="1" diameter="1.778" rot="R90"/>
<pad name="RST" x="2.54" y="31.75" drill="1" diameter="1.778" rot="R90"/>
<text x="20.447" y="1.016" size="0.9652" layer="21" font="vector" ratio="12" rot="R180">GND</text>
<text x="14.859" y="1.016" size="0.9652" layer="21" font="vector" ratio="12" rot="R180">V+</text>
<text x="9.779" y="1.016" size="0.9652" layer="21" font="vector" ratio="12" rot="R180">TX</text>
<text x="12.446" y="1.016" size="0.9652" layer="21" font="vector" ratio="12" rot="R180">RX</text>
<text x="0.889" y="31.877" size="1.016" layer="21" font="vector" ratio="12" rot="R90" align="center">RST</text>
<text x="0.889" y="29.464" size="1.016" layer="21" font="vector" ratio="12" rot="R90" align="center">A</text>
<text x="0.889" y="26.924" size="1.016" layer="21" font="vector" ratio="12" rot="R90" align="center">EN</text>
<text x="0.889" y="24.384" size="1.016" layer="21" font="vector" ratio="12" rot="R90" align="center">16</text>
<text x="0.889" y="21.717" size="1.016" layer="21" font="vector" ratio="12" rot="R90" align="center">14</text>
<text x="0.889" y="19.304" size="1.016" layer="21" font="vector" ratio="12" rot="R90" align="center">12</text>
<text x="0.889" y="16.764" size="1.016" layer="21" font="vector" ratio="12" rot="R90" align="center">13</text>
<text x="0.889" y="14.224" size="1.016" layer="21" font="vector" ratio="12" rot="R90" align="center">V+</text>
<text x="0.889" y="11.049" size="1.016" layer="21" font="vector" ratio="12" rot="R90" align="center">VBat</text>
<text x="2.667" y="7.112" size="1.016" layer="21" font="vector" ratio="12" align="center">GND</text>
<text x="24.511" y="31.75" size="1.016" layer="21" font="vector" ratio="12" rot="R90" align="center">TX</text>
<text x="24.511" y="29.21" size="1.016" layer="21" font="vector" ratio="12" rot="R90" align="center">RX</text>
<text x="24.511" y="24.257" size="1.016" layer="21" font="vector" ratio="12" rot="R90" align="center">#4</text>
<text x="24.511" y="26.797" size="1.016" layer="21" font="vector" ratio="12" rot="R90" align="center">#5</text>
<text x="24.511" y="21.59" size="1.016" layer="21" font="vector" ratio="12" rot="R90" align="center">#0</text>
<text x="24.511" y="19.177" size="1.016" layer="21" font="vector" ratio="12" rot="R90" align="center">#2</text>
<text x="24.511" y="16.637" size="1.016" layer="21" font="vector" ratio="12" rot="R90" align="center">15</text>
<text x="24.511" y="14.097" size="1.016" layer="21" font="vector" ratio="12" rot="R90" align="center">3V</text>
<text x="22.987" y="6.985" size="1.016" layer="21" font="vector" ratio="12" rot="R180" align="center">GND</text>
<text x="24.511" y="11.43" size="1.016" layer="21" font="vector" ratio="12" rot="R90" align="center">LDO</text>
<wire x1="4.7" y1="38.146" x2="20.7" y2="38.146" width="0.127" layer="21"/>
<wire x1="18.7" y1="15.346" x2="6.7" y2="15.346" width="0.127" layer="21"/>
<wire x1="6.7" y1="15.346" x2="6.7" y2="30.346" width="0.127" layer="51"/>
<wire x1="2.54" y1="38.1" x2="0" y2="35.56" width="0.3048" layer="21" curve="90"/>
<wire x1="22.86" y1="38.1" x2="2.54" y2="38.1" width="0.3048" layer="21"/>
<wire x1="25.4" y1="35.56" x2="22.86" y2="38.1" width="0.3048" layer="21" curve="90"/>
<wire x1="25.4" y1="2.54" x2="25.4" y2="35.56" width="0.3048" layer="21"/>
<wire x1="22.86" y1="0" x2="25.4" y2="2.54" width="0.3048" layer="21" curve="90"/>
<wire x1="2.54" y1="0" x2="22.86" y2="0" width="0.3048" layer="21"/>
<wire x1="0" y1="2.54" x2="2.54" y2="0" width="0.3048" layer="21" curve="90"/>
<wire x1="0" y1="35.56" x2="0" y2="2.54" width="0.3048" layer="21"/>
<wire x1="0" y1="35.56" x2="0" y2="2.54" width="0" layer="51"/>
<wire x1="2.54" y1="38.1" x2="0" y2="35.56" width="0" layer="51" curve="90"/>
<wire x1="22.86" y1="38.1" x2="2.54" y2="38.1" width="0" layer="51"/>
<wire x1="25.4" y1="35.56" x2="22.86" y2="38.1" width="0" layer="51" curve="90"/>
<wire x1="25.4" y1="2.54" x2="25.4" y2="35.56" width="0" layer="51"/>
<wire x1="22.86" y1="0" x2="25.4" y2="2.54" width="0" layer="51" curve="90"/>
<wire x1="2.54" y1="0" x2="22.86" y2="0" width="0" layer="51"/>
<wire x1="0" y1="2.54" x2="2.54" y2="0" width="0" layer="51" curve="90"/>
<wire x1="6.7" y1="30.346" x2="18.7" y2="30.346" width="0.127" layer="51"/>
<wire x1="18.7" y1="30.346" x2="18.7" y2="15.346" width="0.127" layer="51"/>
<wire x1="20.7" y1="38.146" x2="20.7" y2="14.146" width="0.127" layer="51"/>
<wire x1="20.7" y1="14.146" x2="4.7" y2="14.146" width="0.127" layer="51"/>
<wire x1="4.7" y1="14.146" x2="4.7" y2="38.146" width="0.127" layer="51"/>
<wire x1="4.7" y1="14.146" x2="4.7" y2="38.146" width="0.127" layer="21"/>
<wire x1="6.7" y1="30.346" x2="18.7" y2="30.346" width="0.127" layer="21"/>
<wire x1="6.7" y1="15.346" x2="6.7" y2="30.346" width="0.127" layer="21"/>
<wire x1="18.7" y1="30.346" x2="18.7" y2="15.346" width="0.127" layer="21"/>
<wire x1="20.7" y1="38.146" x2="20.7" y2="14.146" width="0.127" layer="21"/>
<wire x1="20.7" y1="14.146" x2="4.7" y2="14.146" width="0.127" layer="21"/>
<wire x1="18.7" y1="15.346" x2="6.7" y2="15.346" width="0.127" layer="51"/>
<text x="12.7" y="7.62" size="1.27" layer="21" font="vector" align="bottom-center">ADAFRUIT
HUZZAH</text>
</package>
</packages>
<symbols>
<symbol name="LIPO-BMS-CHARGER">
<description>&lt;strong&gt;LIPO BMS/charger for single cells&lt;/strong&gt;
&lt;p&gt;This is the symbol for a combined LiPo charger / protection circuit, usually found on ebay. These modules use a TP4056 for charging and a DW01 for cell protection. Please note that &lt;code&gt;IN-&lt;/code&gt; and &lt;code&gt;OUT-&lt;/code&gt; are connected to each other, whereas all other pins are are seperate.&lt;/p&gt;</description>
<pin name="IN+" x="-17.78" y="5.08" visible="pin" length="middle" direction="pwr"/>
<pin name="IN-" x="-17.78" y="-2.54" visible="pin" length="middle" direction="pwr"/>
<pin name="OUT+" x="17.78" y="5.08" visible="pin" length="middle" direction="pwr" rot="R180"/>
<pin name="OUT-" x="17.78" y="-2.54" visible="pin" length="middle" direction="pwr" rot="R180"/>
<pin name="BAT+" x="-2.54" y="-12.7" visible="pin" length="middle" direction="pwr" rot="R90"/>
<pin name="BAT-" x="2.54" y="-12.7" visible="pin" length="middle" direction="pwr" rot="R90"/>
<wire x1="-15.24" y1="10.16" x2="-15.24" y2="-10.16" width="0.254" layer="94"/>
<wire x1="-15.24" y1="-10.16" x2="15.24" y2="-10.16" width="0.254" layer="94"/>
<wire x1="15.24" y1="-10.16" x2="15.24" y2="10.16" width="0.254" layer="94"/>
<wire x1="15.24" y1="10.16" x2="-15.24" y2="10.16" width="0.254" layer="94"/>
<text x="0" y="5.08" size="5.08" layer="94" font="vector" ratio="12" align="center">=&gt;</text>
<wire x1="-12.7" y1="-2.54" x2="-12.7" y2="1.27" width="0.127" layer="94"/>
<wire x1="-12.7" y1="1.27" x2="12.7" y2="1.27" width="0.127" layer="94"/>
<wire x1="12.7" y1="1.27" x2="12.7" y2="-2.54" width="0.127" layer="94"/>
<text x="-15.24" y="12.7" size="1.6764" layer="95" font="vector" align="top-left">&gt;NAME</text>
</symbol>
<symbol name="ADAFRUIT_HUZZAH">
<description>&lt;strong&gt;Adafruit HUZZAH ESP8266 Board&lt;/strong&gt;
&lt;p&gt;This is the symbol for all the logic pins and the 3.3V output of the Adafruit HUZZAH ESP8266 Board. All the power symbols are located in a seperate symbol and will be joined in the device for this symbol.&lt;/p&gt;
&lt;p&gt;&lt;code&gt;TX&lt;/code&gt; and &lt;code&gt;RX&lt;/code&gt; are the serial connection pads on the bottom of the module, &lt;code&gt;TX1&lt;/code&gt; and &lt;code&gt;RX1&lt;/code&gt; are the same pins but refer to the pads on the right-hand side of the module.&lt;/p&gt;</description>
<pin name="RST" x="-15.24" y="10.16" visible="pin" length="middle" direction="in"/>
<pin name="A" x="-15.24" y="7.62" visible="pin" length="middle"/>
<pin name="EN" x="-15.24" y="5.08" visible="pin" length="middle" direction="in"/>
<pin name="16" x="-15.24" y="2.54" visible="pin" length="middle"/>
<pin name="14" x="-15.24" y="0" visible="pin" length="middle"/>
<pin name="12" x="-15.24" y="-2.54" visible="pin" length="middle"/>
<pin name="13" x="-15.24" y="-5.08" visible="pin" length="middle"/>
<pin name="TX1" x="12.7" y="10.16" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="RX1" x="12.7" y="7.62" visible="pin" length="middle" direction="in" rot="R180"/>
<pin name="5" x="12.7" y="5.08" visible="pin" length="middle" rot="R180"/>
<pin name="4" x="12.7" y="2.54" visible="pin" length="middle" rot="R180"/>
<pin name="0" x="12.7" y="0" visible="pin" length="middle" rot="R180"/>
<pin name="2" x="12.7" y="-2.54" visible="pin" length="middle" rot="R180"/>
<pin name="15" x="12.7" y="-5.08" visible="pin" length="middle" rot="R180"/>
<pin name="3V3" x="12.7" y="-7.62" visible="pin" length="middle" direction="pwr" rot="R180"/>
<pin name="LDO" x="12.7" y="-10.16" visible="pin" length="middle" rot="R180"/>
<pin name="TX" x="-15.24" y="-10.16" visible="pin" length="middle" direction="out"/>
<pin name="RX" x="-15.24" y="-12.7" visible="pin" length="middle" direction="in"/>
<wire x1="-12.7" y1="12.7" x2="-12.7" y2="-15.24" width="0.254" layer="94"/>
<wire x1="-12.7" y1="-15.24" x2="10.16" y2="-15.24" width="0.254" layer="94"/>
<wire x1="10.16" y1="-15.24" x2="10.16" y2="12.7" width="0.254" layer="94"/>
<wire x1="-12.7" y1="12.7" x2="10.16" y2="12.7" width="0.254" layer="94"/>
<text x="-12.7" y="13.97" size="1.27" layer="95" align="center-left">&gt;NAME</text>
</symbol>
<symbol name="3PWR_3GND">
<description>&lt;strong&gt;Power symbol with 3 voltage inputs and 3 ground pads&lt;/strong&gt;
&lt;p&gt;Initially designed for the Adafruit Huzzah power pads.&lt;/p&gt;</description>
<pin name="VCC" x="-5.08" y="12.7" visible="off" direction="pwr" rot="R270"/>
<pin name="GND_S" x="0" y="-7.62" visible="off" direction="pwr" rot="R90"/>
<pin name="GND_R" x="5.08" y="-7.62" visible="off" direction="pwr" rot="R90"/>
<pin name="GND_L" x="-5.08" y="-7.62" visible="off" direction="pwr" rot="R90"/>
<text x="0" y="2.54" size="1.778" layer="95" align="center">&gt;NAME</text>
<text x="-3.048" y="7.62" size="1.27" layer="95" rot="R90">VCC</text>
<text x="-3.302" y="-6.35" size="1.27" layer="95" rot="R90">GND_L</text>
<text x="1.778" y="-6.604" size="1.27" layer="95" rot="R90">GND_S</text>
<text x="6.858" y="-6.604" size="1.27" layer="95" rot="R90">GND_R</text>
<pin name="V+" x="0" y="12.7" visible="off" direction="pwr" rot="R270"/>
<pin name="VBAT" x="5.08" y="12.7" visible="off" direction="pwr" rot="R270"/>
<text x="2.032" y="7.62" size="1.27" layer="95" rot="R90">V+</text>
<text x="7.112" y="7.62" size="1.27" layer="95" rot="R90">VBAT</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="LIPO-BMS-CHARGER">
<description>&lt;strong&gt;LIPO BMS/charger for single cells&lt;/strong&gt;
&lt;p&gt;This is the symbol for a combined LiPo charger / protection circuit, usually found on ebay. These modules use a TP4056 for charging and a DW01 for cell protection. Please note that &lt;code&gt;IN-&lt;/code&gt; and &lt;code&gt;OUT-&lt;/code&gt; are connected to each other, whereas all other pins are are seperate.&lt;/p&gt;
&lt;p&gt;The module also features a Micro-USB connector, not represented in the package here.&lt;/p&gt;</description>
<gates>
<gate name="LIPO-BMS" symbol="LIPO-BMS-CHARGER" x="0" y="0"/>
</gates>
<devices>
<device name="-MODULE" package="LIPO-BMS-CHARGER">
<connects>
<connect gate="LIPO-BMS" pin="BAT+" pad="BAT+"/>
<connect gate="LIPO-BMS" pin="BAT-" pad="BAT-"/>
<connect gate="LIPO-BMS" pin="IN+" pad="IN+"/>
<connect gate="LIPO-BMS" pin="IN-" pad="IN-"/>
<connect gate="LIPO-BMS" pin="OUT+" pad="OUT+"/>
<connect gate="LIPO-BMS" pin="OUT-" pad="OUT-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="ADAFRUIT_HUZZAH">
<description>&lt;strong&gt;Adafruit HUZZAH ESP8266 breakout&lt;/strong&gt;
&lt;br/&gt;&lt;br/&gt;
This is the device for the ESP8266 breakout board from Adafruit, called the Huzzah. Refer to &lt;a href="https://learn.adafruit.com/adafruit-huzzah-esp8266-breakout"&gt;https://learn.adafruit.com/adafruit-huzzah-esp8266-breakout&lt;/a&gt; for more information.</description>
<gates>
<gate name="_LOGIC" symbol="ADAFRUIT_HUZZAH" x="0" y="0"/>
<gate name="_SUPPLY" symbol="3PWR_3GND" x="-43.18" y="-2.54"/>
</gates>
<devices>
<device name="-THT" package="ADAFRUIT_HUZZAH">
<connects>
<connect gate="_LOGIC" pin="0" pad="0"/>
<connect gate="_LOGIC" pin="12" pad="12"/>
<connect gate="_LOGIC" pin="13" pad="13"/>
<connect gate="_LOGIC" pin="14" pad="14"/>
<connect gate="_LOGIC" pin="15" pad="15"/>
<connect gate="_LOGIC" pin="16" pad="16"/>
<connect gate="_LOGIC" pin="2" pad="2"/>
<connect gate="_LOGIC" pin="3V3" pad="3.3V"/>
<connect gate="_LOGIC" pin="4" pad="4"/>
<connect gate="_LOGIC" pin="5" pad="5"/>
<connect gate="_LOGIC" pin="A" pad="A"/>
<connect gate="_LOGIC" pin="EN" pad="EN"/>
<connect gate="_LOGIC" pin="LDO" pad="LDO"/>
<connect gate="_LOGIC" pin="RST" pad="RST"/>
<connect gate="_LOGIC" pin="RX" pad="RX"/>
<connect gate="_LOGIC" pin="RX1" pad="RX_1"/>
<connect gate="_LOGIC" pin="TX" pad="TX"/>
<connect gate="_LOGIC" pin="TX1" pad="TX_1"/>
<connect gate="_SUPPLY" pin="GND_L" pad="GND_L"/>
<connect gate="_SUPPLY" pin="GND_R" pad="GND_R"/>
<connect gate="_SUPPLY" pin="GND_S" pad="GND_S"/>
<connect gate="_SUPPLY" pin="V+" pad="V+"/>
<connect gate="_SUPPLY" pin="VBAT" pad="VBAT"/>
<connect gate="_SUPPLY" pin="VCC" pad="VCC"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="GND">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
<symbol name="VCC">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="VCC" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="VDD">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<wire x1="0" y1="1.27" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<wire x1="1.27" y1="-1.905" x2="0" y2="1.27" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="VDD" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" prefix="GND">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="VCC" prefix="P+">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="VCC" symbol="VCC" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="VDD" prefix="VDD">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="VDD" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="icmi-regulators">
<description>&lt;h1&gt;ICMI Custom Parts - Voltage/Current Regulators&lt;/h1&gt;
                &lt;p&gt;This library contains a selection of voltage and current regulators.&lt;/p&gt;
                &lt;p&gt;You can always find the latest version of this library under &lt;a
                href="https://github.com/hmbusch/PCB-Designs/tree/master/EAGLE-Libraries"&gt;https://github.com/hmbusch/PCB-Designs/tree/master/EAGLE-Libraries&lt;/a&gt;&lt;/p&gt;
                &lt;p&gt;&lt;span xmlns:dct="http://purl.org/dc/terms/" href="http://purl.org/dc/dcmitype/Dataset"
                property="dct:title" rel="dct:type"&gt;ICMI Custom Parts for EAGLE&lt;/span&gt; by &lt;a
                xmlns:cc="http://creativecommons.org/ns#"
                href="https://github.com/hmbusch/PCB-Designs/tree/master/EAGLE-Libraries" property="cc:attributionName"
                rel="cc:attributionURL"&gt;Hendrik Busch&lt;/a&gt; is licensed under a &lt;a rel="license"
                href="http://creativecommons.org/licenses/by-nc-sa/3.0/de/"&gt;Creative Commons
                Attribution-NonCommercial-ShareAlike 3.0 Germany License&lt;/a&gt;.&lt;/p&gt;
                &lt;p&gt;&lt;a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/3.0/de/"&gt;&lt;img
                alt="Creative Commons License" style="border-width:0"
                src="http://i.creativecommons.org/l/by-nc-sa/3.0/de/88x31.png" /&gt;&lt;/a&gt;&lt;/p&gt;</description>
<packages>
<package name="S7V8F3">
<description>&lt;strong&gt;Pololu 3.3V Step-Up/Step-Down Voltage Regulator S7V8F3&lt;/strong&gt;
&lt;p&gt;The S7V8F3 switching step-up/step-down regulator efficiently produces a fixed 3.3 V output from input voltages between 2.7 V and 11.8 V. Its ability to convert both higher and lower input voltages makes it useful for applications where the power supply voltage can vary greatly, as with batteries that start above but discharge below the regulated voltage. The compact (0.45″ × 0.65″) module has a typical efficiency of over 90% and can deliver 500 mA to 1 A across most of the input voltage range.&lt;/p&gt;
&lt;p&gt;For more information, please refer to &lt;a href="https://www.pololu.com/product/2122/resources"&gt;https://www.pololu.com/product/2122/resources&lt;/a&gt;.</description>
<pad name="VOUT" x="1.27" y="-6.35" drill="1" diameter="2"/>
<pad name="GND" x="3.81" y="-6.35" drill="1" diameter="2" shape="square"/>
<pad name="VIN" x="6.35" y="-6.35" drill="1" diameter="2"/>
<pad name="!SHDN" x="8.89" y="-6.35" drill="1" diameter="2"/>
<wire x1="-0.73" y1="-7.85" x2="10.77" y2="-7.85" width="0.127" layer="51"/>
<wire x1="-0.73" y1="-7.85" x2="-0.73" y2="8.75" width="0.127" layer="51"/>
<wire x1="10.77" y1="-7.85" x2="10.77" y2="8.75" width="0.127" layer="51"/>
<wire x1="10.77" y1="8.75" x2="-0.73" y2="8.75" width="0.127" layer="51"/>
<wire x1="-0.73" y1="-7.85" x2="-0.73" y2="8.75" width="0.3048" layer="21"/>
<wire x1="10.77" y1="-7.85" x2="10.77" y2="8.75" width="0.3048" layer="21"/>
<wire x1="10.77" y1="8.75" x2="-0.73" y2="8.75" width="0.3048" layer="21"/>
<wire x1="-0.73" y1="-7.85" x2="10.77" y2="-7.85" width="0.3048" layer="21"/>
<wire x1="4.826" y1="-3.81" x2="5.334" y2="-3.81" width="0.3048" layer="21"/>
<wire x1="5.334" y1="-1.27" x2="4.826" y2="-1.27" width="0.3048" layer="21"/>
<wire x1="3.81" y1="0" x2="6.35" y2="0" width="0.3048" layer="21"/>
<wire x1="6.35" y1="0" x2="6.35" y2="2.54" width="0.3048" layer="21"/>
<wire x1="6.35" y1="2.54" x2="3.81" y2="2.54" width="0.3048" layer="21"/>
<wire x1="3.81" y1="2.54" x2="3.81" y2="0" width="0.3048" layer="21"/>
<text x="1.27" y="-3.81" size="1.27" layer="25" rot="R90" align="center-left">VOUT</text>
<text x="3.81" y="-3.81" size="1.27" layer="25" rot="R90" align="center-left">GND</text>
<text x="6.35" y="-3.81" size="1.27" layer="25" rot="R90" align="center-left">VIN</text>
<text x="8.89" y="-3.81" size="1.27" layer="25" rot="R90" align="center-left">!SHDN</text>
</package>
</packages>
<symbols>
<symbol name="REG_POLOLU_4PIN">
<description>&lt;strong&gt;Voltage regulator with shutdown pin&lt;/strong&gt;
&lt;p&gt;This symbol represents a three-pin voltage regulator with an additional pin to shutdown the device, such as the Pololu line of regulators. Pin order is &lt;code&gt;Out&lt;/code&gt; - &lt;code&gt;In&lt;/code&gt; - &lt;code&gt;Gnd&lt;/code&gt; - &lt;code&gt;Shutdown&lt;/code&gt;.&lt;/p&gt;</description>
<pin name="VOUT" x="-7.62" y="-10.16" visible="pin" length="middle" direction="pwr" rot="R90"/>
<pin name="VIN" x="-2.54" y="-10.16" visible="pin" length="middle" direction="pwr" rot="R90"/>
<pin name="GND" x="2.54" y="-10.16" visible="pin" length="middle" direction="pwr" rot="R90"/>
<pin name="!SHDN" x="7.62" y="-10.16" visible="pin" length="middle" direction="in" rot="R90"/>
<wire x1="-10.16" y1="-7.62" x2="10.16" y2="-7.62" width="0.254" layer="94"/>
<wire x1="10.16" y1="-7.62" x2="10.16" y2="5.08" width="0.254" layer="94"/>
<wire x1="10.16" y1="5.08" x2="-10.16" y2="5.08" width="0.254" layer="94"/>
<wire x1="-10.16" y1="5.08" x2="-10.16" y2="-7.62" width="0.254" layer="94"/>
<text x="-10.16" y="6.096" size="1.778" layer="95">&gt;NAME</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="S7V8F3" prefix="REG_">
<description>&lt;strong&gt;Pololu 3.3V Step-Up/Step-Down Voltage Regulator S7V8F3&lt;/strong&gt;
&lt;p&gt;The S7V8F3 switching step-up/step-down regulator efficiently produces a fixed 3.3 V output from input voltages between 2.7 V and 11.8 V. Its ability to convert both higher and lower input voltages makes it useful for applications where the power supply voltage can vary greatly, as with batteries that start above but discharge below the regulated voltage. The compact (0.45″ × 0.65″) module has a typical efficiency of over 90% and can deliver 500 mA to 1 A across most of the input voltage range.&lt;/p&gt;
&lt;p&gt;For more information, please refer to &lt;a href="https://www.pololu.com/product/2122/resources"&gt;https://www.pololu.com/product/2122/resources&lt;/a&gt;.</description>
<gates>
<gate name="S7V8F3" symbol="REG_POLOLU_4PIN" x="0" y="0"/>
</gates>
<devices>
<device name="" package="S7V8F3">
<connects>
<connect gate="S7V8F3" pin="!SHDN" pad="!SHDN"/>
<connect gate="S7V8F3" pin="GND" pad="GND"/>
<connect gate="S7V8F3" pin="VIN" pad="VIN"/>
<connect gate="S7V8F3" pin="VOUT" pad="VOUT"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="icmi-passive-parts">
<description>&lt;h1&gt;ICMI Custom Parts - Passive Components&lt;/h1&gt;
                &lt;p&gt;This library contains a selection of passive components such as resistors and capacitors.&lt;/p&gt;
                &lt;p&gt;You can always find the latest version of this library under &lt;a
                href="https://github.com/hmbusch/PCB-Designs/tree/master/EAGLE-Libraries"&gt;https://github.com/hmbusch/PCB-Designs/tree/master/EAGLE-Libraries&lt;/a&gt;&lt;/p&gt;
                &lt;p&gt;&lt;span xmlns:dct="http://purl.org/dc/terms/" href="http://purl.org/dc/dcmitype/Dataset"
                property="dct:title" rel="dct:type"&gt;ICMI Custom Parts for EAGLE&lt;/span&gt; by &lt;a
                xmlns:cc="http://creativecommons.org/ns#"
                href="https://github.com/hmbusch/PCB-Designs/tree/master/EAGLE-Libraries" property="cc:attributionName"
                rel="cc:attributionURL"&gt;Hendrik Busch&lt;/a&gt; is licensed under a &lt;a rel="license"
                href="http://creativecommons.org/licenses/by-nc-sa/3.0/de/"&gt;Creative Commons
                Attribution-NonCommercial-ShareAlike 3.0 Germany License&lt;/a&gt;.&lt;/p&gt;
                &lt;p&gt;&lt;a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/3.0/de/"&gt;&lt;img
                alt="Creative Commons License" style="border-width:0"
                src="http://i.creativecommons.org/l/by-nc-sa/3.0/de/88x31.png" /&gt;&lt;/a&gt;&lt;/p&gt;</description>
<packages>
<package name="R1206">
<description>&lt;strong&gt;Resistor, SMD package 1206&lt;/strong&gt;</description>
<smd name="P$1" x="-1.65" y="0" dx="1.1" dy="1.7" layer="1"/>
<smd name="P$2" x="1.65" y="0" dx="1.1" dy="1.7" layer="1"/>
<wire x1="-2.3" y1="1" x2="2.4" y2="1" width="0.127" layer="39"/>
<wire x1="2.4" y1="1" x2="2.4" y2="-1" width="0.127" layer="39"/>
<wire x1="2.4" y1="-1" x2="-2.3" y2="-1" width="0.127" layer="39"/>
<wire x1="-2.3" y1="-1" x2="-2.3" y2="1" width="0.127" layer="39"/>
<wire x1="-0.8" y1="0.75" x2="0.8" y2="0.75" width="0.2032" layer="21"/>
<wire x1="-0.8" y1="-0.75" x2="0.8" y2="-0.75" width="0.2032" layer="21"/>
<text x="-2.3" y="1.2" size="1.016" layer="25" font="vector">&gt;NAME</text>
<text x="-2.3" y="-2.2" size="1.016" layer="27" font="vector">&gt;VALUE</text>
<wire x1="-1.575" y1="0.8" x2="1.575" y2="0.8" width="0.127" layer="51"/>
<wire x1="1.575" y1="0.8" x2="1.575" y2="-0.8" width="0.127" layer="51"/>
<wire x1="-1.575" y1="0.8" x2="-1.575" y2="-0.8" width="0.127" layer="51"/>
<wire x1="-1.575" y1="-0.8" x2="1.575" y2="-0.8" width="0.127" layer="51"/>
<rectangle x1="-1.6" y1="-0.8" x2="-0.7" y2="0.8" layer="51"/>
<rectangle x1="0.7" y1="-0.8" x2="1.6" y2="0.8" layer="51"/>
<rectangle x1="-0.4" y1="-0.8" x2="0.4" y2="0.8" layer="35"/>
</package>
<package name="RESISTOR-1/4W-AXIAL">
<description>&lt;strong&gt;Resistor, 1/4W, axial&lt;/strong&gt;

                        &lt;p&gt;Grid 0.5 inch / 12.7 mm&lt;/p&gt;</description>
<pad name="P$1" x="-5.08" y="0" drill="0.8" diameter="1.6764"/>
<pad name="P$2" x="5.08" y="0" drill="0.8" diameter="1.6764"/>
<wire x1="-3.25" y1="1.15" x2="3.25" y2="1.15" width="0.2032" layer="21"/>
<wire x1="3.25" y1="1.15" x2="3.25" y2="0" width="0.2032" layer="21"/>
<wire x1="3.25" y1="0" x2="3.25" y2="-1.15" width="0.2032" layer="21"/>
<wire x1="3.25" y1="-1.15" x2="-3.25" y2="-1.15" width="0.2032" layer="21"/>
<wire x1="-3.25" y1="-1.15" x2="-3.25" y2="0" width="0.2032" layer="21"/>
<wire x1="-3.25" y1="0" x2="-3.25" y2="1.15" width="0.2032" layer="21"/>
<wire x1="-3.25" y1="0" x2="-3.9" y2="0" width="0.2032" layer="21"/>
<wire x1="3.25" y1="0" x2="3.9" y2="0" width="0.2032" layer="21"/>
<wire x1="-3.25" y1="1.15" x2="3.25" y2="1.15" width="0.127" layer="51"/>
<wire x1="3.25" y1="1.15" x2="3.25" y2="0" width="0.127" layer="51"/>
<wire x1="3.25" y1="0" x2="3.25" y2="-1.15" width="0.127" layer="51"/>
<wire x1="3.25" y1="-1.15" x2="-3.25" y2="-1.15" width="0.127" layer="51"/>
<wire x1="-3.25" y1="-1.15" x2="-3.25" y2="0" width="0.127" layer="51"/>
<wire x1="-3.25" y1="0" x2="-3.25" y2="1.15" width="0.127" layer="51"/>
<wire x1="-3.25" y1="0" x2="-3.9" y2="0" width="0.127" layer="51"/>
<wire x1="3.25" y1="0" x2="3.9" y2="0" width="0.127" layer="51"/>
<text x="-3.3" y="1.5" size="1.27" layer="25" font="vector">&gt;NAME</text>
<text x="-3.3" y="-2.7" size="1.27" layer="27" font="vector">&gt;VALUE</text>
</package>
<package name="CAP_POL_5X5_2">
<description>&lt;h1&gt;Electrolytic capacitor, 5x5mm can size, 2-2.5mm pitch&lt;/h1&gt;</description>
<circle x="0" y="0" radius="2.5" width="0.127" layer="51"/>
<pad name="C" x="-1.25" y="0" drill="0.8" diameter="1.6" shape="square"/>
<pad name="A" x="1.25" y="0" drill="0.8" diameter="1.6" rot="R180"/>
<text x="0.75" y="1.25" size="1.27" layer="51" align="center-left">+</text>
<circle x="0" y="0" radius="2.5" width="0.2032" layer="21"/>
<text x="0.75" y="1.45" size="1.27" layer="21" ratio="10" align="center-left">+</text>
</package>
</packages>
<symbols>
<symbol name="RESISTOR-EU">
<description>&lt;h1&gt;Resistor Symbol, EU-style&lt;/h1&gt;</description>
<wire x1="-2.54" y1="-0.889" x2="2.54" y2="-0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="0.889" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="-0.889" x2="2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-0.889" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<text x="-3.81" y="1.4986" size="1.778" layer="95">&gt;NAME</text>
<text x="-3.81" y="-3.302" size="1.778" layer="96">&gt;VALUE</text>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
</symbol>
<symbol name="CAP_POL">
<description>&lt;h1&gt;Capacitor, polarized&lt;/h1&gt;</description>
<rectangle x1="0.635" y1="-2.54" x2="1.905" y2="2.54" layer="94"/>
<pin name="A" x="-5.08" y="0" visible="off" length="short" direction="pas"/>
<pin name="C" x="5.08" y="0" visible="off" length="short" direction="pas" rot="R180"/>
<wire x1="1.27" y1="0" x2="5.08" y2="0" width="0.254" layer="94"/>
<text x="-4.572" y="3.048" size="1.778" layer="95">&gt;NAME</text>
<text x="-4.572" y="-4.572" size="1.778" layer="96">&gt;VALUE</text>
<wire x1="-0.635" y1="-2.54" x2="-1.905" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-1.905" y1="-2.54" x2="-1.905" y2="0" width="0.254" layer="94"/>
<wire x1="-1.905" y1="0" x2="-1.905" y2="2.54" width="0.254" layer="94"/>
<wire x1="-1.905" y1="2.54" x2="-0.635" y2="2.54" width="0.254" layer="94"/>
<wire x1="-0.635" y1="2.54" x2="-0.635" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-1.905" y1="0" x2="-5.08" y2="0" width="0.254" layer="94"/>
<text x="-3.81" y="0.508" size="1.778" layer="94">+</text>
<text x="2.54" y="0.508" size="1.778" layer="94">-</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="RESISTOR-1/4W" prefix="R" uservalue="yes">
<gates>
<gate name="G$1" symbol="RESISTOR-EU" x="0" y="0"/>
</gates>
<devices>
<device name="-SMD-1206" package="R1206">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-12.7-AXIAL" package="RESISTOR-1/4W-AXIAL">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CAPACITOR_POLARIZED" prefix="C" uservalue="yes">
<description>&lt;h1&gt;Polarized capacitor, e.g. electrolytic capacitor&lt;/h1&gt;</description>
<gates>
<gate name="G$1" symbol="CAP_POL" x="0" y="0"/>
</gates>
<devices>
<device name="-5X5-2.0" package="CAP_POL_5X5_2">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="icmi-connectors">
<description>&lt;h1&gt;ICMI Custom Parts - Connectors&lt;/h1&gt;
&lt;p&gt;This library contains basic connectors (mainly pin headers) with various different packages.&lt;/p&gt;
  &lt;p&gt;You can always find the latest version of this library under &lt;a
                href="https://github.com/hmbusch/PCB-Designs/tree/master/EAGLE-Libraries"&gt;https://github.com/hmbusch/PCB-Designs/tree/master/EAGLE-Libraries&lt;/a&gt;&lt;/p&gt;
&lt;p&gt;&lt;span xmlns:dct="http://purl.org/dc/terms/" href="http://purl.org/dc/dcmitype/Dataset" property="dct:title" rel="dct:type"&gt;ICMI Custom Parts for EAGLE&lt;/span&gt; by &lt;a xmlns:cc="http://creativecommons.org/ns#" href="https://github.com/hmbusch/PCB-Designs/tree/master/EAGLE-Libraries" property="cc:attributionName" rel="cc:attributionURL"&gt;Hendrik Busch&lt;/a&gt; is licensed under a &lt;a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/3.0/de/"&gt;Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Germany License&lt;/a&gt;.&lt;/p&gt;
&lt;p&gt;&lt;a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/3.0/de/"&gt;&lt;img alt="Creative Commons License" style="border-width:0" src="http://i.creativecommons.org/l/by-nc-sa/3.0/de/88x31.png" /&gt;&lt;/a&gt;&lt;/p&gt;</description>
<packages>
<package name="BREAKAWAY_STRAIGHT_2_WIDE">
<pad name="2" x="0" y="1.27" drill="1" shape="long"/>
<pad name="1" x="0" y="-1.27" drill="1" shape="long"/>
<wire x1="0.762" y1="2.54" x2="1.27" y2="2.032" width="0.127" layer="51"/>
<wire x1="0.762" y1="0" x2="1.27" y2="0.508" width="0.127" layer="51"/>
<wire x1="-1.27" y1="0.508" x2="-0.762" y2="0" width="0.127" layer="51"/>
<wire x1="-1.27" y1="2.032" x2="-1.27" y2="0.508" width="0.127" layer="51"/>
<wire x1="-1.27" y1="2.032" x2="-0.762" y2="2.54" width="0.127" layer="51"/>
<wire x1="1.27" y1="2.032" x2="1.27" y2="0.508" width="0.127" layer="51"/>
<wire x1="0.762" y1="0" x2="1.27" y2="-0.508" width="0.127" layer="51"/>
<wire x1="0.762" y1="-2.54" x2="1.27" y2="-2.032" width="0.127" layer="51"/>
<wire x1="-1.27" y1="-2.032" x2="-0.762" y2="-2.54" width="0.127" layer="51"/>
<wire x1="-1.27" y1="-0.508" x2="-1.27" y2="-2.032" width="0.127" layer="51"/>
<wire x1="-1.27" y1="-0.508" x2="-0.762" y2="0" width="0.127" layer="51"/>
<wire x1="1.27" y1="-0.508" x2="1.27" y2="-2.032" width="0.127" layer="51"/>
<wire x1="0.762" y1="-2.54" x2="-0.762" y2="-2.54" width="0.127" layer="51"/>
<text x="1.905" y="-2.54" size="1.27" layer="25" font="vector" rot="R90" align="top-left">&gt;NAME</text>
<text x="-2.54" y="-1.27" size="1.27" layer="25" font="vector" rot="R270" align="center">1</text>
<wire x1="0.762" y1="2.54" x2="1.016" y2="2.286" width="0.254" layer="21"/>
<wire x1="0.762" y1="0" x2="1.016" y2="0.254" width="0.254" layer="21"/>
<wire x1="-1.016" y1="0.254" x2="-0.762" y2="0" width="0.254" layer="21"/>
<wire x1="-1.016" y1="2.286" x2="-0.762" y2="2.54" width="0.254" layer="21"/>
<wire x1="0.762" y1="0" x2="1.016" y2="-0.254" width="0.254" layer="21"/>
<wire x1="0.762" y1="-2.54" x2="1.016" y2="-2.286" width="0.254" layer="21"/>
<wire x1="-1.016" y1="-2.286" x2="-0.762" y2="-2.54" width="0.254" layer="21"/>
<wire x1="-1.016" y1="-0.254" x2="-0.762" y2="0" width="0.254" layer="21"/>
<wire x1="0.762" y1="-2.54" x2="-0.762" y2="-2.54" width="0.254" layer="21"/>
<wire x1="-0.762" y1="2.54" x2="0.762" y2="2.54" width="0.127" layer="51"/>
<wire x1="-0.762" y1="2.54" x2="0.762" y2="2.54" width="0.254" layer="21"/>
</package>
<package name="TERMINAL_BLOCK_2">
<description>&lt;h1&gt;Screw type terminal block, 2 contacts, 5mm pitch&lt;/h1&gt;</description>
<pad name="P$1" x="-2.5" y="0" drill="1" diameter="2" shape="long" rot="R90"/>
<pad name="P$2" x="2.5" y="0" drill="1" diameter="2" shape="long" rot="R90"/>
<wire x1="-5" y1="4" x2="5" y2="4" width="0.2032" layer="21"/>
<wire x1="5" y1="4" x2="5" y2="3" width="0.2032" layer="21"/>
<wire x1="5" y1="3" x2="5" y2="-4" width="0.2032" layer="21"/>
<wire x1="5" y1="-4" x2="4" y2="-4" width="0.2032" layer="21"/>
<wire x1="4" y1="-4" x2="1" y2="-4" width="0.2032" layer="21"/>
<wire x1="1" y1="-4" x2="-1" y2="-4" width="0.2032" layer="21"/>
<wire x1="-1" y1="-4" x2="-4" y2="-4" width="0.2032" layer="21"/>
<wire x1="-4" y1="-4" x2="-5" y2="-4" width="0.2032" layer="21"/>
<wire x1="-5" y1="-4" x2="-5" y2="3" width="0.2032" layer="21"/>
<wire x1="-5" y1="3" x2="-5" y2="4" width="0.2032" layer="21"/>
<wire x1="-5" y1="3" x2="5" y2="3" width="0.2032" layer="21"/>
<wire x1="-4" y1="-4" x2="-4" y2="-3" width="0.2032" layer="21"/>
<wire x1="-4" y1="-3" x2="-1" y2="-3" width="0.2032" layer="21"/>
<wire x1="-1" y1="-3" x2="-1" y2="-4" width="0.2032" layer="21"/>
<wire x1="1" y1="-4" x2="1" y2="-3" width="0.2032" layer="21"/>
<wire x1="1" y1="-3" x2="4" y2="-3" width="0.2032" layer="21"/>
<wire x1="4" y1="-3" x2="4" y2="-4" width="0.2032" layer="21"/>
<wire x1="-5" y1="4" x2="5" y2="4" width="0.127" layer="51"/>
<wire x1="5" y1="4" x2="5" y2="3" width="0.127" layer="51"/>
<wire x1="5" y1="3" x2="5" y2="-4" width="0.127" layer="51"/>
<wire x1="5" y1="-4" x2="4" y2="-4" width="0.127" layer="51"/>
<wire x1="4" y1="-4" x2="1" y2="-4" width="0.127" layer="51"/>
<wire x1="1" y1="-4" x2="-1" y2="-4" width="0.127" layer="51"/>
<wire x1="-1" y1="-4" x2="-4" y2="-4" width="0.127" layer="51"/>
<wire x1="-4" y1="-4" x2="-5" y2="-4" width="0.127" layer="51"/>
<wire x1="-5" y1="-4" x2="-5" y2="3" width="0.127" layer="51"/>
<circle x="-2.5" y="0" radius="1.75" width="0.127" layer="51"/>
<circle x="2.5" y="0" radius="1.75" width="0.127" layer="51"/>
<wire x1="-5" y1="3" x2="-5" y2="4" width="0.127" layer="51"/>
<wire x1="-5" y1="3" x2="5" y2="3" width="0.127" layer="51"/>
<wire x1="-4" y1="-4" x2="-4" y2="-3" width="0.127" layer="51"/>
<wire x1="-4" y1="-3" x2="-1" y2="-3" width="0.127" layer="51"/>
<wire x1="-1" y1="-3" x2="-1" y2="-4" width="0.127" layer="51"/>
<wire x1="1" y1="-4" x2="1" y2="-3" width="0.127" layer="51"/>
<wire x1="1" y1="-3" x2="4" y2="-3" width="0.127" layer="51"/>
<wire x1="4" y1="-3" x2="4" y2="-4" width="0.127" layer="51"/>
<text x="-5" y="4.5" size="1.27" layer="25">&gt;NAME</text>
<text x="-5" y="-4.5" size="1.27" layer="27" align="top-left">&gt;VALUE</text>
</package>
<package name="BREAKAWAY_STRAIGHT_3_WIDE">
<pad name="3" x="0" y="2.54" drill="1" shape="long"/>
<pad name="2" x="0" y="0" drill="1" shape="long"/>
<pad name="1" x="0" y="-2.54" drill="1" shape="long"/>
<wire x1="0.762" y1="3.81" x2="1.27" y2="3.302" width="0.127" layer="51"/>
<wire x1="0.762" y1="1.27" x2="1.27" y2="1.778" width="0.127" layer="51"/>
<wire x1="-1.27" y1="1.778" x2="-0.762" y2="1.27" width="0.127" layer="51"/>
<wire x1="-1.27" y1="3.302" x2="-1.27" y2="1.778" width="0.127" layer="51"/>
<wire x1="-1.27" y1="3.302" x2="-0.762" y2="3.81" width="0.127" layer="51"/>
<wire x1="1.27" y1="3.302" x2="1.27" y2="1.778" width="0.127" layer="51"/>
<wire x1="0.762" y1="1.27" x2="1.27" y2="0.762" width="0.127" layer="51"/>
<wire x1="0.762" y1="-1.27" x2="1.27" y2="-0.762" width="0.127" layer="51"/>
<wire x1="-1.27" y1="-0.762" x2="-0.762" y2="-1.27" width="0.127" layer="51"/>
<wire x1="-1.27" y1="0.762" x2="-1.27" y2="-0.762" width="0.127" layer="51"/>
<wire x1="-1.27" y1="0.762" x2="-0.762" y2="1.27" width="0.127" layer="51"/>
<wire x1="1.27" y1="0.762" x2="1.27" y2="-0.762" width="0.127" layer="51"/>
<wire x1="0.762" y1="-1.27" x2="1.27" y2="-1.778" width="0.127" layer="51"/>
<wire x1="0.762" y1="-3.81" x2="1.27" y2="-3.302" width="0.127" layer="51"/>
<wire x1="-1.27" y1="-3.302" x2="-0.762" y2="-3.81" width="0.127" layer="51"/>
<wire x1="-1.27" y1="-1.778" x2="-1.27" y2="-3.302" width="0.127" layer="51"/>
<wire x1="-1.27" y1="-1.778" x2="-0.762" y2="-1.27" width="0.127" layer="51"/>
<wire x1="1.27" y1="-1.778" x2="1.27" y2="-3.302" width="0.127" layer="51"/>
<wire x1="0.762" y1="-3.81" x2="-0.762" y2="-3.81" width="0.127" layer="51"/>
<text x="1.905" y="-3.81" size="1.27" layer="25" font="vector" rot="R90" align="top-left">&gt;NAME</text>
<text x="-2.54" y="-2.54" size="1.27" layer="25" font="vector" rot="R270" align="center">1</text>
<wire x1="0.762" y1="3.81" x2="1.07" y2="3.502" width="0.254" layer="21"/>
<wire x1="0.762" y1="1.27" x2="1.07" y2="1.578" width="0.254" layer="21"/>
<wire x1="-1.07" y1="1.578" x2="-0.762" y2="1.27" width="0.254" layer="21"/>
<wire x1="-1.07" y1="3.502" x2="-0.762" y2="3.81" width="0.254" layer="21"/>
<wire x1="0.762" y1="1.27" x2="1.07" y2="0.962" width="0.254" layer="21"/>
<wire x1="0.762" y1="-1.27" x2="1.07" y2="-0.962" width="0.254" layer="21"/>
<wire x1="-1.07" y1="-0.962" x2="-0.762" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-1.07" y1="0.962" x2="-0.762" y2="1.27" width="0.254" layer="21"/>
<wire x1="0.762" y1="-1.27" x2="1.07" y2="-1.578" width="0.254" layer="21"/>
<wire x1="0.762" y1="-3.81" x2="1.07" y2="-3.502" width="0.254" layer="21"/>
<wire x1="-1.07" y1="-3.502" x2="-0.762" y2="-3.81" width="0.254" layer="21"/>
<wire x1="-1.07" y1="-1.578" x2="-0.762" y2="-1.27" width="0.254" layer="21"/>
<wire x1="0.762" y1="-3.81" x2="-0.762" y2="-3.81" width="0.254" layer="21"/>
<wire x1="-0.762" y1="3.81" x2="0.762" y2="3.81" width="0.254" layer="21"/>
<wire x1="-0.762" y1="3.81" x2="0.762" y2="3.81" width="0.127" layer="51"/>
</package>
<package name="TERMINAL_BLOCK_3">
<description>&lt;h1&gt;Screw type terminal block, 3 contacts, 5mm pitch&lt;/h1&gt;</description>
<pad name="P$1" x="-5" y="0" drill="1" diameter="2" shape="long" rot="R90"/>
<pad name="P$2" x="0" y="0" drill="1" diameter="2" shape="long" rot="R90"/>
<wire x1="-7.5" y1="4" x2="7.5" y2="4" width="0.2032" layer="21"/>
<wire x1="7.5" y1="4" x2="7.5" y2="3" width="0.2032" layer="21"/>
<wire x1="7.5" y1="3" x2="7.5" y2="-4" width="0.2032" layer="21"/>
<wire x1="7.5" y1="-4" x2="1.5" y2="-4" width="0.2032" layer="21"/>
<wire x1="1.5" y1="-4" x2="-1.5" y2="-4" width="0.2032" layer="21"/>
<wire x1="-1.5" y1="-4" x2="-3.5" y2="-4" width="0.2032" layer="21"/>
<wire x1="-3.5" y1="-4" x2="-6.5" y2="-4" width="0.2032" layer="21"/>
<wire x1="-6.5" y1="-4" x2="-7.5" y2="-4" width="0.2032" layer="21"/>
<wire x1="-7.5" y1="-4" x2="-7.5" y2="3" width="0.2032" layer="21"/>
<wire x1="-7.5" y1="3" x2="-7.5" y2="4" width="0.2032" layer="21"/>
<wire x1="-7.5" y1="3" x2="7.5" y2="3" width="0.2032" layer="21"/>
<wire x1="-6.5" y1="-4" x2="-6.5" y2="-3" width="0.2032" layer="21"/>
<wire x1="-6.5" y1="-3" x2="-3.5" y2="-3" width="0.2032" layer="21"/>
<wire x1="-3.5" y1="-3" x2="-3.5" y2="-4" width="0.2032" layer="21"/>
<wire x1="-1.5" y1="-4" x2="-1.5" y2="-3" width="0.2032" layer="21"/>
<wire x1="-1.5" y1="-3" x2="1.5" y2="-3" width="0.2032" layer="21"/>
<wire x1="1.5" y1="-3" x2="1.5" y2="-4" width="0.2032" layer="21"/>
<wire x1="-7.5" y1="4" x2="7.5" y2="4" width="0.127" layer="51"/>
<wire x1="7.5" y1="4" x2="7.5" y2="3" width="0.127" layer="51"/>
<wire x1="7.5" y1="3" x2="7.5" y2="-4" width="0.127" layer="51"/>
<wire x1="7.5" y1="-4" x2="1.5" y2="-4" width="0.127" layer="51"/>
<wire x1="1.5" y1="-4" x2="-1.5" y2="-4" width="0.127" layer="51"/>
<wire x1="-1.5" y1="-4" x2="-3.5" y2="-4" width="0.127" layer="51"/>
<wire x1="-3.5" y1="-4" x2="-6.5" y2="-4" width="0.127" layer="51"/>
<wire x1="-6.5" y1="-4" x2="-7.5" y2="-4" width="0.127" layer="51"/>
<wire x1="-7.5" y1="-4" x2="-7.5" y2="3" width="0.127" layer="51"/>
<circle x="-5" y="0" radius="1.75" width="0.127" layer="51"/>
<circle x="0" y="0" radius="1.75" width="0.127" layer="51"/>
<wire x1="-7.5" y1="3" x2="-7.5" y2="4" width="0.127" layer="51"/>
<wire x1="-7.5" y1="3" x2="7.5" y2="3" width="0.127" layer="51"/>
<wire x1="-6.5" y1="-4" x2="-6.5" y2="-3" width="0.127" layer="51"/>
<wire x1="-6.5" y1="-3" x2="-3.5" y2="-3" width="0.127" layer="51"/>
<wire x1="-3.5" y1="-3" x2="-3.5" y2="-4" width="0.127" layer="51"/>
<wire x1="-1.5" y1="-4" x2="-1.5" y2="-3" width="0.127" layer="51"/>
<wire x1="-1.5" y1="-3" x2="1.5" y2="-3" width="0.127" layer="51"/>
<wire x1="1.5" y1="-3" x2="1.5" y2="-4" width="0.127" layer="51"/>
<text x="-7.5" y="4.5" size="1.27" layer="25">&gt;NAME</text>
<text x="-7.5" y="-4.5" size="1.27" layer="27" align="top-left">&gt;VALUE</text>
<pad name="P$3" x="5" y="0" drill="1" diameter="2" shape="long" rot="R90"/>
<wire x1="3.5" y1="-4" x2="3.5" y2="-3" width="0.2032" layer="21"/>
<wire x1="3.5" y1="-3" x2="6.5" y2="-3" width="0.2032" layer="21"/>
<wire x1="6.5" y1="-3" x2="6.5" y2="-4" width="0.2032" layer="21"/>
<circle x="5" y="0" radius="1.75" width="0.127" layer="51"/>
<wire x1="3.5" y1="-4" x2="3.5" y2="-3" width="0.127" layer="51"/>
<wire x1="3.5" y1="-3" x2="6.5" y2="-3" width="0.127" layer="51"/>
<wire x1="6.5" y1="-3" x2="6.5" y2="-4" width="0.127" layer="51"/>
</package>
<package name="BREAKAWAY_STRAIGHT_4_WIDE">
<pad name="4" x="0" y="3.81" drill="1" shape="long"/>
<pad name="3" x="0" y="1.27" drill="1" shape="long"/>
<pad name="2" x="0" y="-1.27" drill="1" shape="long"/>
<pad name="1" x="0" y="-3.81" drill="1" shape="long"/>
<wire x1="0.762" y1="5.08" x2="1.27" y2="4.572" width="0.127" layer="51"/>
<wire x1="0.762" y1="2.54" x2="1.27" y2="3.048" width="0.127" layer="51"/>
<wire x1="-1.27" y1="3.048" x2="-0.762" y2="2.54" width="0.127" layer="51"/>
<wire x1="-1.27" y1="4.572" x2="-1.27" y2="3.048" width="0.127" layer="51"/>
<wire x1="-1.27" y1="4.572" x2="-0.762" y2="5.08" width="0.127" layer="51"/>
<wire x1="1.27" y1="4.572" x2="1.27" y2="3.048" width="0.127" layer="51"/>
<wire x1="0.762" y1="2.54" x2="1.27" y2="2.032" width="0.127" layer="51"/>
<wire x1="0.762" y1="0" x2="1.27" y2="0.508" width="0.127" layer="51"/>
<wire x1="-1.27" y1="0.508" x2="-0.762" y2="0" width="0.127" layer="51"/>
<wire x1="-1.27" y1="2.032" x2="-1.27" y2="0.508" width="0.127" layer="51"/>
<wire x1="-1.27" y1="2.032" x2="-0.762" y2="2.54" width="0.127" layer="51"/>
<wire x1="1.27" y1="2.032" x2="1.27" y2="0.508" width="0.127" layer="51"/>
<wire x1="0.762" y1="0" x2="1.27" y2="-0.508" width="0.127" layer="51"/>
<wire x1="0.762" y1="-2.54" x2="1.27" y2="-2.032" width="0.127" layer="51"/>
<wire x1="-1.27" y1="-2.032" x2="-0.762" y2="-2.54" width="0.127" layer="51"/>
<wire x1="-1.27" y1="-0.508" x2="-1.27" y2="-2.032" width="0.127" layer="51"/>
<wire x1="-1.27" y1="-0.508" x2="-0.762" y2="0" width="0.127" layer="51"/>
<wire x1="1.27" y1="-0.508" x2="1.27" y2="-2.032" width="0.127" layer="51"/>
<wire x1="0.762" y1="-2.54" x2="1.27" y2="-3.048" width="0.127" layer="51"/>
<wire x1="0.762" y1="-5.08" x2="1.27" y2="-4.572" width="0.127" layer="51"/>
<wire x1="-1.27" y1="-4.572" x2="-0.762" y2="-5.08" width="0.127" layer="51"/>
<wire x1="-1.27" y1="-3.048" x2="-1.27" y2="-4.572" width="0.127" layer="51"/>
<wire x1="-1.27" y1="-3.048" x2="-0.762" y2="-2.54" width="0.127" layer="51"/>
<wire x1="1.27" y1="-3.048" x2="1.27" y2="-4.572" width="0.127" layer="51"/>
<wire x1="0.762" y1="-5.08" x2="-0.762" y2="-5.08" width="0.127" layer="51"/>
<text x="1.905" y="-5.08" size="1.27" layer="25" font="vector" rot="R90" align="top-left">&gt;NAME</text>
<text x="-2.54" y="-3.81" size="1.27" layer="25" font="vector" rot="R270" align="center">1</text>
<wire x1="0.762" y1="5.08" x2="1.016" y2="4.826" width="0.254" layer="21"/>
<wire x1="0.762" y1="2.54" x2="1.016" y2="2.794" width="0.254" layer="21"/>
<wire x1="-1.016" y1="2.794" x2="-0.762" y2="2.54" width="0.254" layer="21"/>
<wire x1="-1.016" y1="4.826" x2="-0.762" y2="5.08" width="0.254" layer="21"/>
<wire x1="0.762" y1="2.54" x2="1.016" y2="2.286" width="0.254" layer="21"/>
<wire x1="0.762" y1="0" x2="1.016" y2="0.254" width="0.254" layer="21"/>
<wire x1="-1.016" y1="0.254" x2="-0.762" y2="0" width="0.254" layer="21"/>
<wire x1="-1.016" y1="2.286" x2="-0.762" y2="2.54" width="0.254" layer="21"/>
<wire x1="0.762" y1="0" x2="1.016" y2="-0.254" width="0.254" layer="21"/>
<wire x1="0.762" y1="-2.54" x2="1.016" y2="-2.286" width="0.254" layer="21"/>
<wire x1="-1.016" y1="-2.286" x2="-0.762" y2="-2.54" width="0.254" layer="21"/>
<wire x1="-1.016" y1="-0.254" x2="-0.762" y2="0" width="0.254" layer="21"/>
<wire x1="0.762" y1="-2.54" x2="1.016" y2="-2.794" width="0.254" layer="21"/>
<wire x1="0.762" y1="-5.08" x2="1.016" y2="-4.826" width="0.254" layer="21"/>
<wire x1="-1.016" y1="-4.826" x2="-0.762" y2="-5.08" width="0.254" layer="21"/>
<wire x1="-1.016" y1="-2.794" x2="-0.762" y2="-2.54" width="0.254" layer="21"/>
<wire x1="0.762" y1="-5.08" x2="-0.762" y2="-5.08" width="0.254" layer="21"/>
<wire x1="-0.762" y1="5.08" x2="0.762" y2="5.08" width="0.254" layer="21"/>
<wire x1="-0.762" y1="5.08" x2="0.762" y2="5.08" width="0.127" layer="51"/>
</package>
<package name="TERMINAL_BLOCK_4">
<description>&lt;h1&gt;Screw type terminal block, 4 contacts, 5mm pitch&lt;/h1&gt;</description>
<pad name="P$1" x="-7.5" y="0" drill="1" diameter="2" shape="long" rot="R90"/>
<pad name="P$2" x="-2.5" y="0" drill="1" diameter="2" shape="long" rot="R90"/>
<wire x1="-10" y1="4" x2="10" y2="4" width="0.2032" layer="21"/>
<wire x1="10" y1="4" x2="10" y2="3" width="0.2032" layer="21"/>
<wire x1="10" y1="3" x2="10" y2="-4" width="0.2032" layer="21"/>
<wire x1="10" y1="-4" x2="-1" y2="-4" width="0.2032" layer="21"/>
<wire x1="-1" y1="-4" x2="-4" y2="-4" width="0.2032" layer="21"/>
<wire x1="-4" y1="-4" x2="-6" y2="-4" width="0.2032" layer="21"/>
<wire x1="-6" y1="-4" x2="-9" y2="-4" width="0.2032" layer="21"/>
<wire x1="-9" y1="-4" x2="-10" y2="-4" width="0.2032" layer="21"/>
<wire x1="-10" y1="-4" x2="-10" y2="3" width="0.2032" layer="21"/>
<wire x1="-10" y1="3" x2="-10" y2="4" width="0.2032" layer="21"/>
<wire x1="-10" y1="3" x2="10" y2="3" width="0.2032" layer="21"/>
<wire x1="-9" y1="-4" x2="-9" y2="-3" width="0.2032" layer="21"/>
<wire x1="-9" y1="-3" x2="-6" y2="-3" width="0.2032" layer="21"/>
<wire x1="-6" y1="-3" x2="-6" y2="-4" width="0.2032" layer="21"/>
<wire x1="-4" y1="-4" x2="-4" y2="-3" width="0.2032" layer="21"/>
<wire x1="-4" y1="-3" x2="-1" y2="-3" width="0.2032" layer="21"/>
<wire x1="-1" y1="-3" x2="-1" y2="-4" width="0.2032" layer="21"/>
<wire x1="-10" y1="4" x2="10" y2="4" width="0.127" layer="51"/>
<wire x1="10" y1="4" x2="10" y2="3" width="0.127" layer="51"/>
<wire x1="10" y1="3" x2="10" y2="-4" width="0.127" layer="51"/>
<wire x1="10" y1="-4" x2="-1" y2="-4" width="0.127" layer="51"/>
<wire x1="-1" y1="-4" x2="-4" y2="-4" width="0.127" layer="51"/>
<wire x1="-4" y1="-4" x2="-6" y2="-4" width="0.127" layer="51"/>
<wire x1="-6" y1="-4" x2="-9" y2="-4" width="0.127" layer="51"/>
<wire x1="-9" y1="-4" x2="-10" y2="-4" width="0.127" layer="51"/>
<wire x1="-10" y1="-4" x2="-10" y2="3" width="0.127" layer="51"/>
<circle x="-7.5" y="0" radius="1.75" width="0.127" layer="51"/>
<circle x="-2.5" y="0" radius="1.75" width="0.127" layer="51"/>
<wire x1="-10" y1="3" x2="-10" y2="4" width="0.127" layer="51"/>
<wire x1="-10" y1="3" x2="10" y2="3" width="0.127" layer="51"/>
<wire x1="-9" y1="-4" x2="-9" y2="-3" width="0.127" layer="51"/>
<wire x1="-9" y1="-3" x2="-6" y2="-3" width="0.127" layer="51"/>
<wire x1="-6" y1="-3" x2="-6" y2="-4" width="0.127" layer="51"/>
<wire x1="-4" y1="-4" x2="-4" y2="-3" width="0.127" layer="51"/>
<wire x1="-4" y1="-3" x2="-1" y2="-3" width="0.127" layer="51"/>
<wire x1="-1" y1="-3" x2="-1" y2="-4" width="0.127" layer="51"/>
<text x="-10" y="4.5" size="1.27" layer="25">&gt;NAME</text>
<text x="-10" y="-4.5" size="1.27" layer="27" align="top-left">&gt;VALUE</text>
<pad name="P$3" x="2.5" y="0" drill="1" diameter="2" shape="long" rot="R90"/>
<wire x1="1" y1="-4" x2="1" y2="-3" width="0.2032" layer="21"/>
<wire x1="1" y1="-3" x2="4" y2="-3" width="0.2032" layer="21"/>
<wire x1="4" y1="-3" x2="4" y2="-4" width="0.2032" layer="21"/>
<circle x="2.5" y="0" radius="1.75" width="0.127" layer="51"/>
<wire x1="1" y1="-4" x2="1" y2="-3" width="0.127" layer="51"/>
<wire x1="1" y1="-3" x2="4" y2="-3" width="0.127" layer="51"/>
<wire x1="4" y1="-3" x2="4" y2="-4" width="0.127" layer="51"/>
<pad name="P$4" x="7.5" y="0" drill="1" diameter="2" shape="long" rot="R90"/>
<wire x1="6" y1="-4" x2="6" y2="-3" width="0.2032" layer="21"/>
<wire x1="6" y1="-3" x2="9" y2="-3" width="0.2032" layer="21"/>
<wire x1="9" y1="-3" x2="9" y2="-4" width="0.2032" layer="21"/>
<circle x="7.5" y="0" radius="1.75" width="0.127" layer="51"/>
<wire x1="6" y1="-4" x2="6" y2="-3" width="0.127" layer="51"/>
<wire x1="6" y1="-3" x2="9" y2="-3" width="0.127" layer="51"/>
<wire x1="9" y1="-3" x2="9" y2="-4" width="0.127" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="PIN_CONNECTOR_2">
<description>&lt;strong&gt;Generic 2-pin connector symbol&lt;/strong&gt;</description>
<pin name="1" x="5.08" y="0" visible="pin" length="middle" rot="R180"/>
<pin name="2" x="5.08" y="-2.54" visible="pin" length="middle" rot="R180"/>
<wire x1="0" y1="0" x2="2.54" y2="0" width="0.635" layer="94"/>
<wire x1="0" y1="-2.54" x2="2.54" y2="-2.54" width="0.635" layer="94"/>
<text x="-5.08" y="3.302" size="1.778" layer="95">&gt;NAME</text>
<wire x1="2.54" y1="2.54" x2="2.54" y2="-5.08" width="0.254" layer="94"/>
<wire x1="2.54" y1="-5.08" x2="-5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-5.08" x2="-5.08" y2="2.54" width="0.254" layer="94"/>
<wire x1="-5.08" y1="2.54" x2="2.54" y2="2.54" width="0.254" layer="94"/>
</symbol>
<symbol name="PIN_CONNECTOR_3">
<description>&lt;strong&gt;Generic 3-pin connector symbol&lt;/strong&gt;</description>
<pin name="1" x="5.08" y="2.54" visible="pin" length="middle" rot="R180"/>
<pin name="2" x="5.08" y="0" visible="pin" length="middle" rot="R180"/>
<wire x1="0" y1="2.54" x2="2.54" y2="2.54" width="0.635" layer="94"/>
<wire x1="0" y1="0" x2="2.54" y2="0" width="0.635" layer="94"/>
<text x="-5.08" y="5.842" size="1.778" layer="95">&gt;NAME</text>
<wire x1="2.54" y1="5.08" x2="2.54" y2="-2.54" width="0.254" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="2.54" y2="-5.08" width="0.254" layer="94"/>
<wire x1="2.54" y1="-5.08" x2="-5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-5.08" x2="-5.08" y2="5.08" width="0.254" layer="94"/>
<wire x1="-5.08" y1="5.08" x2="2.54" y2="5.08" width="0.254" layer="94"/>
<pin name="3" x="5.08" y="-2.54" visible="pin" length="middle" rot="R180"/>
<wire x1="0" y1="-2.54" x2="2.54" y2="-2.54" width="0.635" layer="94"/>
</symbol>
<symbol name="PIN_CONNECTOR_4">
<description>&lt;strong&gt;Generic 4-pin connector symbol&lt;/strong&gt;</description>
<pin name="1" x="5.08" y="2.54" visible="pin" length="middle" rot="R180"/>
<pin name="2" x="5.08" y="0" visible="pin" length="middle" rot="R180"/>
<wire x1="0" y1="2.54" x2="2.54" y2="2.54" width="0.635" layer="94"/>
<wire x1="0" y1="0" x2="2.54" y2="0" width="0.635" layer="94"/>
<text x="-5.08" y="5.842" size="1.778" layer="95">&gt;NAME</text>
<wire x1="2.54" y1="5.08" x2="2.54" y2="-2.54" width="0.254" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="2.54" y2="-5.08" width="0.254" layer="94"/>
<wire x1="2.54" y1="-5.08" x2="2.54" y2="-7.62" width="0.254" layer="94"/>
<wire x1="2.54" y1="-7.62" x2="-5.08" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-7.62" x2="-5.08" y2="5.08" width="0.254" layer="94"/>
<wire x1="-5.08" y1="5.08" x2="2.54" y2="5.08" width="0.254" layer="94"/>
<pin name="3" x="5.08" y="-2.54" visible="pin" length="middle" rot="R180"/>
<wire x1="0" y1="-2.54" x2="2.54" y2="-2.54" width="0.635" layer="94"/>
<pin name="4" x="5.08" y="-5.08" visible="pin" length="middle" rot="R180"/>
<wire x1="0" y1="-5.08" x2="2.54" y2="-5.08" width="0.635" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="PIN_HEADER_2" prefix="C" uservalue="yes">
<gates>
<gate name="G$1" symbol="PIN_CONNECTOR_2" x="1.27" y="1.524"/>
</gates>
<devices>
<device name="-WIDE" package="BREAKAWAY_STRAIGHT_2_WIDE">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-SCREW-TERMINAL" package="TERMINAL_BLOCK_2">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="PIN_HEADER_3" prefix="C" uservalue="yes">
<gates>
<gate name="G$1" symbol="PIN_CONNECTOR_3" x="0" y="0"/>
</gates>
<devices>
<device name="-WIDE" package="BREAKAWAY_STRAIGHT_3_WIDE">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-SCREW-TERMINAL" package="TERMINAL_BLOCK_3">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
<connect gate="G$1" pin="3" pad="P$3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="PIN_HEADER_4" prefix="C" uservalue="yes">
<gates>
<gate name="G$1" symbol="PIN_CONNECTOR_4" x="1.27" y="0.762"/>
</gates>
<devices>
<device name="-WIDE" package="BREAKAWAY_STRAIGHT_4_WIDE">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-SCREW-TERMINAL" package="TERMINAL_BLOCK_4">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
<connect gate="G$1" pin="3" pad="P$3"/>
<connect gate="G$1" pin="4" pad="P$4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="frames">
<description>&lt;b&gt;Frames for Sheet and Layout&lt;/b&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="A5L-LOC">
<wire x1="85.09" y1="3.81" x2="85.09" y2="24.13" width="0.1016" layer="94"/>
<wire x1="85.09" y1="24.13" x2="139.065" y2="24.13" width="0.1016" layer="94"/>
<wire x1="139.065" y1="24.13" x2="180.34" y2="24.13" width="0.1016" layer="94"/>
<wire x1="170.18" y1="3.81" x2="170.18" y2="8.89" width="0.1016" layer="94"/>
<wire x1="170.18" y1="8.89" x2="180.34" y2="8.89" width="0.1016" layer="94"/>
<wire x1="170.18" y1="8.89" x2="139.065" y2="8.89" width="0.1016" layer="94"/>
<wire x1="139.065" y1="8.89" x2="139.065" y2="3.81" width="0.1016" layer="94"/>
<wire x1="139.065" y1="8.89" x2="139.065" y2="13.97" width="0.1016" layer="94"/>
<wire x1="139.065" y1="13.97" x2="180.34" y2="13.97" width="0.1016" layer="94"/>
<wire x1="139.065" y1="13.97" x2="139.065" y2="19.05" width="0.1016" layer="94"/>
<wire x1="139.065" y1="19.05" x2="180.34" y2="19.05" width="0.1016" layer="94"/>
<wire x1="139.065" y1="19.05" x2="139.065" y2="24.13" width="0.1016" layer="94"/>
<text x="140.97" y="15.24" size="2.54" layer="94">&gt;DRAWING_NAME</text>
<text x="140.97" y="10.16" size="2.286" layer="94">&gt;LAST_DATE_TIME</text>
<text x="154.305" y="5.08" size="2.54" layer="94">&gt;SHEET</text>
<text x="140.716" y="4.953" size="2.54" layer="94">Sheet:</text>
<frame x1="0" y1="0" x2="184.15" y2="133.35" columns="4" rows="4" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="A5L-LOC" prefix="FRAME" uservalue="yes">
<description>A5L LOC</description>
<gates>
<gate name="G$1" symbol="A5L-LOC" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="LIPO-BMS" library="icmi-custom-parts" deviceset="LIPO-BMS-CHARGER" device="-MODULE"/>
<part name="HUZZAH" library="icmi-custom-parts" deviceset="ADAFRUIT_HUZZAH" device="-THT"/>
<part name="GND1" library="supply1" deviceset="GND" device=""/>
<part name="GND2" library="supply1" deviceset="GND" device=""/>
<part name="P+2" library="supply1" deviceset="VCC" device=""/>
<part name="REG_1" library="icmi-regulators" deviceset="S7V8F3" device=""/>
<part name="P+1" library="supply1" deviceset="VCC" device=""/>
<part name="GND4" library="supply1" deviceset="GND" device=""/>
<part name="R1" library="icmi-passive-parts" deviceset="RESISTOR-1/4W" device="-12.7-AXIAL" value="10K"/>
<part name="R2" library="icmi-passive-parts" deviceset="RESISTOR-1/4W" device="-12.7-AXIAL" value="33K"/>
<part name="CON_BAT" library="icmi-connectors" deviceset="PIN_HEADER_2" device="-WIDE"/>
<part name="CON_PIR" library="icmi-connectors" deviceset="PIN_HEADER_3" device="-WIDE"/>
<part name="VDD1" library="supply1" deviceset="VDD" device=""/>
<part name="VDD2" library="supply1" deviceset="VDD" device=""/>
<part name="GND5" library="supply1" deviceset="GND" device=""/>
<part name="CON_SENSOR_1" library="icmi-connectors" deviceset="PIN_HEADER_4" device="-WIDE"/>
<part name="CON_SENSOR_2" library="icmi-connectors" deviceset="PIN_HEADER_4" device="-WIDE"/>
<part name="C1" library="icmi-passive-parts" deviceset="CAPACITOR_POLARIZED" device="-5X5-2.0" value="1000uF"/>
<part name="C2" library="icmi-passive-parts" deviceset="CAPACITOR_POLARIZED" device="-5X5-2.0" value="1000uF"/>
<part name="VDD3" library="supply1" deviceset="VDD" device=""/>
<part name="GND3" library="supply1" deviceset="GND" device=""/>
<part name="VDD4" library="supply1" deviceset="VDD" device=""/>
<part name="GND6" library="supply1" deviceset="GND" device=""/>
<part name="VDD5" library="supply1" deviceset="VDD" device=""/>
<part name="GND7" library="supply1" deviceset="GND" device=""/>
<part name="CON_SENSOR_3" library="icmi-connectors" deviceset="PIN_HEADER_4" device="-WIDE"/>
<part name="VDD6" library="supply1" deviceset="VDD" device=""/>
<part name="GND8" library="supply1" deviceset="GND" device=""/>
<part name="FRAME2" library="frames" deviceset="A5L-LOC" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<wire x1="85.09" y1="24.13" x2="85.09" y2="129.54" width="0.0254" layer="94"/>
</plain>
<instances>
<instance part="LIPO-BMS" gate="LIPO-BMS" x="35.56" y="111.76"/>
<instance part="HUZZAH" gate="_LOGIC" x="147.32" y="104.14"/>
<instance part="HUZZAH" gate="_SUPPLY" x="33.02" y="35.56"/>
<instance part="GND1" gate="1" x="33.02" y="17.78"/>
<instance part="GND2" gate="1" x="55.88" y="101.6"/>
<instance part="P+2" gate="VCC" x="55.88" y="124.46"/>
<instance part="REG_1" gate="S7V8F3" x="33.02" y="73.66"/>
<instance part="P+1" gate="VCC" x="15.24" y="76.2"/>
<instance part="GND4" gate="1" x="35.56" y="58.42"/>
<instance part="R1" gate="G$1" x="63.5" y="116.84"/>
<instance part="R2" gate="G$1" x="63.5" y="109.22"/>
<instance part="CON_BAT" gate="G$1" x="12.7" y="96.52"/>
<instance part="CON_PIR" gate="G$1" x="96.52" y="73.66"/>
<instance part="VDD1" gate="G$1" x="12.7" y="58.42"/>
<instance part="VDD2" gate="G$1" x="106.68" y="83.82"/>
<instance part="GND5" gate="1" x="106.68" y="63.5"/>
<instance part="CON_SENSOR_1" gate="G$1" x="96.52" y="40.64"/>
<instance part="CON_SENSOR_2" gate="G$1" x="127" y="40.64"/>
<instance part="C1" gate="G$1" x="60.96" y="35.56" rot="R270"/>
<instance part="C2" gate="G$1" x="71.12" y="35.56" rot="R270"/>
<instance part="VDD3" gate="G$1" x="66.04" y="48.26"/>
<instance part="GND3" gate="1" x="66.04" y="22.86"/>
<instance part="VDD4" gate="G$1" x="106.68" y="53.34"/>
<instance part="GND6" gate="1" x="106.68" y="27.94"/>
<instance part="VDD5" gate="G$1" x="137.16" y="53.34"/>
<instance part="GND7" gate="1" x="137.16" y="27.94"/>
<instance part="CON_SENSOR_3" gate="G$1" x="157.48" y="40.64"/>
<instance part="VDD6" gate="G$1" x="167.64" y="53.34"/>
<instance part="GND8" gate="1" x="167.64" y="27.94"/>
<instance part="FRAME2" gate="G$1" x="0" y="0"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="HUZZAH" gate="_LOGIC" pin="RST"/>
<wire x1="132.08" y1="114.3" x2="129.54" y2="114.3" width="0.1524" layer="91"/>
<wire x1="129.54" y1="114.3" x2="129.54" y2="106.68" width="0.1524" layer="91"/>
<pinref part="HUZZAH" gate="_LOGIC" pin="16"/>
<wire x1="129.54" y1="106.68" x2="132.08" y2="106.68" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="LIPO-BMS" gate="LIPO-BMS" pin="OUT-"/>
<wire x1="53.34" y1="109.22" x2="55.88" y2="109.22" width="0.1524" layer="91"/>
<pinref part="GND2" gate="1" pin="GND"/>
<wire x1="55.88" y1="109.22" x2="55.88" y2="104.14" width="0.1524" layer="91"/>
<pinref part="R2" gate="G$1" pin="1"/>
<wire x1="58.42" y1="109.22" x2="55.88" y2="109.22" width="0.1524" layer="91"/>
<junction x="55.88" y="109.22"/>
</segment>
<segment>
<pinref part="HUZZAH" gate="_SUPPLY" pin="GND_L"/>
<wire x1="27.94" y1="27.94" x2="27.94" y2="22.86" width="0.1524" layer="91"/>
<wire x1="27.94" y1="22.86" x2="33.02" y2="22.86" width="0.1524" layer="91"/>
<pinref part="GND1" gate="1" pin="GND"/>
<wire x1="33.02" y1="22.86" x2="33.02" y2="20.32" width="0.1524" layer="91"/>
<pinref part="HUZZAH" gate="_SUPPLY" pin="GND_S"/>
<wire x1="33.02" y1="27.94" x2="33.02" y2="22.86" width="0.1524" layer="91"/>
<pinref part="HUZZAH" gate="_SUPPLY" pin="GND_R"/>
<wire x1="38.1" y1="27.94" x2="38.1" y2="22.86" width="0.1524" layer="91"/>
<wire x1="38.1" y1="22.86" x2="33.02" y2="22.86" width="0.1524" layer="91"/>
<junction x="33.02" y="22.86"/>
</segment>
<segment>
<pinref part="REG_1" gate="S7V8F3" pin="GND"/>
<pinref part="GND4" gate="1" pin="GND"/>
<wire x1="35.56" y1="63.5" x2="35.56" y2="60.96" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="CON_PIR" gate="G$1" pin="3"/>
<wire x1="101.6" y1="71.12" x2="106.68" y2="71.12" width="0.1524" layer="91"/>
<pinref part="GND5" gate="1" pin="GND"/>
<wire x1="106.68" y1="71.12" x2="106.68" y2="66.04" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C1" gate="G$1" pin="C"/>
<wire x1="60.96" y1="30.48" x2="60.96" y2="27.94" width="0.1524" layer="91"/>
<wire x1="60.96" y1="27.94" x2="66.04" y2="27.94" width="0.1524" layer="91"/>
<pinref part="GND3" gate="1" pin="GND"/>
<wire x1="66.04" y1="27.94" x2="66.04" y2="25.4" width="0.1524" layer="91"/>
<wire x1="66.04" y1="27.94" x2="71.12" y2="27.94" width="0.1524" layer="91"/>
<pinref part="C2" gate="G$1" pin="C"/>
<wire x1="71.12" y1="27.94" x2="71.12" y2="30.48" width="0.1524" layer="91"/>
<junction x="66.04" y="27.94"/>
</segment>
<segment>
<pinref part="CON_SENSOR_1" gate="G$1" pin="4"/>
<pinref part="GND6" gate="1" pin="GND"/>
<wire x1="101.6" y1="35.56" x2="106.68" y2="35.56" width="0.1524" layer="91"/>
<wire x1="106.68" y1="35.56" x2="106.68" y2="30.48" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="CON_SENSOR_2" gate="G$1" pin="4"/>
<pinref part="GND7" gate="1" pin="GND"/>
<wire x1="132.08" y1="35.56" x2="137.16" y2="35.56" width="0.1524" layer="91"/>
<wire x1="137.16" y1="35.56" x2="137.16" y2="30.48" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="CON_SENSOR_3" gate="G$1" pin="4"/>
<pinref part="GND8" gate="1" pin="GND"/>
<wire x1="162.56" y1="35.56" x2="167.64" y2="35.56" width="0.1524" layer="91"/>
<wire x1="167.64" y1="35.56" x2="167.64" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="VCC" class="0">
<segment>
<pinref part="LIPO-BMS" gate="LIPO-BMS" pin="OUT+"/>
<wire x1="53.34" y1="116.84" x2="55.88" y2="116.84" width="0.1524" layer="91"/>
<pinref part="P+2" gate="VCC" pin="VCC"/>
<wire x1="55.88" y1="116.84" x2="55.88" y2="121.92" width="0.1524" layer="91"/>
<pinref part="R1" gate="G$1" pin="1"/>
<wire x1="55.88" y1="116.84" x2="58.42" y2="116.84" width="0.1524" layer="91"/>
<junction x="55.88" y="116.84"/>
</segment>
<segment>
<pinref part="REG_1" gate="S7V8F3" pin="VIN"/>
<wire x1="30.48" y1="63.5" x2="30.48" y2="58.42" width="0.1524" layer="91"/>
<wire x1="30.48" y1="58.42" x2="15.24" y2="58.42" width="0.1524" layer="91"/>
<wire x1="15.24" y1="58.42" x2="15.24" y2="73.66" width="0.1524" layer="91"/>
<pinref part="P+1" gate="VCC" pin="VCC"/>
</segment>
</net>
<net name="VSENSE" class="0">
<segment>
<pinref part="R1" gate="G$1" pin="2"/>
<wire x1="68.58" y1="116.84" x2="71.12" y2="116.84" width="0.1524" layer="91"/>
<wire x1="71.12" y1="116.84" x2="71.12" y2="113.03" width="0.1524" layer="91"/>
<pinref part="R2" gate="G$1" pin="2"/>
<wire x1="71.12" y1="113.03" x2="71.12" y2="109.22" width="0.1524" layer="91"/>
<wire x1="71.12" y1="109.22" x2="68.58" y2="109.22" width="0.1524" layer="91"/>
<wire x1="71.12" y1="113.03" x2="81.28" y2="113.03" width="0.1524" layer="91"/>
<junction x="71.12" y="113.03"/>
<label x="73.66" y="113.284" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="HUZZAH" gate="_LOGIC" pin="A"/>
<wire x1="132.08" y1="111.76" x2="116.84" y2="111.76" width="0.1524" layer="91"/>
<label x="116.84" y="111.76" size="1.778" layer="95"/>
</segment>
</net>
<net name="BAT+" class="0">
<segment>
<pinref part="CON_BAT" gate="G$1" pin="1"/>
<wire x1="17.78" y1="96.52" x2="33.02" y2="96.52" width="0.1524" layer="91"/>
<pinref part="LIPO-BMS" gate="LIPO-BMS" pin="BAT+"/>
<wire x1="33.02" y1="96.52" x2="33.02" y2="99.06" width="0.1524" layer="91"/>
</segment>
</net>
<net name="BAT-" class="0">
<segment>
<pinref part="CON_BAT" gate="G$1" pin="2"/>
<wire x1="17.78" y1="93.98" x2="38.1" y2="93.98" width="0.1524" layer="91"/>
<pinref part="LIPO-BMS" gate="LIPO-BMS" pin="BAT-"/>
<wire x1="38.1" y1="93.98" x2="38.1" y2="99.06" width="0.1524" layer="91"/>
</segment>
</net>
<net name="VDD" class="0">
<segment>
<pinref part="REG_1" gate="S7V8F3" pin="VOUT"/>
<wire x1="25.4" y1="63.5" x2="25.4" y2="53.34" width="0.1524" layer="91"/>
<wire x1="25.4" y1="53.34" x2="27.94" y2="53.34" width="0.1524" layer="91"/>
<pinref part="HUZZAH" gate="_SUPPLY" pin="V+"/>
<wire x1="27.94" y1="53.34" x2="33.02" y2="53.34" width="0.1524" layer="91"/>
<wire x1="33.02" y1="53.34" x2="33.02" y2="48.26" width="0.1524" layer="91"/>
<pinref part="HUZZAH" gate="_SUPPLY" pin="VCC"/>
<wire x1="27.94" y1="53.34" x2="27.94" y2="48.26" width="0.1524" layer="91"/>
<junction x="27.94" y="53.34"/>
<wire x1="25.4" y1="53.34" x2="12.7" y2="53.34" width="0.1524" layer="91"/>
<pinref part="VDD1" gate="G$1" pin="VDD"/>
<wire x1="12.7" y1="53.34" x2="12.7" y2="55.88" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="CON_PIR" gate="G$1" pin="1"/>
<wire x1="101.6" y1="76.2" x2="106.68" y2="76.2" width="0.1524" layer="91"/>
<pinref part="VDD2" gate="G$1" pin="VDD"/>
<wire x1="106.68" y1="76.2" x2="106.68" y2="81.28" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C1" gate="G$1" pin="A"/>
<wire x1="60.96" y1="40.64" x2="60.96" y2="43.18" width="0.1524" layer="91"/>
<wire x1="60.96" y1="43.18" x2="66.04" y2="43.18" width="0.1524" layer="91"/>
<pinref part="VDD3" gate="G$1" pin="VDD"/>
<wire x1="66.04" y1="43.18" x2="66.04" y2="45.72" width="0.1524" layer="91"/>
<wire x1="66.04" y1="43.18" x2="71.12" y2="43.18" width="0.1524" layer="91"/>
<pinref part="C2" gate="G$1" pin="A"/>
<wire x1="71.12" y1="43.18" x2="71.12" y2="40.64" width="0.1524" layer="91"/>
<junction x="66.04" y="43.18"/>
</segment>
<segment>
<pinref part="CON_SENSOR_1" gate="G$1" pin="1"/>
<pinref part="VDD4" gate="G$1" pin="VDD"/>
<wire x1="101.6" y1="43.18" x2="106.68" y2="43.18" width="0.1524" layer="91"/>
<wire x1="106.68" y1="43.18" x2="106.68" y2="50.8" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="CON_SENSOR_2" gate="G$1" pin="1"/>
<pinref part="VDD5" gate="G$1" pin="VDD"/>
<wire x1="132.08" y1="43.18" x2="137.16" y2="43.18" width="0.1524" layer="91"/>
<wire x1="137.16" y1="43.18" x2="137.16" y2="50.8" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="CON_SENSOR_3" gate="G$1" pin="1"/>
<pinref part="VDD6" gate="G$1" pin="VDD"/>
<wire x1="162.56" y1="43.18" x2="167.64" y2="43.18" width="0.1524" layer="91"/>
<wire x1="167.64" y1="43.18" x2="167.64" y2="50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="PIR" class="0">
<segment>
<pinref part="CON_PIR" gate="G$1" pin="2"/>
<wire x1="101.6" y1="73.66" x2="111.76" y2="73.66" width="0.1524" layer="91"/>
<label x="109.22" y="73.66" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="HUZZAH" gate="_LOGIC" pin="12"/>
<wire x1="132.08" y1="101.6" x2="116.84" y2="101.6" width="0.1524" layer="91"/>
<label x="116.84" y="101.6" size="1.778" layer="95"/>
</segment>
</net>
<net name="SDA" class="0">
<segment>
<pinref part="CON_SENSOR_2" gate="G$1" pin="2"/>
<wire x1="132.08" y1="40.64" x2="144.78" y2="40.64" width="0.1524" layer="91"/>
<label x="139.7" y="40.64" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="CON_SENSOR_1" gate="G$1" pin="2"/>
<wire x1="101.6" y1="40.64" x2="114.3" y2="40.64" width="0.1524" layer="91"/>
<label x="109.22" y="40.64" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="CON_SENSOR_3" gate="G$1" pin="2"/>
<wire x1="162.56" y1="40.64" x2="175.26" y2="40.64" width="0.1524" layer="91"/>
<label x="170.18" y="40.64" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="HUZZAH" gate="_LOGIC" pin="4"/>
<wire x1="160.02" y1="106.68" x2="172.72" y2="106.68" width="0.1524" layer="91"/>
<label x="167.64" y="106.68" size="1.778" layer="95"/>
</segment>
</net>
<net name="SCL" class="0">
<segment>
<pinref part="CON_SENSOR_2" gate="G$1" pin="3"/>
<wire x1="132.08" y1="38.1" x2="144.78" y2="38.1" width="0.1524" layer="91"/>
<label x="139.7" y="38.1" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="CON_SENSOR_1" gate="G$1" pin="3"/>
<wire x1="101.6" y1="38.1" x2="114.3" y2="38.1" width="0.1524" layer="91"/>
<label x="109.22" y="38.1" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="CON_SENSOR_3" gate="G$1" pin="3"/>
<wire x1="162.56" y1="38.1" x2="175.26" y2="38.1" width="0.1524" layer="91"/>
<label x="170.18" y="38.1" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="HUZZAH" gate="_LOGIC" pin="5"/>
<wire x1="160.02" y1="109.22" x2="172.72" y2="109.22" width="0.1524" layer="91"/>
<label x="167.64" y="109.22" size="1.778" layer="95"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="6.3" minversion="6.2.2" severity="warning">
Since Version 6.2.2 text objects can contain more than one line,
which will not be processed correctly with this version.
</note>
</compatibility>
</eagle>
