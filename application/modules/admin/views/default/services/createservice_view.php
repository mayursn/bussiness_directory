<div class="row">

    <div class="col-md-12">

        <div class="box">

            <div class="box-title">

                <h3><i class="fa fa-bars"></i> <?php echo lang_key("create_service"); ?> </h3>

                <div class="box-tool">

                    <a href="#" data-action="collapse"><i class="fa fa-chevron-up"></i></a>

                    <a href="#" data-action="close"><i class="fa fa-times"></i></a>

                </div>

            </div>

            <div class="box-content">

                <?php echo $this->session->flashdata('msg'); ?>

                <form class="form-horizontal" action="<?php echo site_url('admin/services/add'); ?>" method="post"  enctype="multipart/form-data">

                    <div class="form-group" style="display: none;">
                        <label class="col-sm-3 col-lg-2 control-label"><?php echo lang_key('Category'); ?></label>
                        <div class="col-sm-9 col-lg-6 controls">
                       
                            <select class="form-control" name="category" id="category">                          
                                <option value="Auto care"  >Auto care</option>
                                <option value="Banquets"  >Banquets</option>
                                <option value="Caterers"  >Caterers</option>
                                <option value="Courier"  >Courier</option>
                                <option value="Doctor"  >Doctor</option>
                                <option value="Education"  >Education</option>
                                <option value="Flights"  >Flights</option>
                                <option value="Hospitals"  >Hospitals</option>
                                <option value="Pet and Pet Care"  >Pet and Pet Care</option>                                
                                <option value="Restaurants"  >Restaurants</option>
                                
                       
                            </select>
                            <?php echo form_error('category'); ?>
                            <span class="help-inline">&nbsp;</span>
                        </div>
                    </div>
                
                    <div class="form-group">
                        <label class="col-sm-3 col-lg-2 control-label"><?php echo lang_key('service_name'); ?></label>
                        <div class="col-sm-9 col-lg-6 controls">
                            <input type="text" name="service_name" value="<?php echo set_value('service_name'); ?>" placeholder="<?php echo lang_key('name_of_service'); ?>" class="form-control">
                            <?php echo form_error('service_name'); ?>
                            <span class="help-inline">&nbsp;</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 col-lg-2 control-label"><?php echo lang_key('Quality'); ?></label>
                        <div class="col-sm-9 col-lg-6 controls">
                            <?php $curr_value=(set_value('quality')!='')?set_value('quality'):'';?>
                            <select class="form-control" name="quality" id="quality">                                
                                <option value="high" >High</option>
                                <option value="medium" >Medium</option>
                                <option value="low" >Low</option>                                
                            </select>
                            <?php echo form_error('quality'); ?>
                            <span class="help-inline">&nbsp;</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 col-lg-2 control-label"><?php echo lang_key('Duration'); ?></label>
                        <div class="col-sm-3 col-lg-3 controls">
                            <input type="text" name="duration[]" value="<?php echo set_value('duration'); ?>"
                                   placeholder="<?php echo lang_key('Duration'); ?>" class="form-control">
                            <?php echo form_error('duration'); ?>
                            <span class="help-inline">&nbsp;</span>
                        </div>
                        <div class="col-sm-3 col-lg-3 controls">
                            <select name="duration[]" class="form-control" >
                                <option value="hours">hours</option>
                                <option value="days">days</option>
                                <option value="month">month</option>
                                <option value="year">year</option>
                            </select>                            
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 col-lg-2 control-label"><?php echo lang_key('Location'); ?></label>
                        <div class="col-sm-9 col-lg-6 controls">
                            <input type="text" name="location" value="<?php echo set_value('location'); ?>" placeholder="<?php echo lang_key('Location'); ?>" class="form-control">
                            <?php echo form_error('location'); ?>
                            <span class="help-inline">&nbsp;</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 col-lg-2 control-label"><?php echo lang_key('Description'); ?></label>
                        <div class="col-sm-9 col-lg-6 controls">
                            <textarea name="description" placeholder="<?php echo lang_key('Description'); ?>" class="form-control"></textarea>                            
                            <?php echo form_error('Description'); ?>
                            <span class="help-inline">&nbsp;</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 col-lg-2 control-label"><?php echo lang_key('Contact'); ?></label>
                        <div class="col-sm-9 col-lg-6 controls">
                            <input type="text" name="contact" value="<?php echo set_value('Contact'); ?>" placeholder="<?php echo lang_key('+91 8888888888'); ?>" class="form-control">
                            <?php echo form_error('Contact'); ?>
                            <span class="help-inline">&nbsp;</span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-3 col-lg-2 control-label"><?php echo lang_key('opening_hours'); ?></label>
                        <div class="col-sm-9 col-lg-6 controls">
                            <div class="col-sm-3 col-lg-6 controls">
                            <select name="opening_hours" class="form-control" >
                                <?php for($i=1;$i<=24;$i++){ ?>
                                <option value="<?php echo $i; ?>"><?php echo $i; ?></option>
                                <?php } ?>                                
                            </select>
                            <?php echo form_error('opening_hours'); ?>
                        </div>

                        </div>

                    </div>

                    <div class="form-group">

                        <label class="col-sm-3 col-lg-2 control-label"><?php echo lang_key('services_cost'); ?></label>

                        <div class="col-sm-9 col-lg-6 controls">

                            <input type="number" min="1" name="services_cost" value="<?php echo set_value('services_cost'); ?>"
                                   placeholder="<?php echo lang_key('services_cost'); ?>" class="form-control">
                            <?php echo form_error('services_cost'); ?>
                            <span class="help-inline">&nbsp;</span>

                        </div>

                    </div>

                    

                    <div class="form-group company-holder">
                        <label class="col-sm-3 col-lg-2 control-label"><?php echo lang_key('warranty_given'); ?></label>
                        <div class="col-sm-3 col-lg-3 controls">
                            <input type="text" name="warranty_given" value="<?php echo set_value('warranty_given'); ?>"
                                placeholder="<?php echo lang_key('warranty_given'); ?>" class="form-control">
                            <?php echo form_error('warranty_given'); ?>
                            <span class="help-inline">&nbsp;</span>
                        </div>
                        <div class="col-sm-3 col-lg-3 controls">
                            <select name="warranty_given_time" class="form-control" >                               
                                <option value="days">days</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 col-lg-2 control-label"><?php echo lang_key('follow_up'); ?></label>
                        <div class="col-sm-9 col-lg-6 controls">
                            <select class="form-control" name="follow_up">                            
                                <option value="Yes" >Yes</option>                            
                                <option value="No" >No</option>                            
                            </select>
                            <?php echo form_error('follow_up'); ?>
                            <span class="help-inline">&nbsp;</span>
                        </div>
                    </div>
                    <div class="form-group" >
                        <label class="col-sm-3 col-lg-2 control-label"><?php echo lang_key('File'); ?></label>
                        <div class="col-sm-9 col-lg-6 controls">
                            <ol class="filelist">

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
                                <i class="fa fa-check"></i><?php echo lang_key("create") ?>
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