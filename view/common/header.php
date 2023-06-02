<!DOCTYPE html>
<html>

    <head>
        <title> Page d'accueil </title>
        <meta charset="utf-8">
        <link rel="stylesheet" href="public/css/header.css"/>
        <link rel="stylesheet" href="public/css/footer.css"/>
        <title><?= $title_page?> </title>
        <link rel="stylesheet" href="<?= $css ?>">
    </head>

<body> 



    <header>
        <nav id="menu"> 
            <ul>
                <li class="menu"> <a href="nosbieres.php"> Nos bières </a></li>
                <li class="menu"> <a href="2notreequipe.php"> Notre équipe </a>  </li>
                <li class="menu"> <a href="shop.html"> Shop </a> </li>
                <li> <a href="accueil.php"> <img id="logo" src="public/images/logo/logo_def.png" alt="logo"/> </a> </li>
                <li class="menu"> <a href="festival.php"> Festival Enzyme </a> </li>
                <li class="menu"> <a href="contact.php"> Contact </a> </li>
                <li class="menu"> <a href="connexion.php"> <img id="connexion_img"src="public/images/icones/connexion.png"></a> </li>
            </ul>
        </nav>
    </header>
