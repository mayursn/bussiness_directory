<div class="row">

    <div class="col-md-12">

        <div class="box">

            <div class="box-title">

                <h3><i class="fa fa-bars"></i> <?php echo lang_key("edit_service"); ?> </h3>

                <div class="box-tool">

                    <a href="#" data-action="collapse"><i class="fa fa-chevron-up"></i></a>

                    <a href="#" data-action="close"><i class="fa fa-times"></i></a>

                </div>

            </div>

            <div class="box-content">

                <?php echo $this->session->flashdata('msg');  ?>

                <form class="form-horizontal" action="<?php echo site_url('admin/services/update/'.$id); ?>" method="post">
                    <div class="form-group">
                        <label class="col-sm-3 col-lg-2 control-label"><?php echo lang_key('service_name'); ?></label>
                        <div class="col-sm-9 col-lg-6 controls">
                            <input type="text" name="service_name" value="<?php echo $service->service_name; ?>"
                                   placeholder="<?php echo lang_key('name_of_service'); ?>" class="form-control">
                            <?php echo form_error('service_name'); ?>
                            <span class="help-inline">&nbsp;</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 col-lg-2 control-label"><?php echo lang_key('Quality'); ?></label>
                        <div class="col-sm-9 col-lg-6 controls">
                            <?php $curr_value=(set_value('quality')!='')?set_value('quality'):$service->quality;?>
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
                        <label class="col-sm-3 col-lg-2 control-label"><?php echo lang_key('Duration'); ?></label>
                        <div class="col-sm-9 col-lg-6 controls">
                            <input type="text" name="duration" value="<?php echo $service->duration; ?>"
                                   placeholder="<?php echo lang_key('Duration'); ?>" class="form-control">
                            <?php echo form_error('duration'); ?>
                            <span class="help-inline">&nbsp;</span>
                        </div>
                    </div>

                    <div class="form-group">

                        <label class="col-sm-3 col-lg-2 control-label"><?php echo lang_key('opening_hours'); ?></label>

                        <div class="col-sm-9 col-lg-6 controls">

                            <input type="text" name="opening_hours" value="<?php echo $service->opening_hours; ?>"

                                   placeholder="<?php echo lang_key('Official opening hours'); ?>" class="form-control">
                            <?php echo form_error('opening_hours'); ?>
                            <span class="help-inline">&nbsp;</span>

                        </div>

                    </div>

                    <div class="form-group">

                        <label class="col-sm-3 col-lg-2 control-label"><?php echo lang_key('services_cost'); ?></label>

                        <div class="col-sm-9 col-lg-6 controls">

                            <input type="text" name="services_cost" value="<?php echo $service->services_cost; ?>"
                                   placeholder="<?php echo lang_key('services_cost'); ?>" class="form-control">
                            <?php echo form_error('services_cost'); ?>
                            <span class="help-inline">&nbsp;</span>

                        </div>

                    </div>

                    

                    <div class="form-group company-holder">
                        <label class="col-sm-3 col-lg-2 control-label"><?php echo lang_key('warranty_given'); ?></label>
                        <div class="col-sm-9 col-lg-6 controls">
                            <input type="text" name="warranty_given" value="<?php echo $service->warranty_given; ?>"
                                placeholder="<?php echo lang_key('warranty_given'); ?>" class="form-control">
                            <?php echo form_error('warranty_given'); ?>
                            <span class="help-inline">&nbsp;</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 col-lg-2 control-label"><?php echo lang_key('follow_up'); ?></label>
                        <div class="col-sm-9 col-lg-6 controls">
                            <select class="form-control" name="follow_up">      
                                <?php $curr_value=(set_value('follow_up')!='')?set_value('follow_up'):$service->follow_up;?>
                                 <?php $sel=($curr_value=='Yes')?'selected="selected"':'';?>
                                <option value="Yes" <?php echo $sel; ?> >Yes</option>                           
                                <?php $sel=($curr_value=='No')?'selected="selected"':'';?>
                                <option value="No"  <?php echo $sel; ?> >No</option>                            
                            </select>
                            <?php echo form_error('follow_up'); ?>
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