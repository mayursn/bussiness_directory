<h3>Service Search Results</h3>
<h4>Name of Suppliers</h4>
<?php foreach ($services as $row):  ?>
<div class="listdetail">
                      <div class="col-md-2">
                          <img src="<?php echo base_url();?>/assets/images/services/<?php echo $row->service_file; ?>" alt="" height="142" width="142" /> </div>
                      <div class="col-md-6">
                          <span style="color: #000"><?php echo ucwords($row->service_name); ?></span><br/>
                        <div class="listcontact" style="color: #000"><i class="fa fa-phone"></i> <b><?php echo $row->contact;  ?></b></div>
                        <div class="listadd"><i class="fa fa-location-arrow"></i> <b><?php echo $row->location; ?></b></div>
                        <div class="listadd"><i class="fa fa-location-arrow"></i> <b><?php echo $row->location; ?></b></div>
                        <div class="listrate">497 Ratings <a href=""><img src="<?php echo theme_url();?>/assets/img/orangestart.gif" alt=""/></a><a href=""><img src="<?php echo theme_url();?>/assets/img/orangestart.gif" alt=""/></a><a href=""><img src="<?php echo theme_url();?>/assets/img/orangestart.gif" alt=""/></a><a href=""><img src="<?php echo theme_url();?>/assets/img/orangestart.gif" alt=""/></a><a href=""><img src="<?php echo theme_url();?>/assets/img/graystar.gif" alt=""/></a></div>
                      </div>
</div>
<?php endforeach; ?>