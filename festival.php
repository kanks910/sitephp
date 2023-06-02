<?php
$title_page = 'Festival';
$css = 'festival.css';

ob_start();
include 'view/festival.view.php';

$content = ob_get_clean();

include 'view/common/layout.php';