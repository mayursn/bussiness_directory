  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.0/themes/base/jquery-ui.css">
  <style>
  
  </style>
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.0/jquery-ui.js"></script>
  <script>
  $( function() {
    $("#sortable").sortable();
  } );
  </script>
<div class="page-heading-two">
    <div class="container">
        <h2><?php echo lang_key($page_title); ?> </h2>
        <div class="breads">
            <a href="<?php echo site_url(); ?>"><?php echo lang_key('home'); ?></a> / <?php echo lang_key($page_title); ?>
        </div>
        <div class="clearfix"></div>
    </div>
</div>



<div class="container">
  
  <div class="row">
    <div class="col-md-12">
    <div class="advancesearch-tab">
    <div class="col-md-12">
        <div data-example-id="togglable-tabs" class="bs-example bs-example-tabs">
          <ul role="tablist" id="myTabs" class="nav nav-tabs">
            <li class="active" role="presentation"><a aria-expanded="true" aria-controls="home" data-toggle="tab" role="tab" id="home-tab" href="#home">Service<span class="caret"></span></a></li>
            <li role="presentation" class=""><a aria-controls="profile" data-toggle="tab" id="profile-tab" role="tab" href="#profile" aria-expanded="false">Product</a></li>
           
          </ul>
          <div id="myTabContent" class="tab-content">
            <div aria-labelledby="home-tab" id="home" role="tabpanel" class="tab-pane fade active in">
            <div class="control-group-new">
              <span class="">Select Minimum 3 upto 6</span>
              
              <div class="control-group">
                  <form class="form-advance">
                    <label class="control control--checkbox"><span>1</span>Warranty
                      <input type="checkbox"  class="single-checkbox"  id="warranty_given"  name="warranty_given" value="Warranty Given"   />
                      <div class="control__indicator"></div>
                    </label>    
                    <label class="control control--checkbox"><span>2</span>Follow up
                      <input type="checkbox"  class="single-checkbox"  id="follow_up" name="follow_up" value="Follow Up" />
                      <div class="control__indicator" ></div>
                    </label>
                    <label class="control control--checkbox"><span>3</span>Opening hours
                      <input type="checkbox"  class="single-checkbox" id="opening_hour"  name="opening_hour" value="Opening Hours" />
                      <div class="control__indicator"></div>
                    </label>
                    <label class="control control--checkbox"><span>4</span>Quality
                      <input type="checkbox"  class="single-checkbox"  id="quality" name="quality" value="Quality" />
                      <div class="control__indicator"></div>
                    </label>
                    <label class="control control--checkbox"><span>5</span>Location
                        <input type="checkbox"  class="single-checkbox"  id="location" name="location" value="Location" />
                        <div class="control__indicator"></div>
                    </label>
                    <label class="control control--checkbox"><span>6</span>Cost
                        <input type="checkbox"  class="single-checkbox"  id="services_cost" name="services_cost" value="Services Cost" />
                        <div class="control__indicator"></div>
                    </label>
                    <label class="control control--checkbox"><span>7</span>Duration
                    <input type="checkbox"  class="single-checkbox"  id="duration" name="duration" value="Duration" />
                    <div class="control__indicator"></div>
                    </label>
                    </form>
                   
  </div>
  </div>
               
                <div class="dropdrag-fun-main">    
                     <form id="services_form" >
                <div class="dropdrag-fun">
                    <ul class="set-priority" id="sortable">                        
                        
                    </ul>
                </div>
                <div class="searchbar">
                <input type="text" name="search" id="search" value="" >
                
                </div>
                </form>
                </div>
               
              
            </div>
            <div aria-labelledby="profile-tab" id="profile" role="tabpanel" class="tab-pane fade">
              <!--   Product Search    -->
              <div aria-labelledby="home-tab" id="home" role="tabpanel" class="tab-pane fade active in">
            <div class="control-group-new">
              <span class="">Select Minimum 3 upto 6</span>
              
              <div class="control-group">
                  <form class="form-advance">
                      <label class="control control--checkbox"><span>1</span>Quality
                      <input type="checkbox"  class="product-checkbox"  id="quality" name="quality" value="Quality" />
                      <div class="control__indicator"></div>
                    </label>
                    <label class="control control--checkbox"><span>2</span>Guarantee
                      <input type="checkbox"  class="product-checkbox"  id="guarantee"  name="guarantee" value="Guarantee"   />
                      <div class="control__indicator"></div>
                    </label>    
                    <label class="control control--checkbox"><span>3</span>Color
                      <input type="checkbox"  class="product-checkbox"  id="color" name="color" value="Color" />
                      <div class="control__indicator" ></div>
                    </label>
                    <label class="control control--checkbox"><span>4</span>Size
                      <input type="checkbox"  class="product-checkbox" id="size"  name="size" value="Size" />
                      <div class="control__indicator"></div>
                    </label>
                    <label class="control control--checkbox"><span>5</span>Capacity
                      <input type="checkbox"  class="product-checkbox"  id="capacity" name="capacity" value="Capacity" />
                      <div class="control__indicator"></div>
                    </label>
                    <label class="control control--checkbox"><span>6</span>Make
                        <input type="checkbox"  class="product-checkbox"  id="make" name="make" value="Make" />
                        <div class="control__indicator"></div>
                    </label>
                    <label class="control control--checkbox"><span>7</span>Model
                        <input type="checkbox"  class="product-checkbox"  id="model" name="model" value="Model" />
                        <div class="control__indicator"></div>
                    </label>
                    <label class="control control--checkbox"><span>8</span>Price Range
                        <input type="checkbox"  class="product-checkbox"  id="price_range" name="price_range" value="Price Range" />
                        <div class="control__indicator"></div>
                    </label>
                    </form>                   
                    </div>
                    </div>
               
                    <div class="dropdrag-fun-main">    
                    <form id="product_form" >
                        <div class="dropdrag-fun">
                            <ul class="product-priority" id="sortable-product">

                            </ul>
                        </div>
                        <div class="searchbar">
                            <input type="text" name="search" id="product-search" value="" >
                        </div>
                    </form>
                    </div>
                    
                
              
            </div>
              <!--       -->
            </div>
            
            
          </div>
            <div class="col-md-12">
                <div class="searchlist">
                  <div class="pdfbtn">
                    <a href="#"><img src="<?php echo theme_url();?>/assets/img/pdficon.gif" alt=""/></a>
                  </div>
                  <div class="searchlist_detail">
                    
                    <div id="list-result"></div>
                    <!-- <div class="listdetail">
                      <div class="col-md-2">
                        <img src="<?php echo theme_url();?>/assets/img/listimg.gif" alt=""/> </div>
                      <div class="col-md-6">
                        <span>Three Wise Men</span><br/>
                        <div class="listcontact"><i class="fa fa-phone"></i> <b>+(91) 1234 5678 091</b></div>
                        <div class="listadd"><i class="fa fa-location-arrow"></i> <b>Polish Station Santa...<br />Pubs, Restaurants, more...</b></div>
                        <div class="listrate">497 Ratings <a href=""><img src="<?php echo theme_url();?>/assets/img/orangestart.gif" alt=""/></a><a href=""><img src="<?php echo theme_url();?>/assets/img/orangestart.gif" alt=""/></a><a href=""><img src="<?php echo theme_url();?>/assets/img/orangestart.gif" alt=""/></a><a href=""><img src="<?php echo theme_url();?>/assets/img/orangestart.gif" alt=""/></a><a href=""><img src="<?php echo theme_url();?>/assets/img/graystar.gif" alt=""/></a></div>
                      </div>
                    </div>
                     <div class="listdetail">
                      <div class="col-md-2">
                        <img src="<?php echo theme_url();?>/assets/img/listimg.gif" alt=""/> </div>
                      <div class="col-md-6">
                        <span>Three Wise Men</span><br/>
                        <div class="listcontact"><i class="fa fa-phone"></i> <b>+(91) 1234 5678 091</b></div>
                        <div class="listadd"><i class="fa fa-location-arrow"></i> <b>Polish Station Santa...<br />Pubs, Restaurants, more...</b></div>
                        <div class="listrate">497 Ratings <a href=""><img src="<?php echo theme_url();?>/assets/img/orangestart.gif" alt=""/></a><a href=""><img src="<?php echo theme_url();?>/assets/img/orangestart.gif" alt=""/></a><a href=""><img src="<?php echo theme_url();?>/assets/img/orangestart.gif" alt=""/></a><a href=""><img src="<?php echo theme_url();?>/assets/img/orangestart.gif" alt=""/></a><a href=""><img src="<?php echo theme_url();?>/assets/img/graystar.gif" alt=""/></a></div>
                      </div>
                    </div> -->
                  </div>
                </div>
              </div>
        </div>
        </div>
        
        
      </div>
      </div>
    </div>
  </div>
<script>
    $(document).ready(function(){
var limit = 7;

$('input.single-checkbox').click(function(){
   
   if($('input.single-checkbox:checked').length >= limit && $('input.single-checkbox:checked').length <= limit) {       
       alert('Select only Maximum 6 checkbox');
       this.checked = false;       
   }      
       if ($('input.single-checkbox').is(':checked')) 
       {
          this.setAttribute("checked", "checked"); 
          var name = $(this).attr('name');    
          var value_of_name = $(this).val();
          var priority = '<li class="ui-state-default" id="'+name+'"><span class="ui-icon ui-icon-arrowthick-2-n-s"></span><input type="hidden" name="services[]"  value="'+name+'" >'+value_of_name+'</li>';
          $('.set-priority').append(priority);
       }
       if (!$(this).is(":checked"))            
       {
           this.setAttribute("checked", ""); // For IE
            this.removeAttribute("checked"); // For other browsers
            this.checked = false;
          var name = $(this).attr('name');
          $('.set-priority li#'+name).remove();
       }
});
});

$(document).ready(function(){
    $("#search").keypress(function(e) {
        var code = (e.keyCode ? e.keyCode : e.which);
     if (code == 13) {
        if($('input.single-checkbox:checked').length < 3)
        {
            alert(' Select Minimum 3 upto 6 ');
            return false;
        }
        if($("#search").val()=="")
        {
            alert('Please enter search value');
            return false;
        }
      
       var code = (e.keyCode ? e.keyCode : e.which);
       var dataString = $("#services_form").serialize();
       //alert(dataString);
        
          $.ajax({
             url:"<?php echo base_url(); ?>index.php/en/show/get_services" ,
             type : "POST",
             data : dataString,
             success:function(content)
             {
                 $("#list-result").html(content);
             }
          });
          return false;
          }
        
    });
});
</script>

<script >
    $(document).ready(function(){
var limit = 7;

$('input.product-checkbox').click(function(){
   
   if($('input.product-checkbox:checked').length >= limit && $('input.product-checkbox:checked').length <= limit) {       
       alert('Select only Maximum 6 checkbox');
       this.checked = false;       
   }      
       if ($('input.product-checkbox').is(':checked')) 
       {
          this.setAttribute("checked", "checked"); 
          var name = $(this).attr('name');    
          var value_of_name = $(this).val();
          var priority = '<li class="ui-state-default" id="'+name+'"><span class="ui-icon ui-icon-arrowthick-2-n-s"></span><input type="hidden" name="product[]"  value="'+name+'" >'+value_of_name+'</li>';
          $('.product-priority').append(priority);
       }
       if (!$(this).is(":checked"))            
       {
           this.setAttribute("checked", ""); // For IE
            this.removeAttribute("checked"); // For other browsers
            this.checked = false;
          var name = $(this).attr('name');
          $('.product-priority li#'+name).remove();
       }
});
});
$(function() {
$("#sortable-product").sortable();
$("#sortable-product").disableSelection();
});

$(document).ready(function(){
    $("#product-search").keypress(function(e) {
        var code = (e.keyCode ? e.keyCode : e.which);
     if (code == 13) {
        if($('input.product-checkbox:checked').length < 3)
        {
            alert(' Select Minimum 3 upto 6 ');
            return false;
        }
        if($("#product-search").val()=="")
        {
            alert('Please enter search value');
            return false;
        }
      
       var code = (e.keyCode ? e.keyCode : e.which);
       var dataString = $("#product_form").serialize();
       //alert(dataString);
        
          $.ajax({
             url:"<?php echo base_url(); ?>index.php/en/show/get_product" ,
             type : "POST",
             data : dataString,
             success:function(content)
             {
                $("#list-result").html(content);
             }
          });
          return false;
          }
        
    });
});
</script>
<!-- Go to www.addthis.com/dashboard to customize your tools -->
<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-53fb1205151cc4cf"></script>