// GNB
function fe_gnb(){
	
	var $navMenu = $("#gnb>ul>li");
	var $navMenuImg = $("#gnb>ul>li").find("img");
	var $trigger = $("#gnb>ul>li>a");
	var $subMenuWrap = $("#gnb").find(".menu");
	var $subMenuItem = $("#gnb>ul>li>.menu>ul>li").find("a");
	var $gnbBackground = $("#gnb_background");
	
	$subMenuWrap.css("position","absolute");
	$gnbBackground.css("position","absolute");
	
	$trigger.bind('mouseenter focus', function(){
		$subMenuWrap.slideDown(300);
		$gnbBackground.slideDown(300);
	});
	
	fe_gnbAtv();
	
	$navMenu.mouseenter(function(){
		fe_gnbReset();
		if ( !$(this).hasClass("current") ){
			$(this).find("img").each(function(){
				var navImg = $(this).attr("src").replace("_off.gif","_on.gif");
				$(this).attr("src",navImg);
			});
		}
		$(this).addClass("current");
	}).mouseleave(function(){
		if ( $(this).hasClass("current") ){
			$(this).find("img").each(function(){
				var navImg = $(this).attr("src").replace("_on.gif","_off.gif");
				$(this).attr("src",navImg);
			});
		}
		$(this).removeClass("current");
		fe_gnbAtv();
	});

	$subMenuItem.mouseenter(function(){
		// �대�吏��� 寃쎌슦 二쇱꽍�댁젣
		//var thisImg = $(this).find("img").attr("src").replace("_on.","_on.");
		//$(this).find("img").attr("src",thisImg);
		$(this).parent().addClass("current");
	}).mouseleave(function(){
		//var thisImg = $(this).find("img").attr("src").replace("_on.","_on.");
		//$(this).find("img").attr("src",thisImg);
		$(this).parent().removeClass("current");
	});
	
	$("#gnb").mouseleave(function(){
		$subMenuWrap.slideUp(100);
		$gnbBackground.slideUp(100);
	});
	$("#gnb").find("a").focus(function(){
		$subMenuWrap.show();
	});
	$("#gnb").find("a:last").focusout(function(){
		$subMenuWrap.hide();
		$gnbBackground.slideUp(100);
	});




	function fe_gnbReset(){
		if ( $("#gnb>ul>li").hasClass("atv") ){
			var resetImg = $("#gnb>ul>li.atv").find("img").eq(0).attr("src").replace("_on.gif","_off.gif");
			$("#gnb>ul>li.atv").find("img").eq(0).attr("src",resetImg);
			$("#gnb>ul").find("li").removeClass("atv");
		}
	}

	function fe_gnbAtv(){
		if ( $("body").attr("id") == "about" ){
			$("#gnb>ul>li.about").addClass("atv");
			var aboutImg = $("#gnb>ul>li.about>a").find("img").attr("src").replace("_off.gif","_on.gif");
			$("#gnb>ul>li.about>a").find("img").attr("src",aboutImg);
		} else if ( $("body").attr("id") == "product" ){
			$("#gnb>ul>li.product").addClass("atv");
			var productImg = $("#gnb>ul>li.product>a").find("img").attr("src").replace("_off.gif","_on.gif");
			$("#gnb>ul>li.product>a").find("img").attr("src",productImg);		
		} else if ( $("body").attr("id") == "new" ){
			$("#gnb>ul>li.new").addClass("atv");
			var newImg = $("#gnb>ul>li.new>a").find("img").attr("src").replace("_off.gif","_on.gif");
			$("#gnb>ul>li.new>a").find("img").attr("src",newImg);		
		} else if ( $("body").attr("id") == "spa" ){
			$("#gnb>ul>li.spa").addClass("atv");
			var spaImg = $("#gnb>ul>li.spa>a").find("img").attr("src").replace("_off.gif","_on.gif");
			$("#gnb>ul>li.spa>a").find("img").attr("src",spaImg);		
		} else if ( $("body").attr("id") == "community" ){
			$("#gnb>ul>li.community").addClass("atv");
			var communityImg = $("#gnb>ul>li.community>a").find("img").attr("src").replace("_off.gif","_on.gif");
			$("#gnb>ul>li.community>a").find("img").attr("src",communityImg);		
		} else if ( $("body").attr("id") == "search" ){
			$("#gnb>ul>li.product").addClass("atv");
			var searchImg = $("#gnb>ul>li.product>a").find("img").attr("src").replace("_off.gif","_on.gif");
			$("#gnb>ul>li.product>a").find("img").attr("src",searchImg);		
		}
	}

}
//////////////////////////////////////////////////////////////////////




 function openNav() {
    document.getElementById("mySidenav").style.width = "100%";
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
}

 
 $(document).ready(function(){
   $("#d-schedule > li > a").on("click", function(e){
  if($(this).parent().has("ul")) {
    e.preventDefault();
  }
  

  if($(this).attr('asdf') == "0") {

	document.location.href = $(this).attr('href');
  }

  if(!$(this).hasClass("open")) {
    // hide any open menus and remove all other classes
    $("#d-schedule li ul").slideUp(350);
    $("#d-schedule li a").removeClass("open");
    
    // open our new menu and add the open class
    $(this).next("ul").slideDown(350);
    $(this).addClass("open");
  }
  
  else if($(this).hasClass("open")) {
    $(this).removeClass("open");
    $(this).next("ul").slideUp(350);
  }
   });
 });





/////////////////////////////////////////////////

$(document).ready(function(){
	$(".run").click(function(){
		$("#contentsOpen").css("display",'none')
		$("#sh_close").css("display",'none')
		$("#sh_open").css("display",'block')
		return false;
	});

	$(".run1").click(function(){
		$("#contentsOpen").css("display",'block')
		$("#sh_close").css("display",'block')
		$("#sh_open").css("display",'none')
		return false;
	});
});



/////////////////////////////////////////////////

 function myFunction() {
    document.getElementById("myDropdown").classList.toggle("show");
}

// Close the dropdown if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {

    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}

function myFunction2() {
    document.getElementById("myDropdown2").classList.toggle("show");
}

// Close the dropdown if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {

    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}





/////////////////////////////////////////////////

$(document).ready(function(){
	$('.single-page-nav').singlePageNav({
		offset: $('.single-page-nav').outerHeight(),
		filter: ':not(.external)',
		updateHash: true,
		beforeStart: function() {
			console.log('begin scrolling');
		},
		onComplete: function() {
			console.log('done scrolling');
		}
	});
});


