-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 22, 2016 at 12:33 PM
-- Server version: 10.1.11-MariaDB
-- PHP Version: 7.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ElegantLinux`
--

-- --------------------------------------------------------

--
-- Table structure for table `navigation`
--

CREATE TABLE `navigation` (
  `id` mediumint(9) NOT NULL,
  `label` varchar(300) NOT NULL,
  `url` varchar(300) NOT NULL,
  `target` varchar(30) NOT NULL,
  `position` int(3) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `navigation`
--

INSERT INTO `navigation` (`id`, `label`, `url`, `target`, `position`, `status`) VALUES
(1, 'Home', 'http://localhost/home', '', 0, 1),
(2, 'Tutorials â–¾', 'http://localhost/tutorials', '', 1, 1),
(3, 'Installations â–¾', 'http://localhost/installations', '', 2, 1),
(4, 'Learn â–¾', 'http://localhost/learn', '', 4, 1),
(5, 'Applications â–¾', 'http://localhost/applications', '', 5, 1),
(6, 'Developer''s Tool â–¾', 'http://localhost/developerstool', '', 6, 1),
(7, 'Tips & Tricks', 'http://localhost/tips&tricks', '', 7, 1),
(8, 'eBooks', 'http://localhost/ebooks', '', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` mediumint(9) NOT NULL,
  `user` mediumint(9) NOT NULL,
  `type` mediumint(9) NOT NULL,
  `slug` varchar(300) NOT NULL,
  `label` varchar(100) NOT NULL,
  `title` varchar(200) NOT NULL,
  `header` varchar(300) NOT NULL,
  `body` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user`, `type`, `slug`, `label`, `title`, `header`, `body`) VALUES
(1, 1, 1, 'home', 'Home', 'Home Page', '', '<h1 class="text-shadow" style="font-weight: bold; color: darkgreen;">Recents Posts</h1>\r\n<hr style="color: darkgrey; margin: 5px; clear: both;" />\r\n<p><img style="height: 200px; width: 200px; margin: 5px; float: left;" src="Images/image1.jpeg" /></p>\r\n<h1><a href="#">Ubuntu 16.04 "Xenial Xerus" Release Schedule</a></h1>\r\n<p style="font-family: Verdana; font-size: 14px;">Ubuntu 16.04, which is codenamed the "Xenial Xerus", is currently penciled in to release on 21rd April, 2016. The release date for Ubuntu 16.04 has now been firmed up as are the other development milestones leading up to the mid-April debut of this release, this will be 6th Long-term-support LTS release of Ubuntu, the very first LTS release was back in 2006. Ubuntu 16.04 Xenial Xerus (LTS) will use Unity 7 desktop and Linux Kernel 4.4 with updated applications, Ubuntu 16.04 will be a big focus on convergence, and many other changes planned for development over the next six months.</p>\r\n<p>&nbsp;</p>\r\n<h3>The schedule of the release of Ubuntu 16.04 Xenial Xerus with given dates are as follows:</h3>\r\n<ul style="font-size: 14px;">\r\n<li>December 31st - Alpha 1 (Not Public Release - opt-in)</li>\r\n<li>January 28th - Alpha 2 (Not Public Release - opt-in)</li>\r\n<li>February 25th - Beta 1 (Not Public Release - opt-in)</li>\r\n<li style="font-weight: bold;">March 24th - Final Beta</li>\r\n<li style="font-weight: bold;">April 14th - Release Candidate</li>\r\n<li style="font-weight: bold;">April 21rd - Final Release of Ubuntu 16.04 Xenial Xerus LTS</li>\r\n</ul>\r\n<p><a href="#"><input style="float: right; margin-right: 50px; right: 300px;" type="button" value="Read More.." /></a></p>\r\n<hr style="color: darkgrey; margin: 5px; clear: both;" />\r\n<p><br /> <img style="height: 200px; width: 200px; margin: 5px; float: left;" src="Images/mate-desktop.jpg" /></p>\r\n<h1><a href="#">Latest Mate 1.12.1 Desktop Environment Available for Ubuntu 15.10 Wily &amp; 16.04 Xenial</a></h1>\r\n<p style="font-family: Verdana; font-size: 14px;">MATE desktop environment was forked from of GNOME 2 and initial release was in 2011. It provides an intuitive and attractive desktop environment using traditional metaphors for Linux and other Unix-like operating systems. MATE has carried number of Gnome Core Applications with it, and developers ...</p>\r\n<p style="font-family: Verdana;"><a href="#"><input style="float: right; margin-right: 50px; right: 300px;" type="button" value="Read More.." /></a></p>\r\n<hr style="color: darkgrey; margin: 5px; clear: both;" />\r\n<p style="font-family: Verdana;"><br /> <img style="height: 200px; width: 200px; margin: 5px; float: left;" src="Images/budgie-desktop-1.jpg" /></p>\r\n<h1><a href="#">Budgie Desktop Available for Ubuntu 16.04/15.10/14.04/Linux Mint</a></h1>\r\n<p style="font-family: Verdana; font-size: 14px;">Budgie is default desktop environment of the Evolve OS Linux distribution, and it is Evolve OS project. Budgie desktop is designed for modern user, it focuses on minimal, elegance, and simple desktop. The main point of this Budgie desktop is that it''s not forked from any other project but rather one&hellip;</p>\r\n<p style="font-family: Verdana;"><a href="#"><input style="float: right; margin-right: 50px; right: 300px;" type="button" value="Read More.." /></a></p>'),
(2, 3, 1, 'tutorials', 'Tutorials', 'Tutorials', '', '<h1 class="text-shadow" style="font-weight: bold; color: darkgreen;">Tutorials</h1>\r\n<hr style="color: darkgrey; margin: 5px; clear: both;" />\r\n<h3>Complete List of Tutorials</h3>\r\n<p style="font-size: 12px;">&gt;&gt;&gt;Press Ctrl+F and type ''Keyword'' to search required Tutorial&lt;&lt;&lt;</p>\r\n<p>&nbsp;</p>\r\n<p style="color: magenta;">Click on Links</p>\r\n<ul style="list-style-type: none; margin: 0px; padding: 10px; font-size: 13px;">\r\n<li style="margin-bottom: 7px;"><a href="#id1">Global Tutorials</a></li>\r\n<li style="margin-bottom: 7px;"><a href="#id2">Tutorials for Ubuntu 15.10 Wily Werewolf</a></li>\r\n<li style="margin-bottom: 7px;"><a href="#id3">Tutorials for Ubuntu 15.04 Vivid Vervet</a></li>\r\n<li style="margin-bottom: 7px;"><a href="#id4">Tutorials for Ubuntu Tutorials for Ubuntu 14.04 Trusty Tahr/Linux Mint 17.x</a></li>\r\n<li style="margin-bottom: 7px;"><a href="#id5">Tutorials for Ubuntu Tutorials for Ubuntu 12.04 Precise/Linux Mint 13 Maya</a></li>\r\n<li style="margin-bottom: 7px;"><a href="#"><strike>Tutorials for Ubuntu 14.10 Utopic Unicorn</strike> </a><span style="color: red;">Obsoloted (You must upgrade to supported version)</span></li>\r\n<li style="margin-bottom: 7px;"><a href="#"><strike>Tutorials for Ubuntu Tutorials for Ubuntu 13.04 Raring/Linux Mint 15 Olivia</strike> </a><span style="color: red;">Obsoloted (You must upgrade to supported version)</span></li>\r\n<li style="margin-bottom: 7px;"><a href="#"><strike>Tutorials for Ubuntu 13.10 Saucy/Linux Mint 16 Petra</strike> </a><span style="color: red;">Obsoloted (You must upgrade to supported version)</span></li>\r\n<li style="margin-bottom: 7px;"><a href="#"><strike>Tutorials for Ubuntu Tutorials for Ubuntu 13.04 Raring/Linux Mint 15 Olivia</strike> </a><span style="color: red;">Obsoloted (You must upgrade to supported version)</span></li>\r\n<li style="margin-bottom: 7px;"><a href="#"><strike>Tutorials for Ubuntu Tutorials for Ubuntu 12.10 Quantal/Linux Mint 14 Nadia</strike> </a><span style="color: red;">Obsoloted (You must upgrade to supported version)</span></li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<h3 id="id1">Global Tutorials(Works with most of Ubuntu versions)</h3>\r\n<table style="font-size: 14px;">\r\n<tbody>\r\n<tr style="border: 1px solid black;">\r\n<td><a href="#">Ubuntu/Mint Fixes and Tips: sources,dpkg,fonts,Brightness,Low graphics &amp; Others</a></td>\r\n</tr>\r\n<tr style="border: 1px solid black;">\r\n<td><a href="#">Install Ubuntu Server Manager in Ubuntu/Linux Mint</a></td>\r\n</tr>\r\n<tr style="border: 1px solid black;">\r\n<td><a href="#">Install Graphical User Interface (GUI) in Ubuntu Server</a></td>\r\n</tr>\r\n<tr style="border: 1px solid black;">\r\n<td><a href="#">Install/Recover Grub from Linux Live CD</a></td>\r\n</tr>\r\n<tr style="border: 1px solid black;">\r\n<td><a href="#">Fix Unknown Display Problem in Ubuntu/Linux Mint</a></td>\r\n</tr>\r\n<tr style="border: 1px solid black;">\r\n<td><a href="#">Alternative Flash Player for Ubuntu/Linux Mint/any Linux Distro</a></td>\r\n</tr>\r\n<tr style="border: 1px solid black;">\r\n<td><a href="#">If Internet is Working Slow Disable IPv6 in Ubuntu/Linux Mint</a></td>\r\n</tr>\r\n<tr style="border: 1px solid black;">\r\n<td><a href="#">Install Oracle Java in Ubuntu/Linux Mint/Any Ubuntu Based Distro</a></td>\r\n</tr>\r\n<tr style="border: 1px solid black;">\r\n<td><a href="#">Disable online searches in Ubuntu</a></td>\r\n</tr>\r\n<tr style="border: 1px solid black;">\r\n<td><a href="#">Automate &amp; Schedule tasks with ComplexShutdown in Ubuntu/Linux Mint</a></td>\r\n</tr>\r\n<tr style="border: 1px solid black;">\r\n<td><a href="#">Windows Program Using Wine and PlayOnLinux</a></td>\r\n</tr>\r\n<tr style="border: 1px solid black;">\r\n<td><a href="#">Play Games using steam on Linux</a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<h3 id="id2">Tutorials for Ubuntu 15.10 Wily Werewolf<span style="color: red; font-style: italic;"> New!</span></h3>\r\n<table style="font-size: 14px;">\r\n<tbody>\r\n<tr style="border: 1px solid black;">\r\n<td><a href="#">Download Ubuntu 15.10 Wily Werewolf <span style="color: red; font-style: italic;"> Hot</span></a></td>\r\n</tr>\r\n<tr style="border: 1px solid black;">\r\n<td><a href="#">Top Tweaks/Things to do after install of Ubuntu 15.10 Wily Werewolf <span style="color: red; font-style: italic;"> Hot</span></a></td>\r\n</tr>\r\n<tr style="border: 1px solid black;">\r\n<td><a href="#">How to Upgrade to Ubuntu 15.10 Wily from Any Ubuntu Version</a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style="font-size: 14px;">\r\n<tbody>\r\n<tr style="border: 1px solid black;">\r\n<td><a href="#">App Grid Software Center for Ubuntu/Linux Mint</a></td>\r\n<td><a href="#">Install PlayOnLinux in Ubuntu/Linux Mint</a></td>\r\n</tr>\r\n<tr style="border: 1px solid black;">\r\n<td><a href="#">Xtreme Download Manager for Ubuntu/Mint</a></td>\r\n<td><a href="#">Install LibreOffice 5.1 in Ubuntu/Linux Mint</a></td>\r\n</tr>\r\n<tr style="border: 1px solid black;">\r\n<td><a href="#">VirtualBox 5.0 for Ubuntu/Linux Mint</a></td>\r\n<td><a href="#">Dock for Ubuntu" for Ubuntu/Linux Mint</a></td>\r\n</tr>\r\n<tr style="border: 1px solid black;">\r\n<td><a href="#">Install VLC Player in Ubuntu/Linux Mint</a></td>\r\n<td><a href="#">Variety wallpaper changer for Ubuntu/Mint</a></td>\r\n</tr>\r\n<tr style="border: 1px solid black;">\r\n<td><a href="#">Rhythmbox with Plugins for Ubuntu/Mint</a></td>\r\n<td><a href="#">Mate 1.12.1 desktop for Ubuntu</a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<h3 id="id3">Tutorials for Ubuntu 15.04 Vivid Vervet</h3>\r\n<table style="font-size: 14px;">\r\n<tbody>\r\n<tr style="border: 1px solid black;">\r\n<td><a href="#">Download Ubuntu 15.04 Vivid Vervet<span style="color: red; font-style: italic;"> Hot</span></a></td>\r\n</tr>\r\n<tr style="border: 1px solid black;">\r\n<td><a href="#">Top Tweaks/Things to do after install of 15.04 Vivid Vervet<span style="color: red; font-style: italic;"> Hot</span></a></td>\r\n</tr>\r\n<tr style="border: 1px solid black;">\r\n<td><a href="#">How to Upgrade to Ubuntu 15.04 Vivid Vervet</a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style="font-size: 14px;">\r\n<tbody>\r\n<tr style="border: 1px solid black;">\r\n<td><a href="#">App Grid Software Center for Ubuntu/Linux Mint</a></td>\r\n<td><a href="#">Install PlayOnLinux in Ubuntu/Linux Mint</a></td>\r\n</tr>\r\n<tr style="border: 1px solid black;">\r\n<td><a href="#">Xtreme Download Manager for Ubuntu/Mint</a></td>\r\n<td><a href="#">Install LibreOffice 5.1 in Ubuntu/Linux Mint</a></td>\r\n</tr>\r\n<tr style="border: 1px solid black;">\r\n<td><a href="#">VirtualBox 5.0 for Ubuntu/Linux Mint</a></td>\r\n<td><a href="#">Dock for Ubuntu" for Ubuntu/Linux Mint</a></td>\r\n</tr>\r\n<tr style="border: 1px solid black;">\r\n<td><a href="#">Install VLC Player in Ubuntu/Linux Mint</a></td>\r\n<td><a href="#">Variety wallpaper changer for Ubuntu/Mint</a></td>\r\n</tr>\r\n<tr style="border: 1px solid black;">\r\n<td><a href="#">Rhythmbox with Plugins for Ubuntu/Mint</a></td>\r\n<td><a href="#">Mate 1.12.1 desktop for Ubuntu</a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<h3 id="id4">Tutorials for Ubuntu 14.04 Trusty Tahr</h3>\r\n<table style="font-size: 14px;">\r\n<tbody>\r\n<tr style="border: 1px solid black;">\r\n<td><a href="#">Download Ubuntu 14.04 Trusty Tahr</a></td>\r\n</tr>\r\n<tr style="border: 1px solid black;">\r\n<td><a href="#">Top Tweaks/Things to do after install of Ubuntu 14.04 Trusty Tahr<span style="color: red; font-style: italic;"> Hot</span></a></td>\r\n</tr>\r\n<tr style="border: 1px solid black;">\r\n<td><a href="#">How to Upgrade to Ubuntu Ubuntu 14.04 Trusty Tahr</a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style="font-size: 14px;">\r\n<tbody>\r\n<tr style="border: 1px solid black;">\r\n<td><a href="#">App Grid Software Center for Ubuntu/Linux Mint</a></td>\r\n<td><a href="#">Install PlayOnLinux in Ubuntu/Linux Mint</a></td>\r\n</tr>\r\n<tr style="border: 1px solid black;">\r\n<td><a href="#">Xtreme Download Manager for Ubuntu/Mint</a></td>\r\n<td><a href="#">Install LibreOffice 5.1 in Ubuntu/Linux Mint</a></td>\r\n</tr>\r\n<tr style="border: 1px solid black;">\r\n<td><a href="#">VirtualBox 5.0 for Ubuntu/Linux Mint</a></td>\r\n<td><a href="#">Dock for Ubuntu" for Ubuntu/Linux Mint</a></td>\r\n</tr>\r\n<tr style="border: 1px solid black;">\r\n<td><a href="#">Install VLC Player in Ubuntu/Linux Mint</a></td>\r\n<td><a href="#">Variety wallpaper changer for Ubuntu/Mint</a></td>\r\n</tr>\r\n<tr style="border: 1px solid black;">\r\n<td><a href="#">Rhythmbox with Plugins for Ubuntu/Mint</a></td>\r\n<td><a href="#">Mate 1.12.1 desktop for Ubuntu</a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<h3 id="id5">Tutorials for (12.04 Precise Pangolin/Linux Mint 13 Maya)</h3>\r\n<table style="font-size: 14px;">\r\n<tbody>\r\n<tr style="border: 1px solid black;">\r\n<td><a href="#">Download Ubuntu 12.04 Precise Pangolin</a></td>\r\n</tr>\r\n<tr style="border: 1px solid black;">\r\n<td><a href="#">Top Tweaks/Things to do after install of Ubuntu 12.04 Precise Pangolin</a></td>\r\n</tr>\r\n<tr style="border: 1px solid black;">\r\n<td><a href="#">How to Upgrade to Ubuntu 12.04 Precise Pangolin</a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style="font-size: 14px;">\r\n<tbody>\r\n<tr style="border: 1px solid black;">\r\n<td><a href="#">App Grid Software Center for Ubuntu/Linux Mint</a></td>\r\n<td><a href="#">Install PlayOnLinux in Ubuntu/Linux Mint</a></td>\r\n</tr>\r\n<tr style="border: 1px solid black;">\r\n<td><a href="#">Xtreme Download Manager for Ubuntu/Mint</a></td>\r\n<td><a href="#">Install LibreOffice 5.1 in Ubuntu/Linux Mint</a></td>\r\n</tr>\r\n<tr style="border: 1px solid black;">\r\n<td><a href="#">VirtualBox 5.0 for Ubuntu/Linux Mint</a></td>\r\n<td><a href="#">Dock for Ubuntu" for Ubuntu/Linux Mint</a></td>\r\n</tr>\r\n<tr style="border: 1px solid black;">\r\n<td><a href="#">Install VLC Player in Ubuntu/Linux Mint</a></td>\r\n<td><a href="#">Variety wallpaper changer for Ubuntu/Mint</a></td>\r\n</tr>\r\n<tr style="border: 1px solid black;">\r\n<td><a href="#">Rhythmbox with Plugins for Ubuntu/Mint</a></td>\r\n<td><a href="#">Mate 1.12.1 desktop for Ubuntu</a></td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(34, 1, 1, 'installations', 'Installations', 'Installations', 'Installations', '<div>\r\n<h1 class="text-shadow" style="font-weight: bold; color: darkgreen;">&nbsp;&nbsp;&nbsp; Installations</h1>\r\n<p style="margin: 5px 50px; font-family: Verdana;">Ubuntu has released its latest version Ubuntu 15.10 code name as &ldquo;Wily Werewolf&rdquo; on 22nd Oct 2015. As this version is not LTS, so support will be provided only for 9 months.</p>\r\n<p style="margin: 5px 50px; font-family: Verdana;">Some of its newly improved features are listed below:</p>\r\n<ul style="list-style-type: square; margin: 25px 70px;">\r\n<li>New Kernel 4.2 is included in this release.</li>\r\n<li>Libreoffice 5.0.2 brings lot of improvements</li>\r\n<li>Firefox is updated to its latest version Firefox 41</li>\r\n<li>Chromium 45</li>\r\n<li>Nautilus 3.14.2</li>\r\n<li>Fixed small fixes of Unity 7.3.3 in this release.</li>\r\n<li>New version of OpenStack <strong>&ldquo;Liberty&rdquo;</strong> is also introduced in this version</li>\r\n</ul>\r\n<br />\r\n<h2 style="text-align: center; color: red;">Installation Guide</h2>\r\n<br />\r\n<h3 style="margin: 15px 50px;">Step:1 Download Ubuntu 15.10 ISO file from its Official Site.</h3>\r\n<p style="margin: 5px 50px; font-family: Verdana;">To download Ubuntu 15.10 go to its <a href="http://www.ubuntu.com/download/desktop"> ,<strong>official site</strong> </a> and download as per your system architecture.</p>\r\n<img id="boxshadow" style="width: 750px; height: 200px; margin: 20px 70px;" src="Images/download-ubuntu-15-10.jpg" />\r\n<h3 style="margin: 15px 50px;">Step:2 Make a bootable USB drive</h3>\r\n<p style="margin: 5px 50px; font-family: Verdana;"><a href="http://www.pendrivelinux.com/universal-usb-installer-easy-as-1-2-3/">Download UUI </a> and make the USB drive bootable.</p>\r\n<img id="boxshadow" style="width: 450px; height: 200px; margin: 20px 70px;" src="Images/Universal-USB-Installer.png" /> <img id="boxshadow" style="width: 450px; height: 200px; margin: 20px 70px;" src="Images/Universal-USB-Installer2.png" />\r\n<h3 style="margin: 15px 50px;">Step:3 Boot the system with bootable drive.</h3>\r\n<p style="margin: 5px 50px; font-family: Verdana;">After making bootable USB drive insert it in the system and Restart the system and Press ESC key or some boot key as of your system and then this screen will come</p>\r\n<img id="boxshadow" style="width: 750px; height: 200px; margin: 20px 70px;" src="Images/ubuntu-15-10-installation-image.jpg" />\r\n<h3 style="margin: 15px 50px;">Step:4 Click on <strong>&ldquo;Install Ubuntu&rdquo;</strong></h3>\r\n<p style="margin: 5px 50px; font-family: Verdana;">Click install Ubuntu when you get the below screen</p>\r\n<img id="boxshadow" style="width: 750px; height: 200px; margin: 20px 70px;" src="Images/click-on-install-ubuntu-15-10.jpg" />\r\n<p style="margin: 5px 50px; font-family: Verdana;">In the nextstep it will check whether system has enough free space, connected to Internet &amp; power is plugged in.Check Both the options below for better convenience You can leave them unchecked also</p>\r\n<img id="boxshadow" style="width: 750px; height: 200px; margin: 20px 70px;" src="Images/check-for-enough-free-space.jpg" />\r\n<p style="margin: 5px 50px; font-family: Verdana;">Click <strong> Continue </strong></p>\r\n<h3 style="margin: 15px 50px;">Step:5 Now partition your disk, for that there are two ways</h3>\r\n<p style="margin: 5px 50px; font-family: Verdana;">( 1) Let the Operating System to create the partition &ndash; OS will be automatically created partition depending on the disk size.</p>\r\n<p style="margin: 5px 50px; font-family: Verdana;">( 2) Create your own partition.</p>\r\n<img id="boxshadow" style="width: 750px; height: 200px; margin: 20px 70px;" src="Images/creation-own-partition-ubuntu-15-10.jpg" />\r\n<p style="margin: 5px 50px; font-family: Verdana;">In my case i am creating own partition , i am using around 62 GB disk.</p>\r\n<p style="margin: 5px 50px; font-family: Verdana;">EFI Partition &ndash; 650 MB (only if you use UEFI)</p>\r\n<ul style="list-style-type: square; margin: 25px 70px;">\r\n<li>/(root) &ndash; 30 GB ( Formatted as EXT4 journaling file system )</li>\r\n<li>/var &ndash; 10 GB ( Formatted as EXT4 journaling file system )</li>\r\n<li>Swap Partition &ndash; double of RAM ( 2 GB in my case )</li>\r\n<li>/home &ndash; 20 GB &ndash; ( Formatted as EXT4 journaling file system )</li>\r\n</ul>\r\n<p style="margin: 5px 50px; font-family: Verdana;">Note : These partition will subjected to change according to your disk size.</p>\r\n<img id="boxshadow" style="width: 750px; height: 200px; margin: 20px 70px;" src="Images/os-disk-space-ubuntu-15-10.jpg" />\r\n<p style="margin: 5px 50px; font-family: Verdana;">Click On <strong> &ldquo;New Partition Table&hellip;&rdquo;</strong> it will display the Warning Message as shown above.</p>\r\n<img id="boxshadow" style="width: 750px; height: 200px; margin: 20px 70px;" src="Images/create-partition-ubuntu15-10.jpg" />\r\n<p style="margin: 5px 50px; font-family: Verdana;">Click on<strong> &ldquo;+&rdquo; </strong> symbol and create the partitions.</p>\r\n<img id="boxshadow" style="width: 750px; height: 200px; margin: 20px 70px;" src="Images/root-partition-ubuntu-15-10.jpg" />\r\n<p style="margin: 5px 50px; font-family: Verdana;">Click on <strong> OK </strong> and repeat the same step for /var and /home partition.</p>\r\n<p style="margin: 5px 50px; font-family: Verdana;">Create Swap Partition :</p>\r\n<img id="boxshadow" style="width: 750px; height: 200px; margin: 20px 70px;" src="Images/swap-partition-ubuntu-15-10.jpg" />\r\n<p style="margin: 5px 50px; font-family: Verdana;">Our Final Partition Scheme will look like below:</p>\r\n<img id="boxshadow" style="width: 750px; height: 200px; margin: 20px 70px;" src="Images/final-partition-scheme.jpg" />\r\n<p style="margin: 5px 50px; font-family: Verdana;">Click On <strong> &ldquo;Install Now&rdquo; </strong></p>\r\n<img id="boxshadow" style="width: 750px; height: 200px; margin: 20px 70px;" src="Images/warning-messsage-partition-scheme.jpg" />\r\n<p style="margin: 5px 50px; font-family: Verdana;">Click on <strong> Continue&hellip; </strong></p>\r\n<h3 style="margin: 15px 50px;">Step:6 Set the time zone for the Clock.</h3>\r\n<img id="boxshadow" style="width: 750px; height: 200px; margin: 20px 70px;" src="Images/time-zone-clock.jpg" />\r\n<p style="margin: 5px 50px; font-family: Verdana;">Click on <strong> Continue&hellip; </strong></p>\r\n<h3 style="margin: 15px 50px;">Step:7 Define the language as per your setup.</h3>\r\n<img id="boxshadow" style="width: 750px; height: 200px; margin: 20px 70px;" src="Images/select-laguage-for-ubuntu-installation.jpg" />\r\n<p style="margin: 5px 50px; font-family: Verdana;">Click on <strong> Continue&hellip; </strong></p>\r\n<h3 style="margin: 15px 50px;">Step:8 In this step we will define the followings :</h3>\r\n<ul style="list-style-type: square; margin: 25px 70px;">\r\n<li>Define the System&rsquo;s Hostname</li>\r\n<li>Define the Name of user that will be used after installation</li>\r\n<li>Define the password for the user.</li>\r\n<li>Set the option &ldquo;Require my password on Log in&rdquo;</li>\r\n</ul>\r\n<img id="boxshadow" style="width: 750px; height: 200px; margin: 20px 70px;" src="Images/define-system-hostname.jpg" />\r\n<p style="margin: 5px 50px; font-family: Verdana;">Click on<strong> Continue&hellip; </strong></p>\r\n<h3 style="margin: 15px 50px;">Step:9 Installation is in Progress as shown below</h3>\r\n<p style="margin: 5px 50px; font-family: Verdana;">When we click on Continue in above step then installation will start.</p>\r\n<img id="boxshadow" style="width: 750px; height: 200px; margin: 20px 70px;" src="Images/ubuntu-15-10-installation-progress.jpg" />\r\n<p style="margin: 5px 50px; font-family: Verdana;">When the Installation is completed, we need to take reboot.</p>\r\n<h3 style="margin: 15px 50px;">Step:10 Reboot the System</h3>\r\n<img id="boxshadow" style="width: 750px; height: 200px; margin: 20px 70px;" src="Images/reboot-installation-after-15-10.jpg" />\r\n<h3 style="margin: 15px 50px;">Step:11 Now Login to the System using the credentials that we set in above steps.</h3>\r\n<img id="boxshadow" style="width: 750px; height: 200px; margin: 20px 70px;" src="Images/login-to-system-using-crendential.jpg" /> <img id="boxshadow" style="width: 750px; height: 200px; margin: 20px 70px;" src="Images/installation-completed-ubuntu-15-10.jpg" />\r\n<p style="margin: 5px 50px; font-family: Verdana;">Installation of Ubuntu 15.10 is completed, enjoy and explore it.</p>\r\n</div>'),
(36, 1, 1, 'learn', 'Learn', 'Learn', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `post_types`
--

CREATE TABLE `post_types` (
  `id` mediumint(9) NOT NULL,
  `label` varchar(150) NOT NULL,
  `name` varchar(150) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_types`
--

INSERT INTO `post_types` (`id`, `label`, `name`, `status`) VALUES
(1, 'Pages', 'page', 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` varchar(200) NOT NULL,
  `label` varchar(200) NOT NULL,
  `value` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `label`, `value`) VALUES
('', 'Site Title', 'ElegantLinux'),
('debug-status', 'Debug Status', '1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` mediumint(9) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  `first` varchar(200) NOT NULL,
  `last` varchar(200) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(200) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `avatar`, `first`, `last`, `email`, `password`, `status`) VALUES
(1, '1461267340755.jpg', 'Astik', 'Anand', 'astikanand@gmail.com', 'e526cb652a8e031ce00afede1613d121502d2c3a', 1),
(2, '', 'Vasram', 'parmar', 'vasramparmar@gmail.com', '6beb7b739d8854cbd23dfcd5810f21c63e290901', 1),
(3, '', 'Manpal', 'Singh', 'manpalsingh51@gmail.com', 'fcec437184dbdab2b1cbdf8b8aa1f9eaa13a21a2', 1),
(4, '', 'Arun', 'Bharti', 'arunbharti@gmail.com', '550669b5d44472a8ff3fa50a5129c08d44584aec', 0),
(5, '1459760654187.jpg', 'Ashutosh', 'Anand', 'ashutoshanand523@gmail.com', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `navigation`
--
ALTER TABLE `navigation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user` (`user`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `post_types`
--
ALTER TABLE `post_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `navigation`
--
ALTER TABLE `navigation`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `post_types`
--
ALTER TABLE `post_types`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
