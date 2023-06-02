<?php
$title_page = 'Inscription';
$css = 'inscription.css';

ob_start();
include 'view/inscription.view.php';

$content = ob_get_clean();

include 'view/common/layout.php';