FIREFOX SMOOTH-SCROLLING - from https://averagelinuxuser.com/firefox-smooth-scrolling/


###############################################################


about:config

1) ---------------------------------------------

mousewheel.min_line_scroll_amount. 

change the step of the scrolling. 

 
Set it to 5 or 10

________________________________________________

2) ---------------------------------------------

general.smoothScroll.mouseWheel.durationMaxMS

set to 

500
________________________________________________

3) ---------------------------------------------

general.smoothScroll.mouseWheel.durationMinMS 

set to

400
________________________________________________

This and the previous settings will adjust the smoothness.

###############################################################

Finally, restart Firefox and you will experience a faster and 
smoother scrolling. So, you can quickly get to the top and to the bottom
 of a web-page just with the mouse wheel and a web-page will move 
smoothly.

