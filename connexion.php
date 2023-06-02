<?php
$title_page = 'Connexion';
$css = 'public/css/connexion.css';

ob_start();
include 'view/connexion.view.php';

$content = ob_get_clean();

include 'view/common/layout.php';