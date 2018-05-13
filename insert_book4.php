<html>
<head>
<title>Insert Book Results</title>
<body>

<?



// get the data from the form and assign the data to variables

$title = $_POST['title'];
$publisherfn = $_POST['publisherfn'];
$publisherln = $_POST['publisherln'];
$year = $_POST['year'];
$genre = $_POST['genre'];
$sales = $_POST['sales'];
$plot = $_POST['plot'];
$comments = $_POST['comments'];



// check to see if all the data is there

if (!$title
 || !$publisherfn
 || !$publisherln
 || !$year
 || !$genre
 || !$sales
 || !$plot
 || !$comments)
{
	echo "You have not entered all the required details.<br>"
		."Please go back and try again.";
	exit;
}



// add slashes and prepare the data for inserting into the db

$title = addslashes($title);
$publisherfn = addslashes($publisherfn);
$publisherln = addslashes($publisherln);
$year = intval($year);
$genre = addslashes($genre);
$sales = intval($sales);
$plot = addslashes($plot);
$comments = addslashes($comments);

// connect to the db

@ $db = mysql_pconnect("localhost","asharmax","Merokancha12");

if (!$db)
{
	echo "ERROR: Could not connect to database.  Please try again later.";
	exit;
}


// select the db
mysql_select_db("asharmax_Books");


// prepare the query

$query = "insert into publisher values
	('".NULL."','".$publisherfn."','".$publisherln."')";



// run the query

$result = mysql_query($query);

if($result)
	echo mysql_affected_rows()." publisher added to Database.<br>";


$query = "insert into book values
	('".NULL."','".$title."','".'"last_insert_id()"'.
"','".$year.
"','".$genre.
"','".$sales.
"','".$plot.
"','".$comments."')";

$result = mysql_query($query);

if($result)
	echo mysql_affected_rows()." book added to Database.<br>";


?>
<h4><a href="index.html">Back to Homepage</a></h4>
</body>
</html>


