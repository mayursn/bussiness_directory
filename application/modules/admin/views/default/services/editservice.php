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

                <form class="form-horizontal" action="<?php echo site_url('admin/services/update/'.$id); ?>" method="post"   enctype="multipart/form-data">
                    
                    <div class="form-group" style="display: none;">
                        <label class="col-sm-3 col-lg-2 control-label"><?php echo lang_key('Category'); ?></label>
                        <div class="col-sm-9 col-lg-6 controls">                       
                            <select class="form-control" name="category" id="category">                     
                                 <?php $curr_value=(set_value('category')!='')?set_value('category'):$service->category;?>
                                <?php $sel=($curr_value=='Auto care')?'selected="selected"':'';?>
                                <option value="Auto care" <?php echo $sel; ?> >Auto care</option>
                                <?php $sel=($curr_value=='Banquets')?'selected="selected"':'';?>
                                <option value="Banquets" <?php echo $sel; ?> >Banquets</option>
                                <?php $sel=($curr_value=='Caterers')?'selected="selected"':'';?>
                                <option value="Caterers" <?php echo $sel; ?> >Caterers</option>
                                <?php $sel=($curr_value=='Courier')?'selected="selected"':'';?>
                                <option value="Courier" <?php echo $sel; ?> >Courier</option>
                                <?php $sel=($curr_value=='Doctor')?'selected="selected"':'';?>
                                <option value="Doctor" <?php echo $sel; ?> >Doctor</option>
                                <?php $sel=($curr_value=='Education')?'selected="selected"':'';?>
                                <option value="Education" <?php echo $sel; ?> >Education</option>
                                <?php $sel=($curr_value=='Flights')?'selected="selected"':'';?>
                                <option value="Flights" <?php echo $sel; ?> >Flights</option>
                                <?php $sel=($curr_value=='Hospitals')?'selected="selected"':'';?>
                                <option value="Hospitals" <?php echo $sel; ?> >Hospitals</option>
                                <?php $sel=($curr_value=='Pet and Pet Care')?'selected="selected"':'';?>
                                <option value="Pet and Pet Care" <?php echo $sel; ?>  >Pet and Pet Care</option>                                
                                <?php $sel=($curr_value=='Restaurants')?'selected="selected"':'';?>
                                <option value="Restaurants" <?php echo $sel; ?> >Restaurants</option>                       
                            </select>
                            <?php echo form_error('category'); ?>
                            <span class="help-inline">&nbsp;</span>
                        </div>
                    </div>
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
                        <div class="col-sm-3 col-lg-3 controls">
                            <?php $duration = explode(" ", $service->duration);
                            $duration_time = $duration[1];
                            ?>
                            <input type="text" name="duration[]" value="<?php echo $duration[0]; ?>"
                                   placeholder="<?php echo lang_key('Duration'); ?>" class="form-control">
                          </div>
                             <div class="col-sm-3 col-lg-3 controls">
                            <select name="duration[]" class="form-control" >
                                <?php $curr_value=(set_value('duration')!='')?set_value('duration'):$duration_time;?>
                                <?php $sel=($curr_value=='hours')?'selected="selected"':'';?>
                                <option value="hours" <?php echo $sel; ?>>hours</option>
                                <?php $sel=($curr_value=='days')?'selected="selected"':'';?>
                                <option value="days"  <?php echo $sel; ?>>days</option>
                                <?php $sel=($curr_value=='month')?'selected="selected"':'';?>
                                <option value="month"  <?php echo $sel; ?>>month</option>
                                <?php $sel=($curr_value=='year')?'selected="selected"':'';?>
                                <option value="year"  <?php echo $sel; ?>>year</option>
                            </select>
                            
                        </div>
                              <?php echo form_error('duration'); ?>
                            <span class="help-inline">&nbsp;</span>
                        
                    </div>
                     <div class="form-group">
                        <label class="col-sm-3 col-lg-2 control-label"><?php echo lang_key('Location'); ?></label>
                        <div class="col-sm-9 col-lg-6 controls">
                            <input type="text" name="location" value="<?php echo $service->location; ?>"
                                   placeholder="<?php echo lang_key('Location'); ?>" class="form-control">
                            <?php echo form_error('location'); ?>
                            <span class="help-inline">&nbsp;</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 col-lg-2 control-label"><?php echo lang_key('Description'); ?></label>
                        <div class="col-sm-9 col-lg-6 controls">
                            <textarea name="description" placeholder="<?php echo lang_key('Description'); ?>" class="form-control"><?php echo $service->service_description; ?></textarea>                            
                            <?php echo form_error('Description'); ?>
                            <span class="help-inline">&nbsp;</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 col-lg-2 control-label"><?php echo lang_key('Contact'); ?></label>
                        <div class="col-sm-9 col-lg-6 controls">
                            <input type="text" name="contact" value="<?php echo $service->contact; ?>" placeholder="<?php echo lang_key('+91 8888888888'); ?>" class="form-control">
                            <?php echo form_error('Contact'); ?>
                            <span class="help-inline">&nbsp;</span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-3 col-lg-2 control-label"><?php echo lang_key('opening_hours'); ?></label>
                        <div class="col-sm-9 col-lg-6 controls">
                            <select name="opening_hours" class="form-control" >
                                <?php $curr_value=(set_value('opening_hours')!='')?set_value('opening_hours'):$service->opening_hours;?>
                                <?php for($i=1;$i<=24;$i++){ ?>
                                 <?php $sel=($curr_value==$i)?'selected="selected"':'';?>
                                <option value="<?php echo $i; ?>" <?php echo $sel; ?>><?php echo $i; ?></option>
                                <?php } ?>                                
                            </select>
                            <?php echo form_error('opening_hours'); ?>
                            <span class="help-inline">&nbsp;</span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-3 col-lg-2 control-label"><?php echo lang_key('services_cost'); ?></label>
                        <div class="col-sm-9 col-lg-6 controls">
                            <input type="number" min="1" name="services_cost" value="<?php echo $service->services_cost; ?>"
                                   placeholder="<?php echo lang_key('services_cost'); ?>" class="form-control">
                            <?php echo form_error('services_cost'); ?>
                            <span class="help-inline">&nbsp;</span>
                        </div>
                    </div>

                    <div class="form-group company-holder">
                        <label class="col-sm-3 col-lg-2 control-label"><?php echo lang_key('warranty_given'); ?></label>
                        <div class="col-sm-3 col-lg-3 controls">
                            <?php $warranty = explode(" ",$service->warranty_given); ?>
                            <input type="text" name="warranty_given" value="<?php echo $service->warranty_given; ?>" placeholder="<?php echo lang_key('warranty_given'); ?>" class="form-control">
                            <?php echo form_error('warranty_given'); ?>
                            <span class="help-inline">&nbsp;</span>
                        </div>
                        <div class="col-sm-3 col-lg-3 controls">
                            <?php $curr_value=(set_value('warranty_given')!='')?set_value('warranty_given'):$warranty[1];?>
                            <select name="warranty_given_time" class="form-control" >
                            
                                <option value="days"  <?php echo $sel; ?>>days</option>
                            </select>
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
                    <div class="form-group" >
                        <label class="col-sm-3 col-lg-2 control-label"><?php echo lang_key('File'); ?></label>
                        <div class="col-sm-9 col-lg-6 controls">
                            <ol class="filelist">
                                <?php if(!empty($service->service_file)){ ?> 
                                <img src="<?php echo base_url().'assets/images/services/'.$service->service_file; ?>" height="100" width="100"  />
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