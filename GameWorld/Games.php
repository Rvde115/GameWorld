<?php
$servername ="localhost";
$username = "root";
$password = "";
$dbname = "gameworld";
$conn = new mysqli($servername, $username, $password, $dbname);
$games = array();

//when no category is given.
if(isset($_GET['catId']))
{
    $categoryID = $_GET['catId'];
}
else
{
    $categoryID = "";
}
//the sql to send to the database
$selectGamesQuery = "SELECT * FROM `category` c, `games` g WHERE c.`categoryID` = g.`categoryID`";

if(isset($categoryID) && $categoryID != "")
{
    $selectGamesQuery .=" AND c.`categoryID` = ".$categoryID;
}


$selectGamesQuery .= " ORDER BY g.`gamePrice` ASC";


$result = mysqli_query($conn, $selectGamesQuery);

if (mysqli_num_rows($result) > 0) {
    // output data of each row
    while($row = mysqli_fetch_assoc($result)) {
        $games[] = $row;
    }
} else {
    echo "0 results";
}


/*$result = mysqli_query($conn,$selectGamesQuery);

while($row = mysqli_fetch_assoc($result))
{
    $games[] = $row;
}
*/

?>
<!doctype html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="description" content="GameWorld">
        <link rel="stylesheet" type="text/css" href="css/gamesstyle.css">
        <title>GameWorld</title>
    </head>
        <header id = "header">
            <nav id = "main-nav">
                <div id = "logo"><a href = "index.html" id = "logo-link">GameWorld. </a> </div>
                <ul>
                    <li> <a href = "games.php"> Games </a> </li>
                    <li> <a href = "index.html"> Home</a> </li>
                    <li> <a href = "about.html"> About us</a> </li>
                    <li> <a href = "Contact.html"> Contact</a> </li>
                    <li> <a href = "checkout.html"> Checkout </a> </li>
                </ul> 
            </nav>
        </header>
        <div class = "products-container">
            <?php
                $i = 0;
                foreach($games as $key => $game)
                {
                    $i++;
                    // var_dump($game); 
                    ?>
                    <div class = "product-item <?php if($i % 4 == 0) echo "last-product-item"; ?>">
                        <h5><?= $game["gameTitle"]?></h5>
                        <img src="<?=$game['gameImage']?>   " alt="<?= $game['gameTitle']?>">
                        <div class = "priceTag">
                            <h5> <?= $game["gamePrice"]?><h5>
                        </div>

                        <div class = "order-button">
                            <a href = "checkout.html">order</a> 
                        </div>
                    </div>

                    <?php    
                }
            ?>
            <!-- <div class = "product-item">1</div>
            <div class = "product-item">2</div>
            <div class = "product-item">3</div>
            <div class = "product-item last-product-item">4</div> -->
            <div class = "clearfix"></div>
        </div>
        </body>
        <div id = "footer"><footer>© 2018</footer></div>
</html>