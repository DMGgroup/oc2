<section>
    <div class="row no-gutters justify-content-between">
        <div class="col-12">
            <div class="feature-slider">

                <?php foreach ($products as $product) { ?>

                <div class="card border-0 card-prod-new">

                    <?php if ($product['rating']) { ?>
                    <div class="card-header">
                        <div class="rating">
                            <?php for ($i = 1; $i <= 5; $i++) { ?>
                            <?php if ($product['rating'] < $i) { ?>
                            <span><i class="fa fa-star-o"></i></span>
                            <?php } else { ?>
                            <span><i class="fa fa-star"></i></span>
                            <?php } ?>
                            <?php } ?>
                        </div>
                    </div>
                    <?php } ?>

                    <div class="card-img img-product">
                        <a href="<?php echo $product['href']; ?>" data-toggle="tooltip" data-placement="bottom" title="<?php echo $product['description']; ?>"><img class="img-fluid" src="<?php echo $product['thumb']; ?>" srcset="<?php echo $product['thumb']; ?> 1x, <?php echo $product['thumb']; ?> 2x" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
                        <div class="btn-group position-absolute">
                            <button type="button" class="btn btn-default text-info" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
                        </div>
                    </div>

                    <div class="card-body ">
                        <span class="text-uppercase"><a href="#" class="card-link"><?php echo $product['name']; ?></a></span>
                        <p class="card-tags text-uppercase text-left fz-14 text-info"> <strong><i>#new</i></strong> </p>

                    </div>

                </div>

                <?php } ?>
            </div>
        </div>
    </div>
</section>