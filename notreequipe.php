<?php
$title_page = 'Notre équipe';
$css = 'nostreequipe.css';

ob_start();
include 'view/notreequipe.view.php';

$content = ob_get_clean();

include 'view/common/layout.php';