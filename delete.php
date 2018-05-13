<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Book's Cafe by Aashish</title>
<link href="http://fonts.googleapis.com/css?family=Abel" rel="stylesheet" type="text/css" />
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script type="text/javascript" src="jquery.dropotron-1.0.js"></script>
</head>
<body>
<div id="wrapper">
	<div id="header-wrapper">
		<div id="header">
			<div id="logo">
				<h1 color="red"><a href="index.html">Book's Cafe</a></h1>
				<p>Read by <a href="http://templated.co" rel="nofollow">Heart</a></p>
			</div>
		</div>
	</div>
	<!-- end #header -->
	<div id="menu-wrapper">
		<ul id="menu">
			<li class="current_page_item"><a href="index.html"><span>Homepage</span></a></li>
			<li><span>Update Books</span>
				<ul>
					<li class="first"> <a href="insert_book.html">Add Books</a> </li>
					<li> <a href="delete.html">Delete Books</a> </li>
					<li class="last"> <a href="view1.php">View Books</a> </li>
				</ul>
			</li>
			
			<li><a href="event.html"><span>Events</span></a></li>
			<li><span>About</span>
				<ul>
					<li class="first"> <a href="team.html">Our Team</a> </li>
					<li> <a href="story.html">Our Story</a> </li>
					
				</ul>
			</li>
			<li><a href="contact.html"><span>Contact</span></a></li>
		</ul>
		<script type="text/javascript">
			$('#menu').dropotron();
		</script>
	</div>


<?php

// php code to Delete data from mysql database 

if(isset($_POST['delete']))
{
    $hostname = "localhost";
    $username = "asharmax";
    $password = "Merokancha12";
    $databaseName = "asharmax_Books";
    
    // get id to delete
    $bookid = $_POST['bookid'];
    
    // connect to mysql
    $connect = mysqli_connect($hostname, $username, $password, $databaseName);
    
    // mysql delete query 
    $query = "DELETE FROM `book` WHERE `bookid` = $bookid";
    
    $result = mysqli_query($connect, $query);
    
    if($result)
    {
        echo 'Data Deleted';
    }else{
        echo 'Data Not Deleted';
    }
    mysqli_close($connect);
}

?>
<h3><a href="index.html"> Go back to Home Page</a></h3>
</body>
</html>