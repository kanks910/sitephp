<?php
$title_page = 'Acceuil';
$css = 'public/css/accueil.css';

ob_start();
include 'view/accueil.view.php';

$content = ob_get_clean();

include 'view/common/layout.php';