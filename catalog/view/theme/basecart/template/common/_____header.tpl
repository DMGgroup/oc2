<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>
        <?php echo $title; ?>
    </title>
    <base href="<?php echo $base; ?>" />
    <?php if ($description) { ?>
    <meta name="description" content="<?php echo $description; ?>" />
    <?php } ?>
    <?php if ($keywords) { ?>
    <meta name="keywords" content="<?php echo $keywords; ?>" />
    <?php } ?>
    <link href="catalog/view/theme/basecart/css/font-awesome.min.css" rel="stylesheet">
    <!-- END basecart module -->
    <link href="catalog/view/theme/basecart/css/styles.min.css" rel="stylesheet">
    <script src="catalog/view/theme/basecart/js/scripts.min.js"></script>
    <script src="catalog/view/theme/basecart/js/common.js"></script>

    <?php foreach ($links as $link) { ?>
    <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>">
    <?php } ?>
    <?php foreach ($styles as $style) { ?>
    <link href="<?php echo $style['href']; ?>" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>">
    <?php } ?>
    <?php foreach ($scripts as $script) { ?>
    <script src="<?php echo $script; ?>"></script>
    <?php } ?>
    <?php foreach ($analytics as $analytic) { ?>
    <?php echo $analytic; ?>
    <?php } ?>
</head>

<body class="<?php echo $class; ?>">
    <header>
        <?php $class = 'navbar-default'; ?>

        <nav class="navbar <?php echo $class; ?>">
            <div class="container">
                <div class="navbar-header w-100">
                    <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                      <span class="sr-only">Toggle navigation</span>
                      <span class="icon-bar"></span>
                      <span class="icon-bar"></span>
                      <span class="icon-bar"></span>
                    </button>
                    <?php if ($logo) { ?>
                    <a class="navbar-brand" href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
                    <?php } else { ?>
                    <a class="navbar-brand" href="<?php echo $home; ?>">
                        <?php echo $name; ?>
                    </a>
                    <?php } ?>
                </div>
                <div class="collapse navbar-collapse navbar-ex1-collapse">
                    <?php if ($categories) { ?>
                    <ul class="nav navbar-nav">
                        <?php foreach ($categories as $category) { ?>
                        <?php if ($category['children']) { ?>
                        <li class="dropdown">
                            <a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                <?php echo $category['name']; ?> <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                                <?php foreach ($children as $child) { ?>
                                <li>
                                    <a href="<?php echo $child['href']; ?>">
                                        <?php echo $child['name']; ?>
                                    </a>
                                </li>
                                <?php } ?>
                                <?php } ?>
                                <li role="separator" class="divider"></li>
                                <li>
                                    <a href="<?php echo $category['href']; ?>">
                                        <?php echo $text_all; ?>
                                        <?php echo $category['name']; ?>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <?php } else { ?>
                        <li>
                            <a href="<?php echo $category['href']; ?>">
                                <?php echo $category['name']; ?>
                            </a>
                        </li>
                        <?php } ?>
                        <?php } ?>
                    </ul>
                    <?php } ?>
                    <ul class="nav navbar-nav navbar-right">
                        <li id="hiddenM"><a class="btn btn-link" role="button" data-toggle="collapse" href="#hiddenMenu" aria-expanded="false" aria-controls="hiddenMenu"><i class="fa fa-ellipsis-h n-icon"></i></a></li>
                        <?php echo $cart; ?>
                        <li class="dropdown"><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user n-icon"></i><span class="caret"></span></a>
                            <ul class="dropdown-menu dropdown-menu-right">
                                <?php if ($logged) { ?>
                                <li>
                                    <a href="<?php echo $account; ?>">
                                        <?php echo $text_account; ?>
                                    </a>
                                </li>
                                <li>
                                    <a href="<?php echo $order; ?>">
                                        <?php echo $text_order; ?>
                                    </a>
                                </li>
                                <li>
                                    <a href="<?php echo $transaction; ?>">
                                        <?php echo $text_transaction; ?>
                                    </a>
                                </li>
                                <li>
                                    <a href="<?php echo $download; ?>">
                                        <?php echo $text_download; ?>
                                    </a>
                                </li>
                                <li>
                                    <a href="<?php echo $logout; ?>">
                                        <?php echo $text_logout; ?>
                                    </a>
                                </li>
                                <?php } else { ?>
                                <li>
                                    <a href="<?php echo $register; ?>">
                                        <?php echo $text_register; ?>
                                    </a>
                                </li>
                                <li>
                                    <a href="<?php echo $login; ?>">
                                        <?php echo $text_login; ?>
                                    </a>
                                </li>
                                <?php } ?>
                            </ul>
                        </li>
                    </ul>
                </div>
                <div class="collapse" id="hiddenMenu">
                    <div class="row">
                        <div class="col-sm-4">
                            <?php echo $currency; ?>
                        </div>
                        <div class="col-sm-4">
                            <?php echo $language; ?>
                        </div>
                        <div class="col-sm-4">
                            <?php echo $search; ?>
                        </div>
                    </div>
                </div>
            </div>
        </nav>
    </header>