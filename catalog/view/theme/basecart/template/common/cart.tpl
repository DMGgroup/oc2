<div id="cart">

    <div id="cartCollapse" class="mfp-hide mfp-with-anim cart-container">
        <div class="container-fluid p-4">
            <div class="row">
                <?php if ($products || $vouchers) { ?>
                <div class="col-12">
                    <table class="table table-condensed">
                        <?php foreach ($products as $product) { ?>
                        <tr>
                            <td class="text-center">
                                <?php if ($product['thumb']) { ?>
                                <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail" /></a>
                                <?php } ?>
                            </td>
                            <td class="text-left">
                                <a href="<?php echo $product['href']; ?>">
                                    <?php echo $product['name']; ?>
                                </a>
                                <?php if ($product['option']) { ?>
                                <?php foreach ($product['option'] as $option) { ?>
                                <br /> - <small><?php echo $option['name']; ?> <?php echo $option['value']; ?></small>
                                <?php } ?>
                                <?php } ?>
                                <?php if ($product['recurring']) { ?>
                                <br /> - <small><?php echo $text_recurring; ?> <?php echo $product['recurring']; ?></small>
                                <?php } ?>
                            </td>
                            <td class="text-right">x
                                <?php echo $product['quantity']; ?>
                            </td>
                            <td class="text-right">
                                <?php echo $product['total']; ?>
                            </td>
                            <td class="text-center"><button type="button" onclick="cart.remove('<?php echo $product['cart_id']; ?>');" title="<?php echo $button_remove; ?>" class="btn btn-danger btn-sm rounded-circle"><i class="fa fa-close"></i></button></td>
                        </tr>
                        <?php } ?>
                        <?php foreach ($vouchers as $voucher) { ?>
                        <tr>
                            <td class="text-center"></td>
                            <td class="text-left">
                                <?php echo $voucher['description']; ?>
                            </td>
                            <td class="text-right">x&nbsp;1</td>
                            <td class="text-right">
                                <?php echo $voucher['amount']; ?>
                            </td>
                            <td class="text-center text-danger"><button type="button" onclick="voucher.remove('<?php echo $voucher['key']; ?>');" title="<?php echo $button_remove; ?>" class="btn btn-danger btn-xs"><i class="fa fa-times"></i></button></td>
                        </tr>
                        <?php } ?>
                    </table>
                </div>
                <div class="col-12">
                    <div class="btn-group pull-right">
                        <a class="btn btn-default btn-sm" href="<?php echo $cart; ?>">
                            <?php echo $text_cart; ?>
                        </a>
                        <a class="btn btn-primary btn-sm" href="<?php echo $checkout; ?>">
                            <?php echo $text_checkout; ?>
                        </a>
                    </div>
                </div>
                <?php } else { ?>
                <div class="col-12">
                    <p class="text-center">
                        <?php echo $text_empty; ?>
                    </p>
                </div>
                <?php } ?>
            </div>
        </div>
    </div>
    <a class="btn btn-link popup" href="#cartCollapse" data-effect="mfp-right-in">
        <i class="fa fa-shopping-cart n-icon"></i>
        <!-- <img class="img-fluid" src="catalog/view/theme/basecart/app/img/@1x/icon_bag.png" srcset="catalog/view/theme/basecart/app/img/@1x/icon_bag.png 1x, catalog/view/theme/basecart/app/img/@2x/icon_bag.png 2x" alt="icon_bag"> -->
    </a>
</div>