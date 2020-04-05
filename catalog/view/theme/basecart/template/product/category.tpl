<?php echo $header; ?>
<section>
    <div class="container">
        <div class="row">
            <div class="col-12">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                    <?php
                        $thisURL = 'http://' . $_SERVER["HTTP_HOST"] . $_SERVER["REQUEST_URI"];
                        foreach ($breadcrumbs as $breadcrumb) { ?>
                    
                        <?php if ($thisURL !== $breadcrumb['href'] )  { ?>
                            <li class="breadcrumb-item"><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
                                <?php }  else { ?>
                            <li class="breadcrumb-item active" aria-current="page"><?php echo $breadcrumb['text']; ?></li>
                        <?php } ?>
                    <?php } ?>
                    </ol>
                </nav>
            </div>
        </div>
    </div>
    <div class="jumbotron text-center bg-info">
        <p class="h2 text-uppercase text-white">
            <?php echo $heading_title; ?>
        </p>
    </div>

    <?php if ($thumb || $description) { ?>
        <div class="row">
            <?php if ($thumb) { ?>
            <div class="col-sm-2"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" class="img-thumbnail" /></div>
            <?php } ?>
            <?php if ($description) { ?>
            <div class="col-sm-10">
            <?php echo $description; ?>
            </div>
            <?php } ?>
        </div>
    <?php } ?>

    <div class="container">
        <?php if ($products) { ?>
        <div class="row justify-content-center justify-items-end ">
            <?php foreach ($products as $product) { ?>
                <div class="col-auto">
                    <div class="card border-0 card-prod-item ">

                        <?php if ($product['rating']) { ?>
                            <div class="card-header ">
                                <div class="rating ">
                                    <?php for ($i = 1; $i <= 5; $i++) { ?>
                                    <?php if ($product['rating'] < $i) { ?>
                                    <span><i class="fa fa-star-o "></i></span>
                                    <?php } else { ?>
                                    <span><i class="fa fa-star "></i></span>
                                    <?php } ?>
                                    <?php } ?>
                                </div>
                            </div>
                        <?php } ?>

                        <div class="card-img img-product ">
                            <a href="<?php echo $product[ 'href']; ?>" data-toggle="tooltip" data-placement="bottom" title="
                                <?php echo $product['description']; ?>"><img class="img-fluid" src="<?php echo $product['thumb']; ?>" srcset="<?php echo $product['thumb']; ?> 1x, <?php echo $product['thumb']; ?> 2x" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
                            <div class="btn-group position-absolute">
                                <button type="button" class="btn btn-default text-info" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-bar-chart"></i></button>
                                <button type="button" class="btn btn-default  text-info" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
                            </div>
                        </div>

                    <div class="card-body px-3 text-center border-0">
                        <p class="card-tags text-uppercase text-left fz-14 text-info"> <strong><i></i></strong> </p>
                        <p class="card-title h6"><strong><?php echo $product['name']; ?></strong></p>

                        <?php if ($product['price']) { ?>
                            <p class="card-price text-primary">
                                <?php if (!$product['special']) { ?>
                                <strong><?php echo $product['price']; ?></strong>
                                <?php } else { ?>
                                <strong class="text-danger"><?php echo $product['special']; ?></strong>
                                <?php } ?>
                            </p>
                        <?php } ?>

                        <a class="btn-text text-center btn-cart" onclick="cart.add('<?php echo $product['product_id']; ?>');">
                            <span><img class="img-fluid d-inline" src="catalog/view/theme/basecart/app/img/@1x/icon_bag.png" srcset="catalog/view/theme/basecart/app/img/@1x/icon_bag.png 1x, catalog/view/theme/basecart/app/img/@2x/icon_bag.png 2x" alt="icon_bag"></span>
                        </a>

                        <p class="text-uppercase fz-14">
                            <a class="card-link text-primary text-uppercase" onclick="cart.add('<?php echo $product['product_id']; ?>');">
                                <?php echo $button_cart; ?>
                            </a>
                        </p>

                        <div class="card-options">

                            <?php if ($product['options']) { ?>
                                <table>
                                <?php foreach($product['options'] as $options) { 
                                        if ($options['type'] === 'radio') { ?>
                                        <div class="btn-group" role="group" aria-label="colors">
                                        <?php foreach($options['product_option_value'] as $option) { ?>
                                            
                                            <?php if ( $option['image'] ) { ?>
                                            
                                            <button type="button" data-toggle="tooltip" title="<?php echo $option['name']; ?>" class="btn btn-options-colors mx-1" >
                                            <div class="option-color">
                                                <img class="img-fluid d-inline rounded-circle"
                                                src="image/<?php echo $option['image']; ?>"
                                                srcset="
                                                image/<?php echo $option['image']; ?> 1x,
                                                image/<?php echo $option['image']; ?> 2x"
                                                alt="icon_bag"
                                                />
                                            </div>
                                            </button>
                                            
                                            
                                            <?php } ?>
                                        <?php } ?>
                                        </div>
                                    <?php } 
                                } ?>
                                </table>

                            <?php } ?>
                        </div>
                    </div>
                </div>
        </div>
    <?php } ?>
</div>
        <div class="row">
            <div class="col-sm-6 text-left">
                <?php echo $pagination; ?>
            </div>
            <div class="col-sm-6 text-right">
                <?php echo $results; ?>
            </div>
        </div>
        <?php } ?>
    </div>
</section>

<div class="container" hidden>
    <div class="row">
        <?php echo $column_left; ?>
        <?php if ($column_left && $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-9'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-12'; ?>
        <?php } ?>
        <div id="content" class="<?php echo $class; ?>">
            <?php echo $content_top; ?>
            <ul class="breadcrumb">
                <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                <li>
                    <a href="<?php echo $breadcrumb['href']; ?>">
                        <?php echo $breadcrumb['text']; ?>
                    </a>
                </li>
                <?php } ?>
            </ul>
            
            <?php if ($thumb || $description) { ?>
            <div class="row">
                <?php if ($thumb) { ?>
                <div class="col-sm-2"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" class="img-thumbnail" /></div>
                <?php } ?>
                <?php if ($description) { ?>
                <div class="col-sm-10">
                    <?php echo $description; ?>
                </div>
                <?php } ?>
            </div>
            <hr>
            <?php } ?>
            <?php if ($categories) { ?>
                <h3>
                    <?php echo $text_refine; ?>
                </h3>
            <?php if (count($categories) <= 5) { ?>
            <div class="row">
                <div class="col-sm-3">
                    <div class="list-group">
                        <?php foreach ($categories as $category) { ?>
                        <a href="<?php echo $category['href']; ?>" class="list-group-item">
                            <?php echo $category['name']; ?>
                        </a>
                        <?php } ?>
                    </div>
                </div>
            </div>
                <?php } else { ?>
                <div class="row">
                    <?php foreach (array_chunk($categories, ceil(count($categories) / 4)) as $categories) { ?>
                    <div class="col-sm-3">
                        <div class="list-group">
                            <?php foreach ($categories as $category) { ?>
                            <a href="<?php echo $category['href']; ?>" class="list-group-item">
                                <?php echo $category['name']; ?>
                            </a>
                            <?php } ?>
                        </div>
                    </div>
                    <?php } ?>
                </div>
                <?php } ?>
            <?php } ?>
            <?php if ($products) { ?>
            <p>
                <a href="<?php echo $compare; ?>" id="compare-total" class="btn btn-primary">
                    <?php echo $text_compare; ?>
                </a>
            </p>
            <div class="row">
                <div class="col-md-4">
                    <div class="btn-group hidden-xs">
                        <button type="button" id="list-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_list; ?>"><i class="fa fa-th-list"></i></button>
                        <button type="button" id="grid-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_grid; ?>"><i class="fa fa-th"></i></button>
                    </div>
                </div>
                <div class="col-md-2 text-right">
                </div>
                <div class="col-md-3 text-right">
                    <select id="input-sort" class="form-control" onchange="location = this.value;">
            <?php foreach ($sorts as $sorts) { ?>
            <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
            <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
            <?php } ?>
            <?php } ?>
          </select>
                </div>
                <div class="col-md-1 text-right">
                </div>
                <div class="col-md-2 text-right">
                    <select id="input-limit" class="form-control" onchange="location = this.value;">
            <?php foreach ($limits as $limits) { ?>
            <?php if ($limits['value'] == $limit) { ?>
            <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
            <?php } ?>
            <?php } ?>
          </select>
                </div>
            </div>
            <br />
            <div class="row">
                <?php foreach ($products as $product) { ?>
                <div class="product-layout product-list col-xs-12">
                    <div class="product-thumb">
                        <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
                        <div>
                            <div class="caption">
                                <h4>
                                    <a href="<?php echo $product['href']; ?>">
                                        <?php echo $product['name']; ?>
                                    </a>
                                </h4>
                                <p>
                                    <?php echo $product['description']; ?>
                                </p>
                                <?php if ($product['rating']) { ?>
                                <div class="rating">
                                    <?php for ($i = 1; $i <= 5; $i++) { ?>
                                    <?php if ($product['rating'] < $i) { ?>
                                    <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                    <?php } else { ?>
                                    <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                    <?php } ?>
                                    <?php } ?>
                                </div>
                                <?php } ?>
                                <?php if ($product['price']) { ?>
                                <p class="price">
                                    <?php if (!$product['special']) { ?>
                                    <strong><?php echo $product['price']; ?></strong>
                                    <?php } else { ?>
                                    <p class="text-danger"><strong><?php echo $product['special']; ?></strong></p>
                                    <?php } ?>
                                </p>
                                <?php } ?>
                            </div>
                            <div class="text-center"><button type="button" class="btn btn-primary" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');"><?php echo $button_cart; ?></button></div>
                            <div class="btn-group">

                                <button type="button" class="btn btn-default text-secondary" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
                                <button type="button" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-bar-chart"></i></button>
                            </div>
                        </div>
                    </div>
                </div>
                <?php } ?>
            </div>
            <div class="row">
                <div class="col-sm-6 text-left">
                    <?php echo $pagination; ?>
                </div>
                <div class="col-sm-6 text-right">
                    <?php echo $results; ?>
                </div>
            </div>
            <?php } ?>
            <?php if (!$categories && !$products) { ?>
            <p>
                <?php echo $text_empty; ?>
            </p>
            <div class="buttons">
                <div class="pull-right">
                    <a href="<?php echo $continue; ?>" class="btn btn-primary">
                        <?php echo $button_continue; ?>
                    </a>
                </div>
            </div>
            <?php } ?>
            <?php echo $content_bottom; ?>
        </div>
        <?php echo $column_right; ?>
    </div>
</div>
<?php echo $footer; ?>