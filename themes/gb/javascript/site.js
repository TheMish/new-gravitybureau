


/*=====================
 *	BODY FADE
 ======================*/


$(document).ready(function() {
	
	$('body').fadeIn(1000);
	
	
	
	$('.fadeLink').click(function() {
	
		event.preventDefault();
		
		newLocation = this.href;
		
		$('body').fadeOut(1000, newpage);
	
	});
	
	function newpage() {
	
		window.location = newLocation;
	
	}

});

/*====================
	SUPERSLIDES
====================*/


$('#stats-next').click(function(){
	$('.slides-navigation .next').click();
});







$(document).ready(function () {
 
	setTimeout(function () {
		
		 $('#text-swap1').html(function () {
		 
		     setTimeout(function () {
		     	$('#text-swap1').addClass('switch');
		         setTimeout(function () {
		         	 $('#text-swap1').removeClass('switch');
		             $('#text-swap1').html('CREATIVE');
		         }, 700);
		     }, 0);
		 
		     setTimeout(function () {
		     	$('#text-swap1').addClass('switch');
		         setTimeout(function () {
		         	 $('#text-swap1').removeClass('switch');
		             $('#text-swap1').html('DIGITAL');
		         }, 700);
		     }, 2500);
		     
		     setTimeout(function () {
		     	$('#text-swap1').addClass('switch');
		         setTimeout(function () {
		         	 $('#text-swap1').removeClass('switch');
		             $('#text-swap1').html('BRANDING');
		         }, 700);
		     }, 4500);
		     
		 });
	 
	}, 1000);
 
		 
	
    setTimeout(function () {
     	$('.custom-content').addClass('swap');
     	$('#text-swap1').addClass('hide');
         setTimeout(function () {
         	 $('.custom-content').removeClass('swap');
             $('.custom-content h1').html('BACK TO EARTH');
         	 $('.custom-content h1.move').html('WE BRING BRANDS');
         }, 700);
     }, 7500);   
      
});




$(document).ready(function () {
	
	setInterval(function(){
	
		setTimeout(function() {
		
			setTimeout(function() {
				
				$('.custom-content2 .text-swap-wrap').addClass('switch');
				
				setTimeout(function() {
					$('.custom-content2 .text-swap-wrap').removeClass('switch');
					$('.custom-content2 h3#text-swap2').html('build on the line experiences');
				}, 700);
				
			}, 0);
			
			setTimeout(function() {
				
				$('.custom-content2 .text-swap-wrap').addClass('switch');
				
				setTimeout(function() {
					$('.custom-content2 .text-swap-wrap').removeClass('switch');
					$('.custom-content2 h3#text-swap2').html('design brands with intelligent simplicity');
				}, 700);
				
			}, 3000);
			
			setTimeout(function() {
				
				$('.custom-content2 .text-swap-wrap').addClass('switch');
				
				setTimeout(function() {
					$('.custom-content2 .text-swap-wrap').removeClass('switch');
					$('.custom-content2 h3#text-swap2').html('bring brands back to earth');
				}, 700);
				
			}, 6000);
			
		}, 3000);
	
	}, 9000);
	
	setInterval(function(){
		$('.custom-content2 .line').toggleClass('blink');
	}, 1000);
	
});







/*=====================
 *	DYNAMIC HEIGHT
 ======================*/



var $wh = $(window).height();
var $sectionHeight = $wh - 120 + "px";

$(document).ready(function() {
	$('body').find('.dynHeight').css('height', $sectionHeight);
});



/***********************

		Clocks 
	
***********************/






d = new Date()
utc_date = new Date(d.getTime() + (1000 * 60 * d.getTimezoneOffset()))

auckland_date = new Date(utc_date.getTime() + (1000 * 60 * 60 * 12))
la_date = new Date(utc_date.getTime() + (1000 * 60 * 60 * -7))

window.setInterval(function() {

if(auckland_date.getHours()<10) 
		{ 	document.getElementById("auckland-hour").textContent= "0" + auckland_date.getHours() + "" }
else 	{	document.getElementById("auckland-hour").textContent=auckland_date.getHours() + "" }

if(la_date.getHours()<10) 
		{ 	document.getElementById("la-hour").textContent= "0" + la_date.getHours() + "" }
else 	{	document.getElementById("la-hour").textContent=la_date.getHours() + "" }
	

	
if(auckland_date.getMinutes()<10) 
		{ 	document.getElementById("auckland-min").textContent= "0" + auckland_date.getMinutes() }
else 	{	document.getElementById("auckland-min").textContent=auckland_date.getMinutes() }

if(la_date.getMinutes()<10) 
		{ 	document.getElementById("la-min").textContent= "0" + la_date.getMinutes() }
else 	{	document.getElementById("la-min").textContent=la_date.getMinutes() }

}, 1000)

	
	


/***********************

	Portfolio
	
***********************/



    $(document.documentElement).keyup(function (event) {
      if (event.keyCode == 37){
        $('.cycle-slideshow').cycle('prev');
        $("iframe").each(function() {
            this.contentWindow.postMessage('{ "method": "pause" }', "http://player.vimeo.com");
        });
      }else if (event.keyCode == 39){
        $('.cycle-slideshow').cycle('next');
        $("iframe").each(function() {
            this.contentWindow.postMessage('{ "method": "pause" }', "http://player.vimeo.com");
        });
      }else if (event.keyCode == 38){
        $('.cycle-slideshow').cycle('prev');
        $("iframe").each(function() {
            this.contentWindow.postMessage('{ "method": "pause" }', "http://player.vimeo.com");
        });
      }else if (event.keyCode == 40){
        $('.cycle-slideshow').cycle('next');
        $("iframe").each(function() {
            this.contentWindow.postMessage('{ "method": "pause" }', "http://player.vimeo.com");
        });
      }
    });
	
	

/***********************

		Events 
	
***********************/




 $(".nav-open-button a").click(function(){
  $("#header").toggleClass("show");
});


/* Contact */


window.onmousewheel=function(){
	$("#contact").addClass("contact-hide")
  $("#header").removeClass("show");
  $(".subnav").removeClass("shift");
};

 $(".contact").click(function(){
  $("#contact").toggleClass("contact-hide");
  $(".nav-open-button a").click();
});

 $("#contact .close").click(function(){
  $("#contact").toggleClass("contact-hide");
});

$(".time-bar .los-angeles, .time-bar .auckland, .time-bar .seattle, .time-bar .austin, .time-bar .newyork, .time-bar .text").click(function(){
  $("#contact").toggleClass("contact-hide");
});

$("#footerContact").click(function(){
  $("#contact").toggleClass("contact-hide");
});

$('.contactLink').click(function() {
	$("#contact").toggleClass("contact-hide");
});


/* Nav */


 $(".menu-btn").click(function(){
  $(".main-nav").toggleClass("open");
});

 $(".subnav .menu-btn").click(function(){
  $("#header").toggleClass("show");
  $(".subnav").toggleClass("shift");
});


/* Project Info */


 $(".project-info-btn.openclose").click(function(){
  $(".project-info-wrapper").toggleClass("show");
});

 $(".project-info-btn.openclose").click(function(){
  $(".project-info-btn.openclose").toggleClass("rotate");
  $(".project-info-btn.hide").toggleClass("hidden");
});



setTimeout(function(){$('.project-info-wrapper').addClass('hide')}, 2500);






var $document = $(document),
    className = 'hasScrolled';

$document.scroll(function() {
  if ($document.scrollTop() >= 100) {
    $('#options').addClass('stuck');
  	$('#footerClocks').addClass('shrink');
	
    $('.filterTitle').addClass('stuck');
  } else {
    $('#options').removeClass('stuck');
  	$('#footerClocks').removeClass('shrink');
	
    $('.filterTitle').removeClass('stuck');
  }
});

$document.scroll(function() {
  if ($document.scrollTop() >= 100) {
	  $('#header').addClass('reveal');
  } else {
    $('#header').removeClass('reveal');
  }
});

$document.scroll(function() {
  if ($document.scrollTop() >= 350) {
	  $('#header').addClass('background');
  } else {
    $('#header').removeClass('background');
  }
});

$('#header').hover(function() {
	$('#header').removeClass('reveal');
});

$document.ready(function(){
	$('.horiz-carousel').waypoint(function(direction) { 
		$('.horiz-carousel').removeClass('hide'); 
	}, { offset : '75%'
	});
});

$document.ready(function(){
	$('.introduction').waypoint(function(direction) { 
		$('.hybrid-content-diagram').toggleClass('reveal'); 
	}, { offset : '50%'
	});
});






/*========================*
 *	HYBRID CONTENT SERVICES
 *========================*/




$('#strategy').click(function(){
	$('.gbcore .nav').addClass('top');
	$('.gbcore .gbcore-content').addClass('show');
	$('#service-holder').find('.current').removeClass('current');
	$('.serv-1').addClass('current');
});
$('#design').click(function(){
	$('.gbcore .nav').addClass('top');
	$('.gbcore .gbcore-content').addClass('show');
	$('#service-holder').find('.current').removeClass('current');
	$('.serv-2').addClass('current');
});
$('#creative').click(function(){
	$('.gbcore .nav').addClass('top');
	$('.gbcore .gbcore-content').addClass('show');
	$('#service-holder').find('.current').removeClass('current');
	$('.serv-3').addClass('current');
});
$('#digital').click(function(){
	$('.gbcore .nav').addClass('top');
	$('.gbcore .gbcore-content').addClass('show');
	$('#service-holder').find('.current').removeClass('current');
	$('.serv-4').addClass('current');
});
$('#media').click(function(){
	$('.gbcore .nav').addClass('top');
	$('.gbcore .gbcore-content').addClass('show');
	$('#service-holder').find('.current').removeClass('current');
	$('.serv-5').addClass('current');
});
$('#brand').click(function(){
	$('.gbcore .nav').addClass('top');
	$('.gbcore .gbcore-content').addClass('show');
	$('#service-holder').find('.current').removeClass('current');
	$('.serv-6').addClass('current');
});




$('#servBtn-1').click(function() {
	$('.gbcore .nav').addClass('top');
	$('.gbcore .gbcore-content').addClass('show');
	
	$('.serv-1').addClass('current');
	$('.serv-2').removeClass('current');
	$('.serv-3').removeClass('current');
	$('.serv-4').removeClass('current');
	$('.serv-5').removeClass('current');
	$('.serv-6').removeClass('current');
});
$('#servBtn-2').click(function() {
	$('.gbcore .nav').addClass('top');
	$('.gbcore .gbcore-content').addClass('show');
	
	$('.serv-1').removeClass('current');
	$('.serv-2').addClass('current');
	$('.serv-3').removeClass('current');
	$('.serv-4').removeClass('current');
	$('.serv-5').removeClass('current');
	$('.serv-6').removeClass('current');
});
$('#servBtn-3').click(function() {
	$('.gbcore .nav').addClass('top');
	$('.gbcore .gbcore-content').addClass('show');
	
	$('.serv-1').removeClass('current');
	$('.serv-2').removeClass('current');
	$('.serv-3').addClass('current');
	$('.serv-4').removeClass('current');
	$('.serv-5').removeClass('current');
	$('.serv-6').removeClass('current');
});
$('#servBtn-4').click(function() {
	$('.gbcore .nav').addClass('top');
	$('.gbcore .gbcore-content').addClass('show');
	
	$('.serv-1').removeClass('current');
	$('.serv-2').removeClass('current');
	$('.serv-3').removeClass('current');
	$('.serv-4').addClass('current');
	$('.serv-5').removeClass('current');
	$('.serv-6').removeClass('current');
});
$('#servBtn-5').click(function() {
	$('.gbcore .nav').addClass('top');
	$('.gbcore .gbcore-content').addClass('show');
	
	$('.serv-1').removeClass('current');
	$('.serv-2').removeClass('current');
	$('.serv-3').removeClass('current');
	$('.serv-4').removeClass('current');
	$('.serv-5').addClass('current');
	$('.serv-6').removeClass('current');
});
$('#servBtn-6').click(function() {
	$('.gbcore .nav').addClass('top');
	$('.gbcore .gbcore-content').addClass('show');
	
	$('.serv-1').removeClass('current');
	$('.serv-2').removeClass('current');
	$('.serv-3').removeClass('current');
	$('.serv-4').removeClass('current');
	$('.serv-5').removeClass('current');
	$('.serv-6').addClass('current');
});



$('#service-close').click(function() {
	$('.gbcore .nav').removeClass('top');
	$('.gbcore .gbcore-content').removeClass('show');
});


$('.nav').click(function() {

	if ($('#service-1').is('.current')) {
		$('li.serv1').addClass('current');
	} else {
		$('li.serv1').removeClass('current');
	}

	if ($('#service-2').is('.current')) {
		$('li.serv2').addClass('current');
	} else {
		$('li.serv2').removeClass('current');
	}
	

	if ($('#service-3').is('.current')) {
		$('li.serv3').addClass('current');
	} else {
		$('li.serv3').removeClass('current');
	}
	

	if ($('#service-4').is('.current')) {
		$('li.serv4').addClass('current');
	} else {
		$('li.serv4').removeClass('current');
	}
	

	if ($('#service-5').is('.current')) {
		$('li.serv5').addClass('current');
	} else {
		$('li.serv5').removeClass('current');
	}
	

	if ($('#service-6').is('.current')) {
		$('li.serv6').addClass('current');
	} else {
		$('li.serv6').removeClass('current');
	}
	
});




	

/***********************

	Pullquote Cycle
	
***********************/



$document.ready(function() {
	var $testimonialholder = $('#testimonials-holder');
	var $testimonial = $testimonialholder.find('.testimonial');
	
	if ($testimonial.length > 1) {
		
		$('#testimonial-cycle-link').on('click', function() {
			$currentTestimonial = $testimonialholder.find('.current');
			var $nextTestimonial = $currentTestimonial.next();
			if ($nextTestimonial.length == 0) {
				$nextTestimonial = $testimonialholder.find('.testimonial').first();
			}	
			$nextTestimonial.addClass('current');
			$currentTestimonial.removeClass('current');
			
			return false;
		})
		
	}
});



/***********************

	Service Cycle
	
***********************/



$document.ready(function() {
	var $serviceholder = $('#service-holder');
	var $service = $serviceholder.find('.service');
	
	if ($service.length > 1) {
		
		$('#service-cycle-link').on('click', function() {
			$currentService = $serviceholder.find('.current');
			var $nextService = $currentService.next();
			if ($nextService.length == 0) {
				$nextService = $serviceholder.find('.service').first();
			}	
			$nextService.addClass('current');
			$currentService.removeClass('current');
			
			return false;
		})
		
		$('#service-cycle-link-prev').on('click', function() {
			$currentService = $serviceholder.find('.current');
			var $prevService = $currentService.prev();
			if ($prevService.length == 0) {
				$prevService = $serviceholder.find('.service').last();
			}	
			$prevService.addClass('current');
			$currentService.removeClass('current');
			
			return false;
		})
		
	}
});




	
	
/*====================
	PARALLAX
====================*/



$document.scroll(function(){
	
	var yPos = -($document.scrollTop() / 6);	
	var coords = 'center '+ yPos + 'px';
	
	$('.bg-parallax').css({"background-position": coords });
	
});







$('#serviceGbCore').click(function() {
	$('#serviceGbCore').toggleClass('show');
	
	$('#serviceGbConnection').removeClass('show');
	$('#serviceGbAssets').removeClass('show');
});
$('#serviceGbConnection').click(function() {
	$('#serviceGbConnection').toggleClass('show');
	
	$('#serviceGbCore').removeClass('show');
	$('#serviceGbAssets').removeClass('show');
});
$('#serviceGbAssets').click(function() {
	$('#serviceGbAssets').toggleClass('show');
	
	$('#serviceGbConnection').removeClass('show');
	$('#serviceGbCore').removeClass('show');
});





/*====================
	Menu Button
====================*/



var toggle=true;
	$('.menu-container').click(function(){
		if(toggle===true){
			$('.menu-bar').stop().animate({
				top:36,
				width:23,
			},150,function(){
				$('.menu-bar').animate({
				},150,function(){
					$('#bar1').rotate({
						animateTo:-132,
						duration:250
					});
					$('#bar2').rotate({
						animateTo:-48,
						duration:250
					});
					$('#bar3').rotate({
						animateTo:-48,
						duration:250
					});
					
				})
			})
			toggle=false;
			return false;
		}
		else if(toggle===false){
			$('#bar1').stop().rotate({
				animateTo:0,
				duration:250
			});
			$('#bar2').stop().rotate({
				animateTo:0,
				duration:250
			});
			$('#bar3').stop().rotate({
				animateTo:0,
				duration:250
			})
			$('.menu-bar').stop().animate({
				width:19
			},251,function(){
				$('#bar1').animate({
					top:27
				},150)
				$('#bar2').animate({
					top:37
				},150)
				$('#bar3').animate({
					top:47
				},150)
			})
			toggle=true;
			return false;
		};
	});


// VERSION: 2.3 LAST UPDATE: 11.07.2013
/* 
 * Licensed under the MIT license: http://www.opensource.org/licenses/mit-license.php
 * 
 * Made by Wilq32, wilq32@gmail.com, Wroclaw, Poland, 01.2009
 * Website: http://code.google.com/p/jqueryrotate/ 
 */

(function($) {
    var supportedCSS,supportedCSSOrigin, styles=document.getElementsByTagName("head")[0].style,toCheck="transformProperty WebkitTransform OTransform msTransform MozTransform".split(" ");
    for (var a = 0; a < toCheck.length; a++) if (styles[toCheck[a]] !== undefined) { supportedCSS = toCheck[a]; }
    if (supportedCSS) {
      supportedCSSOrigin = supportedCSS.replace(/[tT]ransform/,"TransformOrigin");
      if (supportedCSSOrigin[0] == "T") supportedCSSOrigin[0] = "t";
    }

    // Bad eval to preven google closure to remove it from code o_O
    eval('IE = "v"=="\v"');

    jQuery.fn.extend({
        rotate:function(parameters)
        {
          if (this.length===0||typeof parameters=="undefined") return;
          if (typeof parameters=="number") parameters={angle:parameters};
          var returned=[];
          for (var i=0,i0=this.length;i<i0;i++)
          {
            var element=this.get(i);	
            if (!element.Wilq32 || !element.Wilq32.PhotoEffect) {

              var paramClone = $.extend(true, {}, parameters); 
              var newRotObject = new Wilq32.PhotoEffect(element,paramClone)._rootObj;

              returned.push($(newRotObject));
            }
            else {
              element.Wilq32.PhotoEffect._handleRotation(parameters);
            }
          }
          return returned;
        },
        getRotateAngle: function(){
          var ret = [];
          for (var i=0,i0=this.length;i<i0;i++)
          {
            var element=this.get(i);	
            if (element.Wilq32 && element.Wilq32.PhotoEffect) {
              ret[i] = element.Wilq32.PhotoEffect._angle;
            }
          }
          return ret;
        },
        stopRotate: function(){
          for (var i=0,i0=this.length;i<i0;i++)
          {
            var element=this.get(i);	
            if (element.Wilq32 && element.Wilq32.PhotoEffect) {
              clearTimeout(element.Wilq32.PhotoEffect._timer);
            }
          }
        }
    });

    // Library agnostic interface

    Wilq32=window.Wilq32||{};
    Wilq32.PhotoEffect=(function(){

      if (supportedCSS) {
        return function(img,parameters){
          img.Wilq32 = {
            PhotoEffect: this
          };

          this._img = this._rootObj = this._eventObj = img;
          this._handleRotation(parameters);
        }
      } else {
        return function(img,parameters) {
          this._img = img;
          this._onLoadDelegate = [parameters];

          this._rootObj=document.createElement('span');
          this._rootObj.style.display="inline-block";
          this._rootObj.Wilq32 = 
            {
              PhotoEffect: this
            };
          img.parentNode.insertBefore(this._rootObj,img);

          if (img.complete) {
            this._Loader();
          } else {
            var self=this;
            // TODO: Remove jQuery dependency
            jQuery(this._img).bind("load", function(){ self._Loader(); });
          }
        }
      }
    })();

    Wilq32.PhotoEffect.prototype = {
      _setupParameters : function (parameters){
        this._parameters = this._parameters || {};
        if (typeof this._angle !== "number") { this._angle = 0 ; }
        if (typeof parameters.angle==="number") { this._angle = parameters.angle; }
        this._parameters.animateTo = (typeof parameters.animateTo === "number") ? (parameters.animateTo) : (this._angle); 

        this._parameters.step = parameters.step || this._parameters.step || null;
        this._parameters.easing = parameters.easing || this._parameters.easing || this._defaultEasing;
        this._parameters.duration = parameters.duration || this._parameters.duration || 1000;
        this._parameters.callback = parameters.callback || this._parameters.callback || this._emptyFunction;
        this._parameters.center = parameters.center || this._parameters.center || ["50%","50%"];
        if (typeof this._parameters.center[0] == "string") {
          this._rotationCenterX = (parseInt(this._parameters.center[0],10) / 100) * this._imgWidth * this._aspectW;
        } else {
          this._rotationCenterX = this._parameters.center[0];
        }
        if (typeof this._parameters.center[1] == "string") {
          this._rotationCenterY = (parseInt(this._parameters.center[1],10) / 100) * this._imgHeight * this._aspectH;
        } else {
          this._rotationCenterY = this._parameters.center[1];
        }

        if (parameters.bind && parameters.bind != this._parameters.bind) { this._BindEvents(parameters.bind); }
      },
      _emptyFunction: function(){},
      _defaultEasing: function (x, t, b, c, d) { return -c * ((t=t/d-1)*t*t*t - 1) + b }, 
      _handleRotation : function(parameters, dontcheck){
        if (!supportedCSS && !this._img.complete && !dontcheck) {
          this._onLoadDelegate.push(parameters);
          return;
        }
        this._setupParameters(parameters);
        if (this._angle==this._parameters.animateTo) {
          this._rotate(this._angle);
        }
        else { 
          this._animateStart();          
        }
      },

      _BindEvents:function(events){
        if (events && this._eventObj) 
        {
          // Unbinding previous Events
          if (this._parameters.bind){
            var oldEvents = this._parameters.bind;
            for (var a in oldEvents) if (oldEvents.hasOwnProperty(a)) 
              // TODO: Remove jQuery dependency
              jQuery(this._eventObj).unbind(a,oldEvents[a]);
          }

        this._parameters.bind = events;
        for (var a in events) if (events.hasOwnProperty(a)) 
          // TODO: Remove jQuery dependency
          jQuery(this._eventObj).bind(a,events[a]);
        }
      },

      _Loader:(function()
      {
        if (IE)
          return function() {
            var width=this._img.width;
            var height=this._img.height;
            this._imgWidth = width;
            this._imgHeight = height; 
            this._img.parentNode.removeChild(this._img);

            this._vimage = this.createVMLNode('image');
            this._vimage.src=this._img.src;
            this._vimage.style.height=height+"px";
            this._vimage.style.width=width+"px";
            this._vimage.style.position="absolute"; // FIXES IE PROBLEM - its only rendered if its on absolute position!
            this._vimage.style.top = "0px";
            this._vimage.style.left = "0px";
            this._aspectW = this._aspectH = 1;

            /* Group minifying a small 1px precision problem when rotating object */
            this._container = this.createVMLNode('group');
            this._container.style.width=width;
            this._container.style.height=height;
            this._container.style.position="absolute";
            this._container.style.top="0px";
            this._container.style.left="0px";
            this._container.setAttribute('coordsize',width-1+','+(height-1)); // This -1, -1 trying to fix ugly problem with small displacement on IE
            this._container.appendChild(this._vimage);

            this._rootObj.appendChild(this._container);
            this._rootObj.style.position="relative"; // FIXES IE PROBLEM
            this._rootObj.style.width=width+"px";
            this._rootObj.style.height=height+"px";
            this._rootObj.setAttribute('id',this._img.getAttribute('id'));
            this._rootObj.className=this._img.className;			
            this._eventObj = this._rootObj;	
            var parameters;
            while (parameters = this._onLoadDelegate.shift()) {
              this._handleRotation(parameters, true);	
            }
          }
          else return function () {
            this._rootObj.setAttribute('id',this._img.getAttribute('id'));
            this._rootObj.className=this._img.className;

            this._imgWidth=this._img.naturalWidth;
            this._imgHeight=this._img.naturalHeight;
            var _widthMax=Math.sqrt((this._imgHeight)*(this._imgHeight) + (this._imgWidth) * (this._imgWidth));
            this._width = _widthMax * 3;
            this._height = _widthMax * 3;

            this._aspectW = this._img.offsetWidth/this._img.naturalWidth;
            this._aspectH = this._img.offsetHeight/this._img.naturalHeight;

            this._img.parentNode.removeChild(this._img);	


            this._canvas=document.createElement('canvas');
            this._canvas.setAttribute('width',this._width);
            this._canvas.style.position="relative";
            this._canvas.style.left = -this._img.height * this._aspectW + "px";
            this._canvas.style.top = -this._img.width * this._aspectH + "px";
            this._canvas.Wilq32 = this._rootObj.Wilq32;

            this._rootObj.appendChild(this._canvas);
            this._rootObj.style.width=this._img.width*this._aspectW+"px";
            this._rootObj.style.height=this._img.height*this._aspectH+"px";
            this._eventObj = this._canvas;

            this._cnv=this._canvas.getContext('2d');
            var parameters;
            while (parameters = this._onLoadDelegate.shift()) {
              this._handleRotation(parameters, true);	
            }
          }
      })(),

      _animateStart:function()
      {	
        if (this._timer) {
          clearTimeout(this._timer);
        }
        this._animateStartTime = +new Date;
        this._animateStartAngle = this._angle;
        this._animate();
      },
      _animate:function()
      {
        var actualTime = +new Date;
        var checkEnd = actualTime - this._animateStartTime > this._parameters.duration;

        // TODO: Bug for animatedGif for static rotation ? (to test)
        if (checkEnd && !this._parameters.animatedGif) 
        {
          clearTimeout(this._timer);
        }
        else 
        {
          if (this._canvas||this._vimage||this._img) {
            var angle = this._parameters.easing(0, actualTime - this._animateStartTime, this._animateStartAngle, this._parameters.animateTo - this._animateStartAngle, this._parameters.duration);
            this._rotate((~~(angle*10))/10);
          }
          if (this._parameters.step) {
            this._parameters.step(this._angle);
          }
          var self = this;
          this._timer = setTimeout(function()
          {
            self._animate.call(self);
          }, 10);
        }

      // To fix Bug that prevents using recursive function in callback I moved this function to back
      if (this._parameters.callback && checkEnd){
        this._angle = this._parameters.animateTo;
        this._rotate(this._angle);
        this._parameters.callback.call(this._rootObj);
      }
      },

      _rotate : (function()
      {
        var rad = Math.PI/180;
        if (IE)
          return function(angle)
        {
          this._angle = angle;
          this._container.style.rotation=(angle%360)+"deg";
          this._vimage.style.top = -(this._rotationCenterY - this._imgHeight/2) + "px";
          this._vimage.style.left = -(this._rotationCenterX - this._imgWidth/2) + "px";
          this._container.style.top = this._rotationCenterY - this._imgHeight/2 + "px";
          this._container.style.left = this._rotationCenterX - this._imgWidth/2 + "px";

        }
          else if (supportedCSS)
          return function(angle){
            this._angle = angle;
            this._img.style[supportedCSS]="rotate("+(angle%360)+"deg)";
            this._img.style[supportedCSSOrigin]=this._parameters.center.join(" ");
          }
          else 
            return function(angle)
          {
            this._angle = angle;
            angle=(angle%360)* rad;
            // clear canvas	
            this._canvas.width = this._width;//+this._widthAdd;
            this._canvas.height = this._height;//+this._heightAdd;

            // REMEMBER: all drawings are read from backwards.. so first function is translate, then rotate, then translate, translate..
            this._cnv.translate(this._imgWidth*this._aspectW,this._imgHeight*this._aspectH);	// at least center image on screen
            this._cnv.translate(this._rotationCenterX,this._rotationCenterY);			// we move image back to its orginal 
            this._cnv.rotate(angle);										// rotate image
            this._cnv.translate(-this._rotationCenterX,-this._rotationCenterY);		// move image to its center, so we can rotate around its center
            this._cnv.scale(this._aspectW,this._aspectH); // SCALE - if needed ;)
            this._cnv.drawImage(this._img, 0, 0);							// First - we draw image
          }

      })()
      }

      if (IE)
      {
        Wilq32.PhotoEffect.prototype.createVMLNode=(function(){
          document.createStyleSheet().addRule(".rvml", "behavior:url(#default#VML)");
          try {
            !document.namespaces.rvml && document.namespaces.add("rvml", "urn:schemas-microsoft-com:vml");
            return function (tagName) {
              return document.createElement('<rvml:' + tagName + ' class="rvml">');
            };
          } catch (e) {
            return function (tagName) {
              return document.createElement('<' + tagName + ' xmlns="urn:schemas-microsoft.com:vml" class="rvml">');
            };
          }		
        })();
      }

})(jQuery);




/*====================
	DRINKING
====================*/



/*==  GAUGE1  ==*/
$document.ready(function(){
$('#drinking').waypoint(function() {	
	
	var percentage = document.getElementById("percentage1");
	var canvas = document.getElementById('gauge1');
	var ctx = canvas.getContext('2d');
	var new_degrees = 320;
	var animation_loop, redraw_loop;
	var color = "#ece74a";
	var bgcolor = "#000";
	var degrees = 0;
	var difference = 0;
	var text;
	
	
	function init() {
		ctx.clearRect(0, 0, 150, 150);
		ctx.beginPath();
		ctx.strokeStyle = bgcolor;
		ctx.lineWidth = 3;
		ctx.arc(75, 75, 70, 0, Math.PI*2, false); 
		ctx.stroke();
		
		var radians = degrees * Math.PI / 180;
		ctx.beginPath();
		ctx.strokeStyle = color;
		ctx.lineWidth = 3;
		ctx.arc(75, 75, 70, 0 - 90*Math.PI/180, radians - 90*Math.PI/180, false); 
		ctx.stroke();
		
		ctx.fillStyle = bgcolor;
		ctx.font = "50px arial";
		text = Math.floor(degrees/360*100) + "%";
		
		percentage.innerHTML = "<h3>" + Math.floor(degrees/360*100) + "%</h3>";
	}
	function draw() {
		if(typeof animation_loop != undefined) clearInterval(animation_loop);
		difference = new_degrees - degrees;
		animation_loop = setInterval(animate_to, 1000/difference);
	}
	
	function animate_to() {
		if(degrees == new_degrees) 
			clearInterval(animation_loop);
		
		if(degrees < new_degrees)
			degrees++;
		else
			degrees--;
			
		init();
	}
	draw();
	redraw_loop = setInterval(draw, 10000);
	
}, {offset: '50%'});

/*==  GAUGE2  ==*/

$('#drinking').waypoint(function() {	
	
	var percentage = document.getElementById("percentage2");
	var canvas = document.getElementById('gauge2');
	var ctx = canvas.getContext('2d');
	var new_degrees = 270;
	var animation_loop, redraw_loop;
	var color = "#ece74a";
	var bgcolor = "#000";
	var degrees = 0;
	var difference = 0;
	var text;
	
	
	function init() {
		ctx.clearRect(0, 0, 150, 150);
		ctx.beginPath();
		ctx.strokeStyle = bgcolor;
		ctx.lineWidth = 3;
		ctx.arc(75, 75, 70, 0, Math.PI*2, false); 
		ctx.stroke();
		
		var radians = degrees * Math.PI / 180;
		ctx.beginPath();
		ctx.strokeStyle = color;
		ctx.lineWidth = 3;
		ctx.arc(75, 75, 70, 0 - 90*Math.PI/180, radians - 90*Math.PI/180, false); 
		ctx.stroke();
		
		ctx.fillStyle = bgcolor;
		ctx.font = "50px arial";
		text = Math.floor(degrees/360*100) + "%";
		
		percentage.innerHTML = "<h3>" + Math.floor(degrees/360*100) + "%</h3>";
	}
	function draw() {
		if(typeof animation_loop != undefined) clearInterval(animation_loop);
		difference = new_degrees - degrees;
		animation_loop = setInterval(animate_to, 1000/difference);
	}
	
	function animate_to() {
		if(degrees == new_degrees) 
			clearInterval(animation_loop);
		
		if(degrees < new_degrees)
			degrees++;
		else
			degrees--;
			
		init();
	}
	draw();
	redraw_loop = setInterval(draw, 10000);
	
}, {offset: '50%'});

/*==  GAUGE3  ==*/

$('#drinking').waypoint(function() {
	
	var percentage = document.getElementById("percentage3");
	var canvas = document.getElementById('gauge3');
	var ctx = canvas.getContext('2d');
	var new_degrees = 230;
	var animation_loop, redraw_loop;
	var color = "#ece74a";
	var bgcolor = "#000";
	var degrees = 0;
	var difference = 0;
	var text;
	
	
	function init() {
		ctx.clearRect(0, 0, 150, 150);
		ctx.beginPath();
		ctx.strokeStyle = bgcolor;
		ctx.lineWidth = 3;
		ctx.arc(75, 75, 70, 0, Math.PI*2, false); 
		ctx.stroke();
		
		var radians = degrees * Math.PI / 180;
		ctx.beginPath();
		ctx.strokeStyle = color;
		ctx.lineWidth = 3;
		ctx.arc(75, 75, 70, 0 - 90*Math.PI/180, radians - 90*Math.PI/180, false); 
		ctx.stroke();
		
		ctx.fillStyle = bgcolor;
		ctx.font = "50px arial";
		text = Math.floor(degrees/360*100) + "%";
		
		percentage.innerHTML = "<h3>" + Math.floor(degrees/360*100) + "%</h3>";
	}
	function draw() {
		if(typeof animation_loop != undefined) clearInterval(animation_loop);
		difference = new_degrees - degrees;
		animation_loop = setInterval(animate_to, 1000/difference);
	}
	
	function animate_to() {
		if(degrees == new_degrees) 
			clearInterval(animation_loop);
		
		if(degrees < new_degrees)
			degrees++;
		else
			degrees--;
			
		init();
	}
	draw();
	redraw_loop = setInterval(draw, 10000);
	
}, {offset: '50%'});

/*==  GAUGE4  ==*/

$('#drinking').waypoint(function() {	
	
	var percentage = document.getElementById("percentage4");
	var canvas = document.getElementById('gauge4');
	var ctx = canvas.getContext('2d');
	var new_degrees = 300;
	var animation_loop, redraw_loop;
	var color = "#ece74a";
	var bgcolor = "#000";
	var degrees = 0;
	var difference = 0;
	var text;
	
	
	function init() {
		ctx.clearRect(0, 0, 150, 150);
		ctx.beginPath();
		ctx.strokeStyle = bgcolor;
		ctx.lineWidth = 3;
		ctx.arc(75, 75, 70, 0, Math.PI*2, false); 
		ctx.stroke();
		
		var radians = degrees * Math.PI / 180;
		ctx.beginPath();
		ctx.strokeStyle = color;
		ctx.lineWidth = 3;
		ctx.arc(75, 75, 70, 0 - 90*Math.PI/180, radians - 90*Math.PI/180, false); 
		ctx.stroke();
		
		ctx.fillStyle = bgcolor;
		ctx.font = "50px arial";
		text = Math.floor(degrees/360*100) + "%";
		
		percentage.innerHTML = "<h3>" + Math.floor(degrees/360*100) + "%</h3>";
	}
	function draw() {
		if(typeof animation_loop != undefined) clearInterval(animation_loop);
		difference = new_degrees - degrees;
		animation_loop = setInterval(animate_to, 1000/difference);
	}
	
	function animate_to() {
		if(degrees == new_degrees) 
			clearInterval(animation_loop);
		
		if(degrees < new_degrees)
			degrees++;
		else
			degrees--;
			
		init();
	}
	draw();
	redraw_loop = setInterval(draw, 10000);

}, {offset: '50%'});
});


/*====================
	EATING
====================*/



/*==  GAUGE5  ==*/

$(document).on('animated.slides', function(slide) {
	if ($('#eating').css('display') === 'block') {	
	
		var percentage = document.getElementById("percentage5");
		var canvas = document.getElementById('gauge5');
		var ctx = canvas.getContext('2d');
		var new_degrees = 220;
		var animation_loop, redraw_loop;
		var color = "#ece74a";
		var bgcolor = "#000";
		var degrees = 0;
		var difference = 0;
		var text;
		
		
		function init() {
			ctx.clearRect(0, 0, 150, 150);
			ctx.beginPath();
			ctx.strokeStyle = bgcolor;
			ctx.lineWidth = 3;
			ctx.arc(75, 75, 70, 0, Math.PI*2, false); 
			ctx.stroke();
			
			var radians = degrees * Math.PI / 180;
			ctx.beginPath();
			ctx.strokeStyle = color;
			ctx.lineWidth = 3;
			ctx.arc(75, 75, 70, 0 - 90*Math.PI/180, radians - 90*Math.PI/180, false); 
			ctx.stroke();
			
			ctx.fillStyle = bgcolor;
			ctx.font = "50px arial";
			text = Math.floor(degrees/360*100) + "%";
			
			percentage.innerHTML = "<h3>" + Math.floor(degrees/360*100) + "%</h3>";
		}
		function draw() {
			if(typeof animation_loop != undefined) clearInterval(animation_loop);
			difference = new_degrees - degrees;
			animation_loop = setInterval(animate_to, 1000/difference);
		}
		
		function animate_to() {
			if(degrees == new_degrees) 
				clearInterval(animation_loop);
			
			if(degrees < new_degrees)
				degrees++;
			else
				degrees--;
				
			init();
		}
		draw();
		redraw_loop = setInterval(draw, 10000);
		
	}
});

/*==  GAUGE6  ==*/

$(document).on('animated.slides', function(slide) {
	if ($('#eating').css('display') === 'block') {
	
		var percentage = document.getElementById("percentage6");
		var canvas = document.getElementById('gauge6');
		var ctx = canvas.getContext('2d');
		var new_degrees = 290;
		var animation_loop, redraw_loop;
		var color = "#ece74a";
		var bgcolor = "#000";
		var degrees = 0;
		var difference = 0;
		var text;
		
		
		function init() {
			ctx.clearRect(0, 0, 150, 150);
			ctx.beginPath();
			ctx.strokeStyle = bgcolor;
			ctx.lineWidth = 3;
			ctx.arc(75, 75, 70, 0, Math.PI*2, false); 
			ctx.stroke();
			
			var radians = degrees * Math.PI / 180;
			ctx.beginPath();
			ctx.strokeStyle = color;
			ctx.lineWidth = 3;
			ctx.arc(75, 75, 70, 0 - 90*Math.PI/180, radians - 90*Math.PI/180, false); 
			ctx.stroke();
			
			ctx.fillStyle = bgcolor;
			ctx.font = "50px arial";
			text = Math.floor(degrees/360*100) + "%";
			
			percentage.innerHTML = "<h3>" + Math.floor(degrees/360*100) + "%</h3>";
		}
		function draw() {
			if(typeof animation_loop != undefined) clearInterval(animation_loop);
			difference = new_degrees - degrees;
			animation_loop = setInterval(animate_to, 1000/difference);
		}
		
		function animate_to() {
			if(degrees == new_degrees) 
				clearInterval(animation_loop);
			
			if(degrees < new_degrees)
				degrees++;
			else
				degrees--;
				
			init();
		}
		draw();
		redraw_loop = setInterval(draw, 10000);
		
	}
});

/*==  GAUGE7  ==*/

$(document).on('animated.slides', function(slide) {
	if ($('#eating').css('display') === 'block') {
	
		var percentage = document.getElementById("percentage7");
		var canvas = document.getElementById('gauge7');
		var ctx = canvas.getContext('2d');
		var new_degrees = 120;
		var animation_loop, redraw_loop;
		var color = "#ece74a";
		var bgcolor = "#000";
		var degrees = 0;
		var difference = 0;
		var text;
		
		
		function init() {
			ctx.clearRect(0, 0, 150, 150);
			ctx.beginPath();
			ctx.strokeStyle = bgcolor;
			ctx.lineWidth = 3;
			ctx.arc(75, 75, 70, 0, Math.PI*2, false); 
			ctx.stroke();
			
			var radians = degrees * Math.PI / 180;
			ctx.beginPath();
			ctx.strokeStyle = color;
			ctx.lineWidth = 3;
			ctx.arc(75, 75, 70, 0 - 90*Math.PI/180, radians - 90*Math.PI/180, false); 
			ctx.stroke();
			
			ctx.fillStyle = bgcolor;
			ctx.font = "50px arial";
			text = Math.floor(degrees/360*100) + "%";
			
			percentage.innerHTML = "<h3>" + Math.floor(degrees/360*100) + "%</h3>";
		}
		function draw() {
			if(typeof animation_loop != undefined) clearInterval(animation_loop);
			difference = new_degrees - degrees;
			animation_loop = setInterval(animate_to, 1000/difference);
		}
		
		function animate_to() {
			if(degrees == new_degrees) 
				clearInterval(animation_loop);
			
			if(degrees < new_degrees)
				degrees++;
			else
				degrees--;
				
			init();
		}
		draw();
		redraw_loop = setInterval(draw, 10000);
		
	}
});

/*==  GAUGE8  ==*/


$(document).on('animated.slides', function(slide) {
	if ($('#eating').css('display') === 'block') {
		
		var percentage = document.getElementById("percentage8");
		var canvas = document.getElementById('gauge8');
		var ctx = canvas.getContext('2d');
		var new_degrees = 320;
		var animation_loop, redraw_loop;
		var color = "#ece74a";
		var bgcolor = "#000";
		var degrees = 0;
		var difference = 0;
		var text;
		
		
		function init() {
			ctx.clearRect(0, 0, 150, 150);
			ctx.beginPath();
			ctx.strokeStyle = bgcolor;
			ctx.lineWidth = 3;
			ctx.arc(75, 75, 70, 0, Math.PI*2, false); 
			ctx.stroke();
			
			var radians = degrees * Math.PI / 180;
			ctx.beginPath();
			ctx.strokeStyle = color;
			ctx.lineWidth = 3;
			ctx.arc(75, 75, 70, 0 - 90*Math.PI/180, radians - 90*Math.PI/180, false); 
			ctx.stroke();
			
			ctx.fillStyle = bgcolor;
			ctx.font = "50px arial";
			text = Math.floor(degrees/360*100) + "%";
			
			percentage.innerHTML = "<h3>" + Math.floor(degrees/360*100) + "%</h3>";
		}
		function draw() {
			if(typeof animation_loop != undefined) clearInterval(animation_loop);
			difference = new_degrees - degrees;
			animation_loop = setInterval(animate_to, 1000/difference);
		}
		
		function animate_to() {
			if(degrees == new_degrees) 
				clearInterval(animation_loop);
			
			if(degrees < new_degrees)
				degrees++;
			else
				degrees--;
				
			init();
		}
		draw();
		redraw_loop = setInterval(draw, 10000);
	
	}
});



/*====================
	LISTENING
====================*/



/*==  GAUGE9  ==*/

$(document).on('animated.slides', function(slide) {
	if ($('#listening').css('display') === 'block') {	
	
		var percentage = document.getElementById("percentage9");
		var canvas = document.getElementById('gauge9');
		var ctx = canvas.getContext('2d');
		var new_degrees = 220;
		var animation_loop, redraw_loop;
		var color = "#ece74a";
		var bgcolor = "#000";
		var degrees = 0;
		var difference = 0;
		var text;
		
		
		function init() {
			ctx.clearRect(0, 0, 150, 150);
			ctx.beginPath();
			ctx.strokeStyle = bgcolor;
			ctx.lineWidth = 3;
			ctx.arc(75, 75, 70, 0, Math.PI*2, false); 
			ctx.stroke();
			
			var radians = degrees * Math.PI / 180;
			ctx.beginPath();
			ctx.strokeStyle = color;
			ctx.lineWidth = 3;
			ctx.arc(75, 75, 70, 0 - 90*Math.PI/180, radians - 90*Math.PI/180, false); 
			ctx.stroke();
			
			ctx.fillStyle = bgcolor;
			ctx.font = "50px arial";
			text = Math.floor(degrees/360*100) + "%";
			
			percentage.innerHTML = "<h3>" + Math.floor(degrees/360*100) + "%</h3>";
		}
		function draw() {
			if(typeof animation_loop != undefined) clearInterval(animation_loop);
			difference = new_degrees - degrees;
			animation_loop = setInterval(animate_to, 1000/difference);
		}
		
		function animate_to() {
			if(degrees == new_degrees) 
				clearInterval(animation_loop);
			
			if(degrees < new_degrees)
				degrees++;
			else
				degrees--;
				
			init();
		}
		draw();
		redraw_loop = setInterval(draw, 10000);
		
	}
});

/*==  GAUGE10  ==*/

$(document).on('animated.slides', function(slide) {
	if ($('#listening').css('display') === 'block') {
	
		var percentage = document.getElementById("percentage10");
		var canvas = document.getElementById('gauge10');
		var ctx = canvas.getContext('2d');
		var new_degrees = 290;
		var animation_loop, redraw_loop;
		var color = "#ece74a";
		var bgcolor = "#000";
		var degrees = 0;
		var difference = 0;
		var text;
		
		
		function init() {
			ctx.clearRect(0, 0, 150, 150);
			ctx.beginPath();
			ctx.strokeStyle = bgcolor;
			ctx.lineWidth = 3;
			ctx.arc(75, 75, 70, 0, Math.PI*2, false); 
			ctx.stroke();
			
			var radians = degrees * Math.PI / 180;
			ctx.beginPath();
			ctx.strokeStyle = color;
			ctx.lineWidth = 3;
			ctx.arc(75, 75, 70, 0 - 90*Math.PI/180, radians - 90*Math.PI/180, false); 
			ctx.stroke();
			
			ctx.fillStyle = bgcolor;
			ctx.font = "50px arial";
			text = Math.floor(degrees/360*100) + "%";
			
			percentage.innerHTML = "<h3>" + Math.floor(degrees/360*100) + "%</h3>";
		}
		function draw() {
			if(typeof animation_loop != undefined) clearInterval(animation_loop);
			difference = new_degrees - degrees;
			animation_loop = setInterval(animate_to, 1000/difference);
		}
		
		function animate_to() {
			if(degrees == new_degrees) 
				clearInterval(animation_loop);
			
			if(degrees < new_degrees)
				degrees++;
			else
				degrees--;
				
			init();
		}
		draw();
		redraw_loop = setInterval(draw, 10000);
		
	}
});

/*==  GAUGE11  ==*/

$(document).on('animated.slides', function(slide) {
	if ($('#listening').css('display') === 'block') {
	
		var percentage = document.getElementById("percentage11");
		var canvas = document.getElementById('gauge11');
		var ctx = canvas.getContext('2d');
		var new_degrees = 120;
		var animation_loop, redraw_loop;
		var color = "#ece74a";
		var bgcolor = "#000";
		var degrees = 0;
		var difference = 0;
		var text;
		
		
		function init() {
			ctx.clearRect(0, 0, 150, 150);
			ctx.beginPath();
			ctx.strokeStyle = bgcolor;
			ctx.lineWidth = 3;
			ctx.arc(75, 75, 70, 0, Math.PI*2, false); 
			ctx.stroke();
			
			var radians = degrees * Math.PI / 180;
			ctx.beginPath();
			ctx.strokeStyle = color;
			ctx.lineWidth = 3;
			ctx.arc(75, 75, 70, 0 - 90*Math.PI/180, radians - 90*Math.PI/180, false); 
			ctx.stroke();
			
			ctx.fillStyle = bgcolor;
			ctx.font = "50px arial";
			text = Math.floor(degrees/360*100) + "%";
			
			percentage.innerHTML = "<h3>" + Math.floor(degrees/360*100) + "%</h3>";
		}
		function draw() {
			if(typeof animation_loop != undefined) clearInterval(animation_loop);
			difference = new_degrees - degrees;
			animation_loop = setInterval(animate_to, 1000/difference);
		}
		
		function animate_to() {
			if(degrees == new_degrees) 
				clearInterval(animation_loop);
			
			if(degrees < new_degrees)
				degrees++;
			else
				degrees--;
				
			init();
		}
		draw();
		redraw_loop = setInterval(draw, 10000);
		
	}
});

/*==  GAUGE12  ==*/


$(document).on('animated.slides', function(slide) {
	if ($('#listening').css('display') === 'block') {
		
		var percentage = document.getElementById("percentage12");
		var canvas = document.getElementById('gauge12');
		var ctx = canvas.getContext('2d');
		var new_degrees = 320;
		var animation_loop, redraw_loop;
		var color = "#ece74a";
		var bgcolor = "#000";
		var degrees = 0;
		var difference = 0;
		var text;
		
		
		function init() {
			ctx.clearRect(0, 0, 150, 150);
			ctx.beginPath();
			ctx.strokeStyle = bgcolor;
			ctx.lineWidth = 3;
			ctx.arc(75, 75, 70, 0, Math.PI*2, false); 
			ctx.stroke();
			
			var radians = degrees * Math.PI / 180;
			ctx.beginPath();
			ctx.strokeStyle = color;
			ctx.lineWidth = 3;
			ctx.arc(75, 75, 70, 0 - 90*Math.PI/180, radians - 90*Math.PI/180, false); 
			ctx.stroke();
			
			ctx.fillStyle = bgcolor;
			ctx.font = "50px arial";
			text = Math.floor(degrees/360*100) + "%";
			
			percentage.innerHTML = "<h3>" + Math.floor(degrees/360*100) + "%</h3>";
		}
		function draw() {
			if(typeof animation_loop != undefined) clearInterval(animation_loop);
			difference = new_degrees - degrees;
			animation_loop = setInterval(animate_to, 1000/difference);
		}
		
		function animate_to() {
			if(degrees == new_degrees) 
				clearInterval(animation_loop);
			
			if(degrees < new_degrees)
				degrees++;
			else
				degrees--;
				
			init();
		}
		draw();
		redraw_loop = setInterval(draw, 10000);
	
	}
});




/*====================
	WATCHING
====================*/



/*==  GAUGE13  ==*/

$(document).on('animated.slides', function(slide) {
	if ($('#watching').css('display') === 'block') {	
	
		var percentage = document.getElementById("percentage13");
		var canvas = document.getElementById('gauge13');
		var ctx = canvas.getContext('2d');
		var new_degrees = 220;
		var animation_loop, redraw_loop;
		var color = "#ece74a";
		var bgcolor = "#000";
		var degrees = 0;
		var difference = 0;
		var text;
		
		
		function init() {
			ctx.clearRect(0, 0, 150, 150);
			ctx.beginPath();
			ctx.strokeStyle = bgcolor;
			ctx.lineWidth = 3;
			ctx.arc(75, 75, 70, 0, Math.PI*2, false); 
			ctx.stroke();
			
			var radians = degrees * Math.PI / 180;
			ctx.beginPath();
			ctx.strokeStyle = color;
			ctx.lineWidth = 3;
			ctx.arc(75, 75, 70, 0 - 90*Math.PI/180, radians - 90*Math.PI/180, false); 
			ctx.stroke();
			
			ctx.fillStyle = bgcolor;
			ctx.font = "50px arial";
			text = Math.floor(degrees/360*100) + "%";
			
			percentage.innerHTML = "<h3>" + Math.floor(degrees/360*100) + "%</h3>";
		}
		function draw() {
			if(typeof animation_loop != undefined) clearInterval(animation_loop);
			difference = new_degrees - degrees;
			animation_loop = setInterval(animate_to, 1000/difference);
		}
		
		function animate_to() {
			if(degrees == new_degrees) 
				clearInterval(animation_loop);
			
			if(degrees < new_degrees)
				degrees++;
			else
				degrees--;
				
			init();
		}
		draw();
		redraw_loop = setInterval(draw, 10000);
		
	}
});

/*==  GAUGE14  ==*/

$(document).on('animated.slides', function(slide) {
	if ($('#watching').css('display') === 'block') {
	
		var percentage = document.getElementById("percentage14");
		var canvas = document.getElementById('gauge14');
		var ctx = canvas.getContext('2d');
		var new_degrees = 290;
		var animation_loop, redraw_loop;
		var color = "#ece74a";
		var bgcolor = "#000";
		var degrees = 0;
		var difference = 0;
		var text;
		
		
		function init() {
			ctx.clearRect(0, 0, 150, 150);
			ctx.beginPath();
			ctx.strokeStyle = bgcolor;
			ctx.lineWidth = 3;
			ctx.arc(75, 75, 70, 0, Math.PI*2, false); 
			ctx.stroke();
			
			var radians = degrees * Math.PI / 180;
			ctx.beginPath();
			ctx.strokeStyle = color;
			ctx.lineWidth = 3;
			ctx.arc(75, 75, 70, 0 - 90*Math.PI/180, radians - 90*Math.PI/180, false); 
			ctx.stroke();
			
			ctx.fillStyle = bgcolor;
			ctx.font = "50px arial";
			text = Math.floor(degrees/360*100) + "%";
			
			percentage.innerHTML = "<h3>" + Math.floor(degrees/360*100) + "%</h3>";
		}
		function draw() {
			if(typeof animation_loop != undefined) clearInterval(animation_loop);
			difference = new_degrees - degrees;
			animation_loop = setInterval(animate_to, 1000/difference);
		}
		
		function animate_to() {
			if(degrees == new_degrees) 
				clearInterval(animation_loop);
			
			if(degrees < new_degrees)
				degrees++;
			else
				degrees--;
				
			init();
		}
		draw();
		redraw_loop = setInterval(draw, 10000);
		
	}
});

/*==  GAUGE15  ==*/

$(document).on('animated.slides', function(slide) {
	if ($('#watching').css('display') === 'block') {
	
		var percentage = document.getElementById("percentage15");
		var canvas = document.getElementById('gauge15');
		var ctx = canvas.getContext('2d');
		var new_degrees = 120;
		var animation_loop, redraw_loop;
		var color = "#ece74a";
		var bgcolor = "#000";
		var degrees = 0;
		var difference = 0;
		var text;
		
		
		function init() {
			ctx.clearRect(0, 0, 150, 150);
			ctx.beginPath();
			ctx.strokeStyle = bgcolor;
			ctx.lineWidth = 3;
			ctx.arc(75, 75, 70, 0, Math.PI*2, false); 
			ctx.stroke();
			
			var radians = degrees * Math.PI / 180;
			ctx.beginPath();
			ctx.strokeStyle = color;
			ctx.lineWidth = 3;
			ctx.arc(75, 75, 70, 0 - 90*Math.PI/180, radians - 90*Math.PI/180, false); 
			ctx.stroke();
			
			ctx.fillStyle = bgcolor;
			ctx.font = "50px arial";
			text = Math.floor(degrees/360*100) + "%";
			
			percentage.innerHTML = "<h3>" + Math.floor(degrees/360*100) + "%</h3>";
		}
		function draw() {
			if(typeof animation_loop != undefined) clearInterval(animation_loop);
			difference = new_degrees - degrees;
			animation_loop = setInterval(animate_to, 1000/difference);
		}
		
		function animate_to() {
			if(degrees == new_degrees) 
				clearInterval(animation_loop);
			
			if(degrees < new_degrees)
				degrees++;
			else
				degrees--;
				
			init();
		}
		draw();
		redraw_loop = setInterval(draw, 10000);
		
	}
});

/*==  GAUGE16  ==*/


$(document).on('animated.slides', function(slide) {
	if ($('#watching').css('display') === 'block') {
		
		var percentage = document.getElementById("percentage16");
		var canvas = document.getElementById('gauge16');
		var ctx = canvas.getContext('2d');
		var new_degrees = 320;
		var animation_loop, redraw_loop;
		var color = "#ece74a";
		var bgcolor = "#000";
		var degrees = 0;
		var difference = 0;
		var text;
		
		
		function init() {
			ctx.clearRect(0, 0, 150, 150);
			ctx.beginPath();
			ctx.strokeStyle = bgcolor;
			ctx.lineWidth = 3;
			ctx.arc(75, 75, 70, 0, Math.PI*2, false); 
			ctx.stroke();
			
			var radians = degrees * Math.PI / 180;
			ctx.beginPath();
			ctx.strokeStyle = color;
			ctx.lineWidth = 3;
			ctx.arc(75, 75, 70, 0 - 90*Math.PI/180, radians - 90*Math.PI/180, false); 
			ctx.stroke();
			
			ctx.fillStyle = bgcolor;
			ctx.font = "50px arial";
			text = Math.floor(degrees/360*100) + "%";
			
			percentage.innerHTML = "<h3>" + Math.floor(degrees/360*100) + "%</h3>";
		}
		function draw() {
			if(typeof animation_loop != undefined) clearInterval(animation_loop);
			difference = new_degrees - degrees;
			animation_loop = setInterval(animate_to, 1000/difference);
		}
		
		function animate_to() {
			if(degrees == new_degrees) 
				clearInterval(animation_loop);
			
			if(degrees < new_degrees)
				degrees++;
			else
				degrees--;
				
			init();
		}
		draw();
		redraw_loop = setInterval(draw, 10000);
	
	}
});



