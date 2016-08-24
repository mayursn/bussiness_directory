<div class="page-heading-two">
    <div class="container">
        <h2><?php echo lang_key($page_title); ?> </h2>
        <div class="breads">
            <a href="<?php echo site_url(); ?>"><?php echo lang_key('home'); ?></a> / <?php echo lang_key($page_title); ?>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
    
<!-- Container -->
<div class="container">
    <div class="blog-one">
        <div class="row">

            <div class="col-md-12">
                <div class="searchlist">
                  <div class="pdfbtn" style="display: none;">
                    <a href="#"><img src="<?php echo theme_url();?>/assets/img/pdficon.gif" alt=""/></a>
                  </div>
                  <div class="searchlist_detail">
                     <?php
                if($products->num_rows()<=0){
                    ?>
                    <div class="alert alert-warning"><?php echo lang_key('post_not_found'); ?></div>
                <?php
                }
                else{ ?>
                    <div id="list-result"></div>
                    <?php foreach($products->result() as $post){  ?>
                   <div class="listdetail">
                      <div class="col-md-2">
                        <img src="<?php echo get_product_photo_by_id($post->product_file); ?>" alt="" class="img-responsive img-thumbnail" /> </div>
                      <div class="col-md-6">
                       
                        <span><?php echo $post->product_name;?></span><br/>
                           <div class="listadd"><?php echo $post->product_description; ?></div>
<div class="listadd"><i class="fa fa-location-arrow"></i> <b>Quality : <?php echo $post->quality; ?></b></div>
<div class="listadd"><i class="fa fa-location-arrow"></i> <b>Guarantee : <?php echo $post->guarantee; ?></b>  &nbsp; &nbsp;   <i class="fa fa-location-arrow"></i><b>Color : <?php echo $post->color; ?></b></div>

                        <div class="listadd"><i class="fa fa-location-arrow"></i> <b>Size : <?php echo $post->size; ?></b>   &nbsp; &nbsp;   <i class="fa fa-location-arrow"></i> <b>Capacity : <?php echo $post->capacity; ?></b></div>
                        <div class="listadd"><i class="fa fa-location-arrow"></i> <b>Make : <?php echo $post->make; ?></b>   &nbsp; &nbsp;   <i class="fa fa-location-arrow"></i> <b>Model : <?php echo $post->model; ?></b></div>
                        <div class="listadd"><i class="fa fa-location-arrow"></i> <b>Price : <?php echo $post->price; ?></b>   &nbsp; &nbsp;   <i class="fa fa-location-arrow"></i> <b>After Sales Service : <?php echo $post->after_sales_service; ?></b></div>
                        <div class="listadd"></div>
                        <div class="listadd"></div>
                        <div class="listadd"></div>
                        <div class="blog-meta">
                                    <!-- Date -->
                                    <i class="fa fa-calendar"></i> &nbsp; <?php echo  date('D, M d, Y', strtotime($post->created_date)); ?> &nbsp;
                                    <!-- Author -->
                                    <i class="fa fa-user"></i> &nbsp; <?php echo get_user_fullname_by_id($post->user_id); ?></a>
                                    <!--<?php //echo '<a href="'.site_url('post-detail/'.$post->id.'/'.dbc_url_title($title)).'">'.lang_key('view_more').'</a>';?>-->
                                </div>
                        
                      </div>
                    </div>
                    <?php } ?>
                <?php } ?>
                     
                  </div>
                </div>
              </div>
            
            <div class="col-md-3 col-sm-12 col-xs-12">
                <div class="sidebar">
                    <?php render_widgets('right_bar_blog_posts');?>
                </div>
            </div>

        </div>
    </div>

</div> 
<!-- Go to www.addthis.com/dashboard to customize your tools -->
<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-53fb1205151cc4cf"></script>