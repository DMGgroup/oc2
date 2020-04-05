<?php echo $header; ?>
<section class="mt-4">
    <div class="container">
        <div class="row">
            <div class="col-12 text-center">
                <p class="h3 text-primary text-uppercase mb-5">
                    <?php $heading_title = 'Home'; echo $heading_title; ?>
                </p>
            </div>
            <div class="col-12 text-center">
                <?php echo $content_top; ?>
            </div>
        </div>
    </div>
</section>
<section class="mt-4">
    <div class="container">
        <div class="row  justify-content-between">

            <div class="col-12 col-lg text-center">

                <div id="self" class="player" style="display:block; margin: 0px; background: rgba(0,0,0,0.5)" data-property="{
                            videoURL: '69NAGbkCdIc',
                            containment: 'self',
                            showControls: true,
                            mute: false,
                            autoPlay: false,
                            loop: false,
                            opacity: 1,
                            showYTLogo: false,
                            optimizeDisplay: false,
                            coverImage:'catalog/view/theme/basecart/app/img/@1x/v1.jpg',
                            ratio:'16/9',
                            quality:'default'
                        }"></div>

            </div>
            <div class="col-xl-3 col-lg-4">
                <?php echo $column_right; ?>
            </div>
        </div>
    </div>
</section>
<section class="mt-4">
    <div class="container">
        <div class="row no-gutters justify-content-center">
            <div class="col-lg-12 col-xl-11 text-center">
                <?php echo $content_bottom; ?>
            </div>
        </div>
    </div>
</section>
<?php echo $footer; ?>