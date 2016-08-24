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
                if($services->num_rows()<=0){
                    ?>
                    <div class="alert alert-warning"><?php echo lang_key('post_not_found'); ?></div>
                <?php
                }
                else{ ?>
                    <div id="list-result"></div>
                    <?php foreach($services->result() as $post){  ?>
                   <div class="listdetail">
                      <div class="col-md-2">
                        <img src="<?php echo get_service_photo_by_id($post->service_file); ?>" alt="" class="img-responsive img-thumbnail" /> </div>
                      <div class="col-md-6">
                       
                        <span><?php echo $post->service_name;?></span><br/>
                           
<div class="listadd"><i class="fa fa-location-arrow"></i> <b>Quality : <?php echo $post->quality; ?></b></div>
<div class="listadd"><i class="fa fa-location-arrow"></i> <b>Duration : <?php echo $post->duration; ?></b>  &nbsp; &nbsp;   <i class="fa fa-location-arrow"></i><b>Services Cost : <?php echo $post->services_cost; ?></b></div>

                        <div class="listadd"><i class="fa fa-location-arrow"></i> <b>Warranty Given : <?php echo $post->warranty_given; ?></b>   &nbsp; &nbsp;   <i class="fa fa-location-arrow"></i> <b>Opening Hours : <?php echo $post->opening_hours; ?></b></div>
                        <div class="listadd"><i class="fa fa-location-arrow"></i> <b>Location : <?php echo $post->location; ?></b>   &nbsp; &nbsp;   <i class="fa fa-location-arrow"></i> <b>Follow up : <?php echo $post->follow_up; ?></b></div>
                        <div class="listadd"><i class="fa fa-location-arrow"></i> <b>Price : <?php echo $post->contact; ?></b>   &nbsp; &nbsp;   <i class="fa fa-location-arrow"></i> </div>
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
            
            <div class="col-md-9 col-sm-12 col-xs-12">

                <?php
                if($services->num_rows()<=0){
                    ?>
                    <div class="alert alert-warning"><?php echo lang_key('post_not_found'); ?></div>
                <?php
                }
                else
                    foreach($services->result() as $post){ 
                       // $title = get_blog_data_by_lang($post,'title');
                       // $desc = get_blog_data_by_lang($post,'desc');
                        ?>

                        <!-- Blog item starts -->
                        <div class="blog-one-item row">
                            <!-- blog One Img -->
                            <div class="blog-one-img col-md-12 col-sm-3 col-xs-12">
                                <!-- Image -->
                               <img src="<?php echo get_service_photo_by_id($post->service_file); ?>" alt="" class="img-responsive img-thumbnail" />
                            </div>
                            <!-- blog One Content -->
                            <div class="blog-one-content  col-md-12 col-sm-9 col-xs-12">
                                <!-- Heading -->
                                <h3><?php echo $post->service_name;?></h3>
                                <!-- Blog meta -->
                                
                                <!-- Paragraph -->
                                <!--<p><?php //echo truncate(strip_tags($post->service_name),400,'&nbsp;',false);?></p>                                
                                -->
                                <ul>
                                    <li>Quality : <?php echo $post->quality; ?></li>
                                    <li>Duration : <?php echo $post->duration; ?></li>
                                    <li>Opening Hours : <?php echo $post->opening_hours; ?></li>                                    
                                    <li>Warranty Given : <?php echo $post->warranty_given; ?></li>
                                    <li>Services Cost : <?php echo $post->services_cost; ?></li>
                                    <li>Follow up : <?php echo $post->follow_up; ?></li>                                    
                                    
                                </ul>
                                
                                <div class="blog-meta">
                                    <!-- Date -->
                                    <i class="fa fa-calendar"></i> &nbsp; <?php echo date('D, M d, Y', strtotime($post->created_date)); ?> &nbsp;
                                    <!-- Author -->
                                    <i class="fa fa-user"></i> &nbsp; <?php echo get_user_fullname_by_id($post->user_id); ?></a>
                                    <!--<?php //echo '<a href="'.site_url('post-detail/'.$post->id.'/'.dbc_url_title($title)).'">'.lang_key('view_more').'</a>';?>-->
                                </div>
                            </div>
                        </div>
                        <!-- Blog item ends -->
                    <?php } ?>
                <ul class="pagination">
                    <?php echo (isset($pages))?$pages:'';?>
                </ul>


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