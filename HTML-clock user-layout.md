#### Both are slightly modified versions of: *Date&Time grid w/dayname* 
##### "Uke" is norwegian for "week"

# Simple 
```html
<html>
<body>
<table style="border: none;" align="center">
    <tr>
        <!-- clock -->
        <td valign="middle" align="center" style="padding-right: 8px;">
            <span style="font-size: 55px; color:#FFff006e;">{hh}</span>
            <span style="font-size: 50px; color:#{flip:00:FF}ff006e;">: </span>
            <span style="font-size: 55px; color: white;">{ii}</span>
        </td>
        <!-- verical divider -->
        <td rowspan="2" width="1" style="vertical-align: middle; background-color: #FFff006e;">
            <span style="font-size: 25px;"><br /><br /></span>
        </td>
        <!-- calendar -->
        <td rowspan="2" valign="middle" align="center" style="padding-left: 8px;">
            <span style="font-size: 16px; color:#FFff006e;">{DDD:U}<br /></span>
            <span style="font-size: 16px; color: white;">{dd} {MMM:U}<br />{yyyy}<br /></span>
            <span style="font-size: 16px; color:#FFff006e;">Uke {wy}</span>
        <td>
    </tr>
</table>
</body>
</html>
```
# Lotsa bullshit
```html
<html>
<body>
<table style="border: none;" align="center">
    <tr>
        <!-- clock -->
        <td rowspan="3" valign="middle" align="center" style="padding-right: 8px;">
            <span style="font-size: 115px; color: white;">{hh}</span>
            <span style="font-size: 75px;  color: #{flip:00:FF}ff006e;">:</span>
            <span style="font-size: 95px; color: white;">{ii}</span>
            <span style="font-size: 61px; color: #{flip:00:FF}ff006e;"><sup>:</sup></span>
            <span style="font-size: 61px; color: #aaaa00;"><sup>{ss}</sup></span>
        </td>
        <!-- verical divider -->
        <td rowspan="3" width="1" style="vertical-align: middle; background-color: #FFff006e;">
            <span style="font-size: 75px;"><br /></span>
        </td>
        <!-- calendar -->
        <td rowspan="5" valign="middle" align="center" style="padding-left: 14px;">
            <span style="font-size: 25px; color: white;">{DDD:u}</span>
            <span style="font-size: 23px; color: white;"><br />{dd}</span>
            <span style="font-size: 19px; color: #aaaa00;">{MMM:u}</span>
            <span style="font-size: 17px; color: #FFff006e;"><br />Uke:</span>
            <span style="font-size: 21px; color: white;">{wy}</span>
            <span style="font-size: 19px; color: white;"><br />{dd}</span>
            <span style="font-size: 19px; color:#FFff006e;">/</span>
            <span style="font-size: 19px; color:white;">{mm}</span>
            <span style="font-size: 19px; color:#FFff006e;">/</span>
            <span style="font-size: 19px; color: #FFff006e;">{yy}</span>
        <td>
    </tr>
</table>
</body>
</html>
```
