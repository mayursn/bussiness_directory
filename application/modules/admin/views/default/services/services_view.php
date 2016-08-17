<link href="<?php echo base_url();?>assets/datatable/dataTables.bootstrap.css" rel="stylesheet">

<div class="row">

    <div class="col-md-12">

        <?php echo $this->session->flashdata('msg'); ?>

        <div class="box">

            <div class="box-title">

                <h3><i class="fa fa-bars"></i> <?php echo lang_key('all_services'); ?></h3>

                <?php $page = ($this->uri->segment(5)!='')?$this->uri->segment(5):0;?>

                <div class="box-tool">

                    <a href="#" data-action="collapse"><i class="fa fa-chevron-up"></i></a>

                </div>

            </div>
            <div class="box-content">
                <?php $this->load->helper('text'); ?>
                 
                <?php if ($services->num_rows() <= 0) { ?>
                    <div class="alert alert-info"><?php echo lang_key('no_pages'); ?></div>
                <?php } else { ?>
                   
                    <div style="clear:both;margin-top:20px;"></div>
                    <div id="no-more-tables">
                        <table id="all-posts" class="table table-hover">
                            <thead>
                            <tr>
                                <th class="numeric">#</th>
                                <th class="numeric">Name Of Services</th>
                                <th class="numeric">Quality</th>
                                <th class="numeric">Duration</th>
                                <th class="numeric">Opening hours</th>
                                <th class="numeric">Services Cost</th>
                                <th class="numeric">Warranty Given</th>
                                <th class="numeric">Follow Up</th>
                                 <th class="numeric"><?php echo lang_key('actions');?></th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php $i = 1; 
 foreach ($services->result() as $row):
                            ?>
                                <tr>
                                    <td data-title="#" class="numeric"><?php echo $i++; ?></td>                                  
                                    <td data-title="#" class="numeric"><?php echo $row->service_name; ?></td>                                  
                                    <td data-title="#" class="numeric"><?php echo $row->quality; ?></td>                                  
                                    <td data-title="#" class="numeric"><?php echo $row->duration; ?></td>                                  
                                    <td data-title="#" class="numeric"><?php echo $row->opening_hours; ?></td>                                  
                                    <td data-title="#" class="numeric"><?php echo $row->services_cost; ?></td>                                  
                                    <td data-title="#" class="numeric"><?php echo $row->warranty_given; ?></td>                                  
                                    <td data-title="#" class="numeric"><?php echo $row->follow_up; ?></td>                                                                      
                                    <?php $curr_page = ($this->uri->segment(5)!='')?$this->uri->segment(5):0;?>

                   <td data-title="<?php echo lang_key('actions');?>" class="numeric">

                       <div class="btn-group">

                           <a class="btn btn-info dropdown-toggle" data-toggle="dropdown" href="#"><i class="fa fa-cog"></i> <?php echo lang_key('action');?> <span class="caret"></span></a>

                           <ul class="dropdown-menu dropdown-info">

                               <li><a href="<?php echo site_url('admin/services/editservice/'.$row->service_id);?>" class="edit-location"><?php echo lang_key('edit');?></a></li>

                               <li><a href="<?php echo site_url('admin/services/delete/'.$row->service_id);?>"><?php echo lang_key('delete');?></a></li>

                           </ul>

                       </div>

                   </td>
                                </tr>
                                <?php endforeach; ?>
                            </tbody>

                        </table>

                    </div>
                <?php  } ?>

            </div>

        </div>

    </div>

</div>

<script src="<?php echo base_url();?>assets/datatable/jquery.dataTables.min.js"></script>
<script src="<?php echo base_url();?>assets/datatable/dataTables.bootstrap.js"></script>

<script type="text/javascript">
    jQuery('#searchkey').keyup(function () {

        var val = jQuery(this).val();

        var loadUrl = '<?php echo site_url('admin/search/');?>';

        jQuery("#bookings").html(ajax_load).load(loadUrl, {'key': val});
    });

    var ajax_load = '<div class="box">loading...</div>';

    jQuery('document').ready(function () {

        jQuery('#all-posts').dataTable();

        jQuery.ajaxSetup({
            cache: false
        });
    });



</script>