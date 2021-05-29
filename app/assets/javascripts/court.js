function initMap(){
               /*初期位置*/
<script>
            
             var test =　{lat: <%= @court.latitude%>,lng: <%= @court.longitude%>};
             
                                     
</script>
                                      var map = new google.maps.Map(document.getElementById('map'), {
                                          zoom: 15,
                                          center: test
                                      });
                                      var transitLayer = new google.maps.TransitLayer();
                                      transitLayer.setMap(map);
                              
                                      var contentString = '住所：<%= @court.address %>';
                                      var infowindow = new google.maps.InfoWindow({
                                          content: contentString
                                      });
                                      
                                      /*Map上の指定した位置にピンを挿して表示する*/
                                      var marker = new google.maps.Marker({
                                          position:test,
                                          map: map,
                                          title: contentString
                                      });
                              
                                      marker.addListener('click', function() {
                                          infowindow.open(map, marker);
                                      });
                                  }