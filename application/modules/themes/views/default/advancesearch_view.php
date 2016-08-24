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
    <div class="breads"> <a href="<?php echo site_url(); ?>"><?php echo lang_key('home'); ?></a> / <?php echo lang_key($page_title); ?> </div>
    <div class="clearfix"></div>
  </div>
</div>

<!-- Container -->
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
            <div class="row">
            <div class="col-md-12">
            <div class="control-group-new">
              <span class="">Select Minimum 3 upto 6</span>
              
              <div class="control-group">
    
    <label class="control control--checkbox"><span>1</span>Warranty
      <input type="checkbox" checked="checked"/>
      <div class="control__indicator"></div>
    </label>
    <label class="control control--checkbox"><span>2</span>Make
      <input type="checkbox"/>
      <div class="control__indicator"></div>
    </label>
    <label class="control control--checkbox"><span>3</span>Follow up
      <input type="checkbox"/>
      <div class="control__indicator"></div>
    </label>
    <label class="control control--checkbox"><span>4</span>Opening hours
      <input type="checkbox"/>
      <div class="control__indicator"></div>
    </label>
    <label class="control control--checkbox"><span>5</span>Quality
      <input type="checkbox"/>
      <div class="control__indicator"></div>
    </label>
    <label class="control control--checkbox"><span>6</span>Location
      <input type="checkbox"/>
      <div class="control__indicator"></div>
    </label>
    <label class="control control--checkbox"><span>7</span>Cost
      <input type="checkbox"/>
      <div class="control__indicator"></div>
    </label>
    <label class="control control--checkbox"><span>8</span>Duration
      <input type="checkbox"/>
      <div class="control__indicator"></div>
    </label>
  </div>
  </div>
              <div class="dropdrag-fun-main">       
                <div class="dropdrag-fun">
                    <ul class="set-priority" id="sortable">
                        <li class="ui-state-default" id="Duration"><span class="ui-icon ui-icon-arrowthick-2-n-s"></span><input type="hidden" name="services[]"  value="Duration" ><b>1</b>Warranty</li>
                        <li class="ui-state-default" id="Duration"><span class="ui-icon ui-icon-arrowthick-2-n-s"></span><input type="hidden" name="services[]"  value="Duration" ><b>2</b>Follow up</li>
                        <li class="ui-state-default" id="Duration"><span class="ui-icon ui-icon-arrowthick-2-n-s"></span><input type="hidden" name="services[]"  value="Duration" ><b>3</b>Quality</li>
                        <li class="ui-state-default" id="Duration"><span class="ui-icon ui-icon-arrowthick-2-n-s"></span><input type="hidden" name="services[]"  value="Duration" ><b>4</b>Make</li>
                    </ul>
                    
                </div>
                <div class="searchbar">
                      <form>
                        <input placeholder="Search" value="Search" type="text">
                      </form>
                    </div>
              </div>  
              </div>
              <div class="col-md-12">
                <div class="searchlist">
                  <div class="pdfbtn" style="display: none;">
                    <a href="#"><img src="<?php echo theme_url();?>/assets/img/pdficon.gif" alt=""/></a>
                  </div>
                  <div class="searchlist_detail">
                    <h3>Service Search Results</h3>
                    <h4>Name of Suppliers</h4>
                    <div class="listdetail">
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
                    </div>
                  </div>
                </div>
              </div>
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
var limit = 6;
$('input.single-checkbox').on('change', function(evt) {
   if($(this).siblings(':checked').length >= limit && $(this).siblings(':checked').length <= limit) {
       this.checked = false;
       
   }
      
       if ($('input.single-checkbox').is(':checked')) 
       {
          var name = $(this).attr('name');      
          var priority = '<li id="'+name+'"><input type="text" name="'+name+'-search"  value="'+name+'" ></li>';
          $('.set-priority').append(priority);
       }
       if (!$(this).is(":checked"))            
       {
          var name = $(this).attr('name');
          $('.set-priority li#'+name).remove();
       }
});
$(document).ready(function(){

    $("#searchbtn").click(function(e) {
       var code = (e.keyCode ? e.keyCode : e.which);
       var dataString = $("#services_form").serialize();
       alert(dataString);
        if (code == 13) {
          $.ajax({
             url:"<?php echo base_url(); ?>index.php/show/get_services" ,
             type : "POST",
             data : dataString,
             success:function(content){
                 alert('testing');
             }
          });
        } 
    });
});
</script> 
<!-- Go to www.addthis.com/dashboard to customize your tools --> 
<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-53fb1205151cc4cf"></script>