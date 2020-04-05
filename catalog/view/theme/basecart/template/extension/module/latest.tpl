<section class="mt-5 pb-5">
    <div class="row no-gutters justify-content-center">
        <div class="col-12  text-center">
            <p class="h3 text-primary text-uppercase mb-5">
                <?php $heading_title = 'Новинки'; echo $heading_title; ?>
            </p>
        </div>
        <div class="col-12">
            <div class="news-slider">

                <?php foreach ($products as $product) { ?>

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
                    <div class="card-body px-3 text-center border border-top-0">
                        <p class="card-tags text-uppercase text-left fz-14 text-info"> <strong><i>#new</i></strong> </p>
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

                                    <button type="button" data-toggle="tooltip" title="<?php echo $option['name']; ?>" class="btn btn-options-colors mx-1">
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
                <?php } ?>
            </div>
        </div>
    </div>
</section>