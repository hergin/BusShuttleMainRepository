Project Description:
====================

The department of Transportation and Facilities Management wants to create a centralized system that will create and manage the logs created by shuttle-bus drivers on campus. These drivers currently write the data onto paper and then digitize this information on a computer at a later time. This new system should also represent the data to a supervisor in a useful way.

Use Cases:
==========

1.  As a shuttle bus driver, I will enter and submit any stop information on the tablet.

2.  The system should update in the background when internet connectivity has been established/reestablished.

3.  As a supervisor, I should be able to add information to the database regarding new stops and new busses.

4.  As a supervisor, I will edit or modify entries in the database to fix mistakes.

5.  As a supervisor, I will be able to view the real-time information on my desktop.

6.  As a supervisor, I will be able to export the real-time information to be used in other software.

7.  The system shall display stop information by the hour.

8.  As a supervisor, I will be able to filter and display stop information.

9.  The system shall be viewable by more than one user at a single time.

User Classes and Characteristics:![](https://lh4.googleusercontent.com/Be-L2oiTKQODsG9pjnI-puGkSwaeW0ohJibFrJqN5Gp3tqvoI9VrYk-T-arEiN5aS1FCNJmcvaonpl6Qn_x0OnKlsaBldwSZhmItCk5K7aksK3q3uMK_q25H1KWiWxZ4WnvbzNGX)
================================================================================================================================================================================================================

Driver: The driver is the primary user of the "mobile system" of the application. They will use the application when they are stopped at their stops. They will use the application to record how many people are using Ball State's buses.

Standard User: The standard user will use the "desktop system". It will be used to sort the information that is gathered by the drivers into a useful form. The standard user will sort the information into the form that they want, then they will be able to use the application to export the information into a file format that can be imported into microsoft Excel.

Admin: The admin will be able to sign into the application with their credentials to access features of the desktop system that is not available to the standard user. The admin will be able to update and correct information from the drivers. The admin will also be able to add/edit/delete buses/loops/stops.

Technical Constraints:
======================

-The buses may not have an internet connection at all times, so the mobile system must be able to work without an internet connection.

-The mobile system needs to be able to save the information when it doesn't have an internet connection and then push it when it has a connection.

-The Desktop system needs to be able to work with the new information by refreshing in the background.

Requirements
============

Functional
----------

Driver:

-Set the amount of people getting on the bus

-"Sign on" at the start of their shift

-Select the stop

-Be alerted if the the information was pushed or not

-see a log for the day

-see if their information was pushed

-say if they left anyone behind

-must work with sporadic internet connection

Desktop Standard User:

-view the information from the drivers

-view the information as it is updating

-filter information

-export information

Desktop Admin User:

-add/edit/delete buses/loops/stops.

Non-Functional:
---------------

Driver:

-easy to use

-not distracting

-must be fast

Desktop Standard User:

-easy to use

-the user interface must be be intuitive and easy to learn and use

Assumptions:
============

-   We assume that they'll need a feature that will indicate whether students were left behind or not.

-   There are a few formats that we could export to but we still haven't talked about how exactly they'll use the exported data.
