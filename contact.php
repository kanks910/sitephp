<?php
$title_page = 'Contact';
$css = 'contact.css';

ob_start();
include 'view/contact.view.php';

$content = ob_get_clean();

include 'view/common/layout.php';