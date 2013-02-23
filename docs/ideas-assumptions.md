Ideas and Assumptions
=====================

There are several different things going on in this project, which should be
split down and offer general interfaces should someone want to extend or build 
out their own solution to an aspect of the project.

The main ideas are:

Executables
-----------
*Browzy CLI master client* - this is where the scenarios are stored and run.
*Browzy Services* - these run on the machines that will be used to display the
resulting HTML on.

Design Ideas
------------
*Discovery Layer* - Whether via Bonjour, LLDP, uPnP or whatever is chosen, there
needs to be an easy way to reach all available services, find out what browsers
they support and start listening to the master client for HTML scenarios to
process.
*HTML Layer* - How to deliver working HTML to all browsers? Do we fire up a full
interactive Rails stack? Will this be sufficient?? Should we just be firing raw
HTML to it in order to support other protocols? What issues will we come into 
doing this?? Do we need to search and remove hard links? Obviously need latest
CSS & JS delivered to all clients. + some guarantee that no caching is occuring?
Should we be doing asset substitution?? Leading down a rabbithole..??

