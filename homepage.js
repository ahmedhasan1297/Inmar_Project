    <script type="text/javascript">
       var app=angular.module("myapp",[]);
       app.service("send_group_details",function($http){
            this.send_details=function(v){
                
                var request = $http({ 
                     method: "post", 
                     url: "group_create.php", 
                     headers:{'content-type':'application/x-www-form-urlencoded'}, 
                     transformRequest: function(obj) {
                                                  var str = [];
                                                  for(var p in obj)
                                                  {
                                                        //console.log(p);
                                                        str.push(encodeURIComponent(p) + "=" + encodeURIComponent(obj[p]));
                                                  }                                                      
                                                  //alert(str.join("&"));
                                                    return str.join("&");
                                            },
                     data: { 
                         
                         gid: v.g_id,
                         gname:v.g_name,
                         owner_email:arr
                     } 
                 }); 
  
                 // Store the data-dump of the FORM scope. 
                 request.success( 
                     function( data ) { 
  
                         //v.message = data; 
                         //alert(JSON.stringify(data));
                         //v.collect=data;
                        // alert("Group created successfully");
                         v.onpageload();
                         //document.getElementById('g_id').value="";
                         //document.getElementById('g_name').value="";
                     } 
                 ); 


            }
       });









    app.service("collect_group_info",function($http){
            this.get_group_info=function(v){
                
                var request = $http({ 
                     method: "post", 
                     url: "send_group_info.php", 
                     headers:{'content-type':'application/x-www-form-urlencoded'}, 
                     transformRequest: function(obj) {
                                                  var str = [];
                                                  for(var p in obj)
                                                  {
                                                        //console.log(p);
                                                        str.push(encodeURIComponent(p) + "=" + encodeURIComponent(obj[p]));
                                                  }                                                      
                                                  //alert(str.join("&"));
                                                    return str.join("&");
                                            },
                     data: { 

                         owner_email:'ram@inmar.com'
                     } 
                 }); 
  
                 // Store the data-dump of the FORM scope. 
                 request.success( 
                     function( data ) { 
 							//alert("data recieved");
 							//alert(data); 
                         //v.message = data; 
                         //alert(JSON.stringify(data));
                         //alert(data);
                         v.collect=data;
                         //alert("Group created successfully");
                         //v.onpageload();
                         //document.getElementById('g_id').value="";
                         //document.getElementById('g_name').value="";
                     } 
                 ); 


            }
       });

       app.controller("app_con",function($scope,send_group_details,collect_group_info){
            $scope.g_name="";
            $scope.g_id="";
            $scope.collect="";
            $scope.send=function(){
               //alert("hai");
               send_group_details.send_details($scope);
               console.log($scope.collect);
            }
            $scope.onpageload=function(){
              //alert("i am loaded");
              collect_group_info.get_group_info($scope);
            }
            $scope.getcontact=function(group_id){
                console.log(group_id);
            }
       });
    </script>






	<script type="text/javascript">

	   (function(){
              
	   	      //alert(document.cookie);
	   	      var c=document.cookie;
	   	      var mytest1=c.split(';');
	   	      //alert(mytest1[0]+"  "+mytest1[1]);

	   	      var j=mytest1[1].search("=");
              var arr=mytest1[1].slice(j+1,mytest1[1].length);
              alert("hai new user");
              alert(arr);

	   	      console.log(document.cookie);
	   		  //var check=document.cookie;
	   		  var i=mytest1[0].search("=");
	   		  i=i+1;
	   		  if(mytest1[0].charAt(i)=="x")
	   		  {
          			alert("working good");
	          }
       		  else
       		  {
       		  	console.log(document.cookie);
       	      	window.location.assign("login.html");

       		  }
	   }());


	  function clearmodaldata()
	  {
            //document.getElementById('g_id').value="";  
            //document.getElementById('g_name').value="";
	  }

	   function delcookie()
	   {
	   	  var c=document.cookie;
	   	  var mytest1=c.split(';');
          alert("before closing:"+mytest1[0]+" "+mytest1[1]);
          var v1=mytest1[0].substr(0,mytest1[0].search("="));
          var v2=mytest1[1].substr(0,mytest1[1].search("="));
          alert(v1+"  "+v2);
	   	  document.cookie = mytest1[0]+"=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/;";
	   	  document.cookie = mytest1[1]+"=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/;";
	   	  alert("close");
	   	  window.location.assign("logout.php?p1="+v1+"&p2="+v2);
	   }
	</script>