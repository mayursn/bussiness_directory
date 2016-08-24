<div class="row">

    <div class="col-md-12">

        <div class="box">

            <div class="box-title">

                <h3><i class="fa fa-bars"></i> <?php echo lang_key("edit_product"); ?> </h3>

                <div class="box-tool">

                    <a href="#" data-action="collapse"><i class="fa fa-chevron-up"></i></a>

                    <a href="#" data-action="close"><i class="fa fa-times"></i></a>

                </div>

            </div>

            <div class="box-content">

                <?php echo $this->session->flashdata('msg'); ?>

                <form class="form-horizontal" action="<?php echo site_url('admin/product/update/'.$id); ?>" method="post"  enctype="multipart/form-data">
                
                    <div class="form-group">
                        <label class="col-sm-3 col-lg-2 control-label"><?php echo lang_key('name_of_product'); ?></label>
                        <div class="col-sm-9 col-lg-6 controls">
                            <input type="text" name="product_name" value="<?php echo $product->product_name; ?>"
                                   placeholder="<?php echo lang_key('name_of_product'); ?>" class="form-control">
                            <?php echo form_error('product_name'); ?>
                            <span class="help-inline">&nbsp;</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 col-lg-2 control-label"><?php echo lang_key('Quality'); ?></label>
                        <div class="col-sm-9 col-lg-6 controls">
                            <?php $curr_value=(set_value('quality')!='')?set_value('quality'):$product->quality;?>
                            <select class="form-control" name="quality" id="quality">   
                                <?php $sel=($curr_value=='high')?'selected="selected"':'';?>
                                <option value="high"  <?php echo $sel; ?>  >High</option>
                                <?php $sel=($curr_value=='medium')?'selected="selected"':'';?>
                                <option value="medium"  <?php echo $sel; ?> >Medium</option>
                                <?php $sel=($curr_value=='low')?'selected="selected"':'';?>
                                <option value="low" <?php echo $sel; ?>>Low</option>                                
                            </select>
                            <?php echo form_error('quality'); ?>
                            <span class="help-inline">&nbsp;</span>
                        </div>
                    </div>
                     <div class="form-group">
                        <label class="col-sm-3 col-lg-2 control-label"><?php echo lang_key('Guarantee'); ?></label>
                        <div class="col-sm-9 col-lg-6 controls">
                            <?php $curr_value=(set_value('guarantee')!='')?set_value('guarantee'):$product->guarantee;?>
                            <select class="form-control" name="guarantee" id="guarantee">                                
                                <?php $sel=($curr_value=='24 months')?'selected="selected"':'';?>
                                <option value="24 months" <?php echo $sel; ?> >24 months</option>
                                <?php $sel=($curr_value=='12 months')?'selected="selected"':'';?>
                                <option value="12 months" <?php echo $sel; ?> >12 months</option>
                                <?php $sel=($curr_value=='6 months')?'selected="selected"':'';?>
                                <option value="6 months" <?php echo $sel; ?> >6 months</option>                                
                            </select>
                            <?php echo form_error('guarantee'); ?>
                            <span class="help-inline">&nbsp;</span>
                        </div>
                    </div>                    

                    <div class="form-group">
                        <label class="col-sm-3 col-lg-2 control-label"><?php echo lang_key('Color'); ?></label>
                        <div class="col-sm-9 col-lg-6 controls">
                            <input type="text" name="color" value="<?php echo $product->color; ?>"
                                   placeholder="<?php echo lang_key('Color'); ?>" class="form-control">
                            <?php echo form_error('color'); ?>
                            <span class="help-inline">&nbsp;</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 col-lg-2 control-label"><?php echo lang_key('Description'); ?></label>
                        <div class="col-sm-9 col-lg-6 controls">
                            <textarea name="description" placeholder="<?php echo lang_key('Description'); ?>" class="form-control"><?php echo $product->product_description; ?></textarea>                            
                            <?php echo form_error('Description'); ?>
                            <span class="help-inline">&nbsp;</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 col-lg-2 control-label"><?php echo lang_key('Size'); ?></label>
                        <div class="col-sm-9 col-lg-6 controls">
                           <?php $curr_value=(set_value('size')!='')?set_value('size'):$product->size;?>
                            <select class="form-control" name="size" id="size">   
                                 <?php $sel=($curr_value=='Large')?'selected="selected"':'';?>
                                <option value="Large"  <?php echo $sel; ?> >Large</option>
                                <?php $sel=($curr_value=='Medium')?'selected="selected"':'';?>
                                <option value="Medium" <?php echo $sel; ?> >Medium</option>
                                <?php $sel=($curr_value=='Small')?'selected="selected"':'';?>
                                <option value="Small" <?php echo $sel; ?> >Small</option>                                
                            </select>
                            <?php echo form_error('size'); ?>
                            <span class="help-inline">&nbsp;</span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-3 col-lg-2 control-label"><?php echo lang_key('Capacity'); ?></label>
                        <div class="col-sm-9 col-lg-6 controls">
                            <input type="text" name="capacity" value="<?php echo $product->capacity; ?>"
                                   placeholder="<?php echo lang_key('capacity'); ?>" class="form-control">
                            <?php echo form_error('capacity'); ?>
                            <span class="help-inline">&nbsp;</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 col-lg-2 control-label"><?php echo lang_key('Make'); ?></label>
                        <div class="col-sm-9 col-lg-6 controls">
                            <input type="text" name="make" value="<?php echo $product->make; ?>" placeholder="<?php echo lang_key('make'); ?>" class="form-control">
                            <?php echo form_error('make'); ?>
                            <span class="help-inline">&nbsp;</span>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label class="col-sm-3 col-lg-2 control-label"><?php echo lang_key('Model'); ?></label>
                        <div class="col-sm-9 col-lg-6 controls">
                            <input type="text" name="model" value="<?php echo $product->model; ?>" placeholder="<?php echo lang_key('model'); ?>" class="form-control">
                            <?php echo form_error('model'); ?>
                            <span class="help-inline">&nbsp;</span>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label class="col-sm-3 col-lg-2 control-label"><?php echo lang_key('Price Range'); ?></label>
                        <div class="col-sm-9 col-lg-6 controls">
                            <input type="text" name="price" value="<?php echo $product->price; ?>" placeholder="<?php echo lang_key('100$-800$'); ?>" class="form-control">
                            <?php echo form_error('price'); ?>
                            <span class="help-inline">&nbsp;</span>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label class="col-sm-3 col-lg-2 control-label"><?php echo lang_key('After Sales Service'); ?></label>
                        <div class="col-sm-9 col-lg-6 controls">
                            <?php $curr_value=(set_value('after_sales_service')!='')?set_value('after_sales_service'):$product->after_sales_service;?>
                            <select class="form-control" name="after_sales_service" id="after_sales_service">                                
                                <?php $sel=($curr_value=='Yes')?'selected="selected"':'';?>
                                <option value="Yes" <?php echo $sel; ?> >Yes</option>
                                <?php $sel=($curr_value=='No')?'selected="selected"':'';?>
                                <option value="No" <?php echo $sel; ?> >No</option>                                
                            </select>
                            <?php echo form_error('after_sales_service'); ?>
                            <span class="help-inline">&nbsp;</span>
                        </div>
                    </div>
                     <div class="form-group" >
                        <label class="col-sm-3 col-lg-2 control-label"><?php echo lang_key('File'); ?></label>
                        <div class="col-sm-9 col-lg-6 controls">
                            <ol class="filelist">
                                <?php if(!empty($product->product_file)){ ?> 
                                <img src="<?php echo base_url().'assets/images/product/'.$product->product_file; ?>" height="100" width="100"  />
                                <?php } ?>
                            </ol>
                           <input type="file" name="photoimg" style="height:auto;" >
                            <?php echo form_error('photoimg'); ?>
                            <span class="help-inline">&nbsp;</span>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label class="col-sm-3 col-lg-2 control-label"></label>
                        <div class="col-sm-9 col-lg-6 controls">
                            <button class="btn btn-primary" type="submit">
                                <i class="fa fa-check"></i><?php echo lang_key("update") ?>
                            </button>
                        </div>
                    </div>
                </form>

            </div>

        </div>

    </div>

</div>

<script type="text/javascript">

jQuery(document).ready(function(){

    var base_url = "<?php echo base_url();?>";

    jQuery('#profile_photo').change(function(){

        var val = jQuery(this).val();

        var src = base_url+'uploads/profile_photos/thumb/'+val;        

        jQuery('#user_photo').attr('src',src);

    }).change();

    jQuery('#user_type').change(function(){
        var val = jQuery(this).val();
        //alert(val);
        if(val==3)
        {
            jQuery('.company-holder').hide();
        }
        else
        {            
            jQuery('.company-holder').show();
        }
    }).change();

});

</script>