window.onload=function(){
	var oxx=document.getElementById('xx');
	var obanner=document.getElementById('top-banner');
	var otext=document.getElementById('textt');
	oxx.onmousedown=function(){
		obanner.style.display='none';
	};
	otext.onmousedown=function(){
		otext.value='';
		otext.style.color='rgb(51, 51, 51)';
	};
}
$(function(){
			

				//�ֶ������ֲ�ͼ
				$('#one li').eq(0).show();

				$('#two li').mouseover(function(){
					$(this).addClass('on').siblings().removeClass('on');
					var index=$(this).index();
					i=index;
					$('#one li').eq(index).stop().fadeIn(300).siblings().stop().fadeOut(300);
				})
				//�Զ�����
				var i=0;
				var t=setInterval(move,1500);
				//�Զ����ź��ĺ���
				function move(){
					i++;
					if(i==5){
						i=0;
					}
					$('#two li').eq(i).addClass('on').siblings().removeClass('on');
					$('#one li').eq(i).fadeIn(300).siblings().fadeOut(300);
				}

				//���Ҳ��ź��ĺ���
				function moveL(){
					i--;
					if(i==-1){
						i=4;
					}
					$('#two li').eq(i).addClass('on').siblings().removeClass('on');
					$('#one li').eq(i).fadeIn(300).siblings().fadeOut(300);
				}
				$('#left').click(function(){
						moveL();
				})
				$('#right').click(function(){
					move();
				})
				//��������Ƴ�
				$('#lunbo').hover(function(){
					clearInterval(t);
				},function(){
					t=setInterval(move,1500);
				})
				
			})
//************��ǰ���и���ѡ�*************
$(function(){
	$("#show").on('click',function(){
	    $(".shiq>ul>li").each(function(){
	        if($(this).find("a").attr("class") == "hide"){
	            $(this).find("a").removeClass("hide").addClass("show");
	        }else if($(this).find("a").attr("class") == "show"){
	            $(this).find("a").removeClass("show").addClass("hide");
	        }
	    });
	})
})





//**************��װЬ��ѡ�*******************
// $(function(){
// 			 $('.tab li').mouseover(function(){
//               $(this).addClass('active').siblings().removeClass('active');
// $('.tatab-item span').css('right','1px');
//               var index=$(this).index();
//               $('.main').eq(index).show().siblings().hide();
//               $('.side').css('display','block');
//             })
  		  
// 		})
//**************��װЬ���ֲ�*******************
// $(function(){
//             //scroll news
//             var scrnews=$(".slider .slider-main1"); 
// 			//��ȡ���Ԫ��
// 			var liNum=$(".slider-item");
// 			console.log(liNum)
//             var newst=setInterval(scro,3500);
//             scrnews.hover(function(){
//                 clearInterval(newst);  
				
//             },function(){
//                 newst=setInterval(scro,3500);
//             })
// 			//����ҷ���ť
// 			$('.slider-next').bind('click',function(){
				 
// 				//����һ��ͼƬ�л�������
// 				scrnews.children("li:first").appendTo(scrnews);
// 			});
// 			//�������ť
// 			$('.slider-prev').bind('click',function(){
// 				clearInterval(newst);  
// 				//����һ��ͼƬ�л���ǰ��
// 				scrnews.children("li:last").prependTo(scrnews);
// 			});
			
// 			var i=0;
//             function scro(){
//                 scrnews.animate({left:-439},2000,function(){
//                     $(this).children("li:first").appendTo(this);
//                     $(this).css("left",0);    
//                 })
// 				//��ű仯
// 				liNum.removeClass('active2');
// 				liNum.eq(i).addClass('active2');
// 				i++;
// 				if(i>3){
// 					i=0;
// 				}
//             }
//         })
//**************�����Ƽ�*******************
// $(function(){
// 			var xhRight=null;
//             //scroll news
//             var scrnews=$(".slider-main");
            
//             if(scrnews.children().length<4){return false;}
			
//             var newst=setInterval(scro,3500);
			
//             scrnews.hover(function(){
//                 clearInterval(newst);    
//             },function(){
//                 newst=setInterval(scro,3500);
//             })
			
//             function scro(){
//                 scrnews.animate({left:-1000},1500,function(){
//                     $(this).children("li:first").appendTo(this);
//                     $(this).css("left",0);    
//                 });
//             }
			
			
//              $('.slider-page li').hover(function(){
// 		          clearInterval(newst); 
// 		        },function(){
// 		          newst=setInterval(scro,3500);
// 		        })
				
// 				  $('.slider-prev').click(function(){
// 				  	scrnews.children("li:first").appendTo(scrnews);
					
// 				  })
// 				  $('.slider-next').click(function(){
// 				  	scrnews.children("li:last").prependTo(scrnews);
					
// 				  })
				
            
//         })
//**************�����ؼ�*******************
// $(function(){

//             //scroll news
//             var scrnews=$(".sw ul");
            
//             if(scrnews.children().length<10){return false;}
//             var newst=setInterval(scro,3500);
//             scrnews.hover(function(){
//                 clearInterval(newst);    
//             },function(){
//                 newst=setInterval(scro,3500);
//             })
//             function scro(){
//                 scrnews.animate({marginTop:-100},1500,function(){
//                     $(this).children("li:first").appendTo(this);
//                     $(this).css("marginTop",'20px');    
//                 })
//             }
            
//         })
//  $(function () {  
            
  
//             //�������ת���Ӻ󣬻ص�ҳ�涥��λ��  
  
//             $("#jdm-tbar-tab-top").click(function(){  
//                 $('body,html').animate({scrollTop:0},2000);  
//                 return false;  
//             });  
//         });  
//  //*************hidein*****
//  $(function(){
//  	$('.hidein').click(function(){
//  		$(this).css('display','none');
//  		$('#jd_chaojidapai').css('display','none');
//  	})
//  })

//*






//**********��Ʒ�����ֲ�ͼ***********************


    ;(function (window,document){
           function WySlider(eles,options){
               if(!eles){
                   throw "�ֲ�ͼԪ�ر��봫��";
               }
               this._init(eles,options);
   
           }
           WySlider.prototype._init = function (eles,options){
               /*�����ݵ�Ԫ��ȫ����ӵ�����������ʹ��ʱ�Ϳ��Զ��Ԫ����*/
               if(eles && (typeof eles !== "string") && eles.length && eles[eles.length - 1]){
                   [].push.apply(this, eles);
               }else if(eles && (typeof eles !== "string")){
                   [].push.apply(this, [eles]);
               }
               if(options && ({}).toString.call(options) === "[object Object]"){
                    this.options = options;
               }
               //�������е�Ԫ��
               for(var i = 0,len = this.length; i < len; i ++){
                   var currentSlideBox = this[i];
                   if(!currentSlideBox && (currentSliderBox.nodeType !== 1) && (!currentSliderBox.nodeName)){
                       continue;
                   }
                   currentSlideBox.index = 0;//��ǰ����
                   currentSlideBox.silder_main = currentSlideBox.getElementsByTagName("*");
                   for(var j = 0,len2 = currentSlideBox.silder_main.length; j < len2; j ++){
                       var ele = currentSlideBox.silder_main[j];
                       if (WySlider.hasClass(ele,'silder-main')){
                           currentSlideBox.silder_main = ele;
                           break;
                       }
                   }
                   currentSlideBox.silder_main_imgs = currentSlideBox.silder_main.children;
                   currentSlideBox.imgs_len = currentSlideBox.silder_main_imgs.length;
                   currentSlideBox.imgs_width = currentSlideBox.silder_main_imgs[0].offsetWidth;
                   currentSlideBox.js_silder_ctrl = currentSlideBox.children[1];
   
                   var slider_ctrl_children = currentSlideBox.js_silder_ctrl.children;
                   for(var k = 0,len3 = slider_ctrl_children.length; k < len3; k ++){
                       //��һ�š���һ�Ű�ť�󶨵���¼�
                       this._samllControllBtnBindEvent(slider_ctrl_children[k],currentSlideBox);
                   }
                   //����С�Ŀ��ư�ť
                   this._createSmallControllBtn(currentSlideBox);
                   if(this.options && this.options.auto){
                        this._autoPlay(currentSlideBox);
                   }
               }
           }
           /*����С�Ŀ��ư�ť*/
           WySlider.prototype._createSmallControllBtn = function (currentSlideBox){
               for(var i = 0,len2 = currentSlideBox.imgs_len;i < len2;i ++){
                   var silder_main_imgs = currentSlideBox.silder_main_imgs;
                   silder_main_imgs[i].index = i;
   
                   //������һ��֮���ȫ��ͼƬ���Ƶ��ұ�
                   if(i != 0){
                       silder_main_imgs[i].style.left = currentSlideBox.imgs_width + "px";
                   }
   
                   var span = document.createElement("span"),
                       js_silder_ctrl = currentSlideBox.js_silder_ctrl;
                   span.className = "silder-ctrl-con";
                   if(i == 0){
                       span.className = "silder-ctrl-con current";
                   }
                   span.innerHTML = i+1;
                   //�������ɵ�span�󶨵���¼�
                   this._samllControllBtnBindEvent(span,currentSlideBox);
                   //�����ɵ�span���뵽���һ��Ԫ�ص�ǰ��
                   js_silder_ctrl.insertBefore(span, js_silder_ctrl.children[js_silder_ctrl.children.length - 1]);
               }
           }
           /*��С�Ŀ��ư�ť��ӵ���¼�*/
           WySlider.prototype._samllControllBtnBindEvent = function (samllControllBtn,currentSlideBox){
               //��ȡ���еĵ����ť
               var that = this,
                   iNow = currentSlideBox.index;//����ͼƬ����
                   samllControllBtn.onclick = function (){
                       var classname = this.className,
                           thatNum = this.innerHTML - 1,
                           silder_main_imgs = currentSlideBox.silder_main_imgs,
                           imgs_len = currentSlideBox.imgs_len;
                           imgs_width = currentSlideBox.imgs_width;
                       if(/silder-ctrl-prev/g.test(classname)){//��߰�ť������һ�Ű�ť
                            //��ǰ����ͼƬ���ұ߱߳�ȥ
                           WySlider.animate(silder_main_imgs[currentSlideBox.index], {"left": imgs_width});
   
                           currentSlideBox.index--;
                           if(currentSlideBox.index < 0){
                              currentSlideBox.index = imgs_len - 1;
                           }
                           /*��һ��ͼƬ����֮ǰ�Ƚ����Ƶ�����ߣ��������ܱ�֤����ѭ����������������ã���ô��һ�ε�ͷ��Ͳ����д���߳�����Ч���ˡ�
                           */
                           silder_main_imgs[currentSlideBox.index].style.left = -imgs_width + "px";
                           //��һ��ͼƬ����
                           WySlider.animate(silder_main_imgs[currentSlideBox.index], {"left": 0});
                       }else if(/silder-ctrl-next/g.test(classname)){//�ұ߰�ť������һ�Ű�ť
                           that._play(currentSlideBox);
                       }else{
                           /*��������������ְ�ť����ֵ���ڵ�ǰͼƬ����������ôͼƬӦ�ô��ұ߳���*/
                           if(thatNum > currentSlideBox.index){
                               WySlider.animate(silder_main_imgs[currentSlideBox.index], {"left": -imgs_width});
                               silder_main_imgs[thatNum].style.left = imgs_width + "px";
                           }else if(thatNum < currentSlideBox.index){
                               WySlider.animate(silder_main_imgs[currentSlideBox.index], {"left": imgs_width});
                               silder_main_imgs[thatNum].style.left = -imgs_width + "px";
                           }

                           WySlider.animate(silder_main_imgs[thatNum], {"left": 0});
                           currentSlideBox.index = thatNum;
                       }
                       that._setCtrlBtnStyle(currentSlideBox.index+1,currentSlideBox);
                   }
           }
           /*����ͼƬ�˶�*/
           WySlider.prototype._play = function (currentSlideBox){
               var silder_main_imgs = currentSlideBox.silder_main_imgs,
                   iNow = currentSlideBox.index,
                   imgs_width = currentSlideBox.imgs_width,
                   imgs_len = currentSlideBox.imgs_len;
   
               //��ǰ����ͼƬ����߳�ȥ
               WySlider.animate(silder_main_imgs[iNow], {"left": -imgs_width});
   
               currentSlideBox.index = ++iNow;
               if(iNow > imgs_len - 1){
                   currentSlideBox.index = iNow = 0;
               }
               /*��һ��ͼƬ����֮ǰ�Ƚ����Ƶ����ұߣ��������ܱ�֤����ѭ����������������ã���ô��һ�ε�β��Ͳ����д��ұ߳�����Ч���ˡ�
               */
               silder_main_imgs[iNow].style.left = imgs_width + "px";
               //��һ��ͼƬ����
               WySlider.animate(silder_main_imgs[iNow], {"left": 0});
           }
           /*���õ�ǰ�����ť����ʽ�����������Ұ�ť*/
           WySlider.prototype._setCtrlBtnStyle = function (num,currentSlideBox){
               var silder_ctrl_spans = currentSlideBox.js_silder_ctrl.children;
               for(var k = 1,len = silder_ctrl_spans.length;k <= len - 2;k ++){
                   silder_ctrl_spans[k].className = "silder-ctrl-con";
               }
   
                silder_ctrl_spans[num].className = "silder-ctrl-con current";
           }
           /*//�Զ�����*/
           WySlider.prototype._autoPlay = function (currentSlideBox){
                var that = this,
                    interval = this.options ? (this.options.time ? this.options.time : 2000) : 2000;
               currentSlideBox.timer = null;
               currentSlideBox.timer = setInterval(function (){
                   that._play(currentSlideBox);
                   that._setCtrlBtnStyle(currentSlideBox.index+1,currentSlideBox);
               }, interval);
   
               //��������ͼƬ�ϵ�ʱ��ֹͣ�Զ�����
               currentSlideBox.onmouseover = function (){
                   clearInterval(currentSlideBox.timer);
               }
               //������뿪ͼƬ��ʱ���Զ�����
               currentSlideBox.onmouseleave = function (){
                   clearInterval(currentSlideBox.timer);
                   currentSlideBox.timer = setInterval(function (){
                        that._play(currentSlideBox);
                        that._setCtrlBtnStyle(currentSlideBox.index+1,currentSlideBox);
                   }, interval);
               }
           }
           /*��ȡԪ��*/
           WySlider.$ = function (selector){
               var classSelectSign = selector.indexOf("."),
                   idSelectSign = selector.indexOf("#");
   
               //idѡ����
               if(idSelectSign > -1){
                   return document.getElementById(selector.substr(1));
               }
   
               //classѡ����
               if(classSelectSign > -1){
                   var classSelect = selector.substr(classSelectSign+1);
   
                   //֧��ͨ��class��ȡԪ�ص������
                   if(document.getElementsByClassName){
                       var eles = document.getElementsByClassName(classSelect);
                       if(eles.length == 1){
                           return eles[0];
                       }else{
                           return eles;
                       }
                   }else{
                       var baseEleName = classSelectSign > 0 ? selector.substr(0,classSelectSign) : "*",
                           eles = document.getElementsByTagName(baseEleName),
                           elesResult = [];
   
                       for(var i = 0,len = eles.length; i < len; i ++){
                           if(WySlider.hasClass(eles[i],classSelect)){
                               elesResult.push(eles[i]);
                           }
                       }
                       if(elesResult.length == 1){
                           return elesResult[0];
                       }else{
                           return elesResult;
                       }
                   }
               }
   
               //��ǩѡ����
               return document.getElementsByTagName(selector);           
           }
   
           /*�ж�Ԫ���Ƿ���ĳ��class*/
           WySlider.hasClass = function (ele,classnameparam){
               var classname = ele.className
                   classArr = classname.split(" ");
               for(var i in classArr){
                   if(classArr[i] == classnameparam){
                       return true;
                   }
               }
               return false;
           }
   
           /*��ȡ��ʽ*/
           WySlider.getStyle = function (ele,attr){
               if(ele.currentStyle){
                   return ele.currentStyle[attr];
               }else{
                   return ele.ownerDocument.defaultView.getComputedStyle(ele,null)[attr];
               }
           }
           /*��������*/
           WySlider.animate = function (ele,attrsJson,fn){
               clearInterval(ele.timer);
   
               ele.timer = setInterval(function (){
                   var flag = true;
                   for(var attr in attrsJson){
                       var curStyle = parseInt(WySlider.getStyle(ele,attr)),
                           step = (parseInt(attrsJson[attr]) - curStyle) / 10;
   
                       step = step > 0 ? Math.ceil(step) : Math.floor(step);
   
                       if(curStyle != attrsJson[attr]){
                           flag = false;
                       }
   
                       if(attr == "zIndex"){
                           ele.style.zIndex = attrsJson[attr];
                       }else{
                           ele.style[attr] = curStyle + step + "px";
                       }
                   }
                   if(flag){
                       clearInterval(ele.timer);
                       if(fn){
                           fn.call(window);
                       }
                   }
               }, 20);
           }
           window.WySlider = WySlider;
       })(window,document);
   
      window.onload = function (){
           /*
                ����һ������һΪ�����ֲ�ͼ��Ԫ�أ��ò�������Ϊһ��Ԫ�أ�Ҳ����Ϊһ���������Ԫ�ص������α����
                ��������������Ϊ���ò��������Դ���auto��auto��ֵ��Ϊfalse���Զ��ֲ�����֮��Ĭ��Ϊfalse��timeΪ�ֲ���ʱ�䣬Ĭ��Ϊ2000����
            */
            var eles = new WySlider(document.querySelectorAll(".ws-slider"),{auto: true,time: 3000});
           new WySlider(document.getElementById("js_slider"));
            setInterval(function (){
                //eles[0].index�����ֲ��ĵ�ǰ����
                console.log(eles[0].index);
            }, 1500);
      } 




/***
*/

var ddd=document.getElementById('d');
ddd.value='sjhagoha';
