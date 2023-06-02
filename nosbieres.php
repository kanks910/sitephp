<?php
$title_page = 'Nos bières';
$css = 'nosbieres.css';

ob_start();
include 'view/nosbieres.view.php';

$content = ob_get_clean();

include 'view/common/layout.php';