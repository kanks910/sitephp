<?php
$title_page = 'Shop';
$css = 'shop.css';

ob_start();
include 'view/shop.view.php';

$content = ob_get_clean();

include 'view/common/layout.php';