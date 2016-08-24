<h3>Product Search Results</h3>
<?php foreach ($product as $row):  ?>
<div class="listdetail">
                      <div class="col-md-2">
                      <img src="<?php echo base_url();?>/assets/images/product/<?php echo $row->product_file; ?>" alt="" height="142" width="142" /> </div>
                      <div class="col-md-6">
                        <span style="color: #000;"><?php echo ucwords($row->product_name); ?></span><br/>
                        <div class="listcontact"  style="color: #000;"><i class="fa fa-phone"></i> <b>Guarantee : <?php echo $row->guarantee;  ?></b></div>
                        <div class="listadd"><i class="fa fa-location-arrow"></i> <b>Price : <?php echo '$ '.$row->price; ?></b></div>
                        <div class="listadd"><i class="fa fa-location-arrow"></i> <b>Model : <?php echo $row->model; ?></b></div>                        
                      </div>
</div>
<?php endforeach; ?>