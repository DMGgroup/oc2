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
    <link href="catalog/view/theme/basecart/app/css/styles.min.css" rel="stylesheet">
    <script src="catalog/view/theme/basecart/app/js/scripts.min.js"></script>
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

        <div class="row no-gutters flex-nowrap justify-content-between align-items-center">
            <div class="col-12 border-bottom border-primary">
                <div class="card bg-white card-header border-0 border-bottom">
                    <p class="text-center text-uppercase m-0 lead py-2"> кикие-нибудь важные новости о скидках</p>
                </div>
            </div>
        </div>
        <div class="mt-4 mb-4">
            <div class="row no-gutters justify-content-between align-items-start ">
                <div class="col-4 col-lg-3 pt-1">
                    <nav class="navbar navbar-expand-sm navbar-light bg-white position-absolute" style="z-index: 20;" id="leftMenu">
                        <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarsExample08" aria-controls="navbarsExample08" aria-expanded="false" aria-label="Toggle navigation">
                            <svg viewBox="0 0 80 60">
                                <path d="M30,22 C30,22 52,22 54,22 C74,22 64,54 52,42 C44,34 30,20 30,20" id="top"></path>
                                <path d="M30,32 L54,32" id="middle"></path>
                                <path d="M30,21 C30,21 52,21 54,21 C74,21 64,53 52,41 C44,33 30,19 30,19" id="bottom" transform="translate(48, 32) scale(1, -1) translate(-48, -32) "></path>
                            </svg>

                        <!-- <span class="navbar-toggler-icon"></span> -->
                        </button>
                        <div class="collapse navbar-collapse justify-content-md-center" id="navbarsExample08">
                            <ul class="navbar-nav">
                                <li class="nav-item active">
                                    <a class="nav-link" href="#">Centered nav only <span class="sr-only">(current)</span></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">Link</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="dropdown08" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Dropdown</a>
                                    <div class="dropdown-menu" aria-labelledby="dropdown08">
                                        <a class="dropdown-item" href="#">Action</a>
                                        <a class="dropdown-item" href="#">Another action</a>
                                        <a class="dropdown-item" href="#">Something else here</a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
                <div class="col-8 col-lg-6 text-center">

                    <?php if ($logo) { ?>
                    <a class="navbar-brand" href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-fluid" /></a>
                    <?php } else { ?>
                    <a class="navbar-brand" href="<?php echo $home; ?>">
                        <?php echo $name; ?>
                    </a>
                    <?php } ?>

                </div>
                <div class="col-12 text-center col-lg-3 d-flex justify-content-end justify-content-lg-end align-items-center">
                    <?php echo $search; ?>
                    <?php echo $cart; ?>
                    <div id="user">
                        <a class="btn btn-link" href="<?php echo $order; ?>" aria-label="User">
                            <img class="img-fluid" src="catalog/view/theme/basecart/app/img/@1x/icon_user.png" srcset="catalog/view/theme/basecart/app/img/@1x/icon_user.png 1x, catalog/view/theme/basecart/app/img/@2x/icon_user.png 2x" alt="icon_user">
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="container pb-4">
            <div class="row no-gutters justify-content-center">
                <div class="col-md-12 col-xxl-10">
                    <nav class="navbar navbar-expand-sm navbar-white bg-white p-0">
                        <div class=" navbar-collapse justify-content-md-center" id="mainNavbar">
                            <?php if ($categories) { ?>
                            <ul class="nav navbar-nav  nav-fill">
                                <?php foreach ($categories as $category) { ?>
                                <?php if ($category['children']) { ?>
                                <li class="dropdown nav-item">
                                    <a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                        <?php echo $category['name']; ?> <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                                        <?php foreach ($children as $child) { ?>
                                        <li class="nav-item">
                                            <a class="nav-link" href="<?php echo $child['href']; ?>">
                                                <?php echo $child['name']; ?>
                                            </a>
                                        </li>
                                        <?php } ?>
                                        <?php } ?>
                                        <li role="separator" class="divider" nav-item></li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="<?php echo $category['href']; ?>">
                                                <?php echo $text_all; ?>
                                                <?php echo $category['name']; ?>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <?php } else { ?>
                                <li class=" nav-item">
                                    <a class="nav-link" href="<?php echo $category['href']; ?>">
                                        <?php echo $category['name']; ?>
                                    </a>
                                </li>
                                <?php } ?>
                                <?php } ?>
                            </ul>
                            <?php } ?>

                        </div>
                    </nav>
                    <div class="line-menu"></div>
                </div>
            </div>
        </div>
    </header>