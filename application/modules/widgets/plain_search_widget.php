<!-- Search Widget -->
<div class="s-widget" style="display:none;">
    <!-- Heading -->
    <h5><i class="fa fa-search color"></i>  <?php echo lang_key('search'); ?></h5>
    <!-- Widgets Content  <?php echo site_url('show/advfilter')?> -->
    <div class="widget-content search">
        <form role="form" action="#" method="post">
            <div class="input-group">
                <input class="form-control" type="text" placeholder="<?php echo lang_key('type_something'); ?>" value="<?php echo (isset($data['plainkey']))?rawurldecode($data['plainkey']):'';?>" name="plainkey">


                <span class="input-group-btn">
                    <button type="submit" class="btn btn-color"><?php echo lang_key('search');?></button>
                </span>
            </div>
        </form>
    </div>
</div>
