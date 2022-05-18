<!-- @import "[TOC]" {cmd="toc" depthFrom=3 depthTo=4 orderedList=false} -->

<!-- code_chunk_output -->

- [零、下载说明](#零-下载说明)
- [一、框架简介](#一-框架简介)
- [二、目录结构](#二-目录结构)
- [三、基本概念](#三-基本概念)
  - [(1) view](#1-view)
  - [(2) ctrl](#2-ctrl)
  - [(3) controller](#3-controller)
  - [(4) service](#4-service)
  - [(5) page](#5-page)
  - [(6) router](#6-router)
  - [(7) app](#7-app)
  - [(8) lgui entry](#8-lgui-entry)
  - [(9) lgui c library](#9-lgui-c-library)
  - [(10) lua table](#10-lua-table)
- [四、lgui framework文件说明](#四-lgui-framework文件说明)
- [五、时序图](#五-时序图)
  - [(1) lgui framework starting](#1-lgui-framework-starting)
  - [(2) page loading](#2-page-loading)
  - [(3) service callback](#3-service-callback)
- [六、lgui framework特性描述](#六-lgui-framework特性描述)
  - [1、ctrl加载顺序](#1-ctrl加载顺序)
  - [2、setdata特性](#2-setdata特性)
  - [3、view中ctrl事件关联controller](#3-view中ctrl事件关联controller)
  - [4、this特性](#4-this特性)
  - [5、热更新特性](#5-热更新特性)
  - [6、lgui中的背景特性](#6-lgui中的背景特性)
  - [7、ctrl position特性](#7-ctrl-position特性)
  - [8、图片资源自动解析特性](#8-图片资源自动解析特性)
  - [9、ctrl的父子特性](#9-ctrl的父子特性)
  - [10、service抢占默认事件特性](#10-service抢占默认事件特性)
  - [11、文本重新着色特性](#11-文本重新着色特性)
  - [12、common页面特性](#12-common页面特性)
  - [13、手势导航特性](#13-手势导航特性)
- [七、函数说明](#七-函数说明)
  - [1、lua framework API](#1-lua-framework-api)
  - [2、c library API <lgui3.h>](#2-c-library-api-lgui3h)
- [八、控件说明](#八-控件说明)
  - [1、bar](#1-bar)
  - [2、btn](#2-btn)
  - [3、btnm](#3-btnm)
  - [4、checkbox](#4-checkbox)
  - [5、clock](#5-clock)
  - [6、img](#6-img)
  - [7、list](#7-list)
  - [8、loading](#8-loading)
  - [9、mark](#9-mark)
  - [10、mbox](#10-mbox)
  - [11、text](#11-text)
  - [12、roller](#12-roller)
  - [13、slider](#13-slider)
  - [14、spinner](#14-spinner)
  - [15、page](#15-page)
  - [16、textarea](#16-textarea)
  - [17、qrcode](#17-qrcode)
  - [18、tab](#18-tab)
  - [19、vdec](#19-vdec)
  - [20、blank](#20-blank)
  - [21、swiper](#21-swiper)
  - [22、shared](#22-shared)
  - [23、chart](#23-chart)
  - [24、combobox](#24-combobox)
  - [25、drawer](#25-drawer)
  - [26、aimg](#26-aimg)
  
<!-- /code_chunk_output -->

<script>
!function t(e,r){"object"==typeof exports&&"object"==typeof module?module.exports=r():"function"==typeof define&&define.amd?define([],r):"object"==typeof exports?exports.Raphael=r():e.Raphael=r()}(this,function(){return function(t){function e(i){if(r[i])return r[i].exports;var n=r[i]={exports:{},id:i,loaded:!1};return t[i].call(n.exports,n,n.exports,e),n.loaded=!0,n.exports}var r={};return e.m=t,e.c=r,e.p="",e(0)}([function(t,e,r){var i,n;i=[r(1),r(3),r(4)],n=function(t){return t}.apply(e,i),!(void 0!==n&&(t.exports=n))},function(t,e,r){var i,n;i=[r(2)],n=function(t){function e(r){if(e.is(r,"function"))return w?r():t.on("raphael.DOMload",r);if(e.is(r,Q))return e._engine.create[z](e,r.splice(0,3+e.is(r[0],$))).add(r);var i=Array.prototype.slice.call(arguments,0);if(e.is(i[i.length-1],"function")){var n=i.pop();return w?n.call(e._engine.create[z](e,i)):t.on("raphael.DOMload",function(){n.call(e._engine.create[z](e,i))})}return e._engine.create[z](e,arguments)}function r(t){if("function"==typeof t||Object(t)!==t)return t;var e=new t.constructor;for(var i in t)t[A](i)&&(e[i]=r(t[i]));return e}function i(t,e){for(var r=0,i=t.length;r<i;r++)if(t[r]===e)return t.push(t.splice(r,1)[0])}function n(t,e,r){function n(){var a=Array.prototype.slice.call(arguments,0),s=a.join("␀"),o=n.cache=n.cache||{},l=n.count=n.count||[];return o[A](s)?(i(l,s),r?r(o[s]):o[s]):(l.length>=1e3&&delete o[l.shift()],l.push(s),o[s]=t[z](e,a),r?r(o[s]):o[s])}return n}function a(){return this.hex}function s(t,e){for(var r=[],i=0,n=t.length;n-2*!e>i;i+=2){var a=[{x:+t[i-2],y:+t[i-1]},{x:+t[i],y:+t[i+1]},{x:+t[i+2],y:+t[i+3]},{x:+t[i+4],y:+t[i+5]}];e?i?n-4==i?a[3]={x:+t[0],y:+t[1]}:n-2==i&&(a[2]={x:+t[0],y:+t[1]},a[3]={x:+t[2],y:+t[3]}):a[0]={x:+t[n-2],y:+t[n-1]}:n-4==i?a[3]=a[2]:i||(a[0]={x:+t[i],y:+t[i+1]}),r.push(["C",(-a[0].x+6*a[1].x+a[2].x)/6,(-a[0].y+6*a[1].y+a[2].y)/6,(a[1].x+6*a[2].x-a[3].x)/6,(a[1].y+6*a[2].y-a[3].y)/6,a[2].x,a[2].y])}return r}function o(t,e,r,i,n){var a=-3*e+9*r-9*i+3*n,s=t*a+6*e-12*r+6*i;return t*s-3*e+3*r}function l(t,e,r,i,n,a,s,l,h){null==h&&(h=1),h=h>1?1:h<0?0:h;for(var u=h/2,c=12,f=[-.1252,.1252,-.3678,.3678,-.5873,.5873,-.7699,.7699,-.9041,.9041,-.9816,.9816],p=[.2491,.2491,.2335,.2335,.2032,.2032,.1601,.1601,.1069,.1069,.0472,.0472],d=0,g=0;g<c;g++){var v=u*f[g]+u,x=o(v,t,r,n,s),y=o(v,e,i,a,l),m=x*x+y*y;d+=p[g]*Y.sqrt(m)}return u*d}function h(t,e,r,i,n,a,s,o,h){if(!(h<0||l(t,e,r,i,n,a,s,o)<h)){var u=1,c=u/2,f=u-c,p,d=.01;for(p=l(t,e,r,i,n,a,s,o,f);H(p-h)>d;)c/=2,f+=(p<h?1:-1)*c,p=l(t,e,r,i,n,a,s,o,f);return f}}function u(t,e,r,i,n,a,s,o){if(!(W(t,r)<G(n,s)||G(t,r)>W(n,s)||W(e,i)<G(a,o)||G(e,i)>W(a,o))){var l=(t*i-e*r)*(n-s)-(t-r)*(n*o-a*s),h=(t*i-e*r)*(a-o)-(e-i)*(n*o-a*s),u=(t-r)*(a-o)-(e-i)*(n-s);if(u){var c=l/u,f=h/u,p=+c.toFixed(2),d=+f.toFixed(2);if(!(p<+G(t,r).toFixed(2)||p>+W(t,r).toFixed(2)||p<+G(n,s).toFixed(2)||p>+W(n,s).toFixed(2)||d<+G(e,i).toFixed(2)||d>+W(e,i).toFixed(2)||d<+G(a,o).toFixed(2)||d>+W(a,o).toFixed(2)))return{x:c,y:f}}}}function c(t,e){return p(t,e)}function f(t,e){return p(t,e,1)}function p(t,r,i){var n=e.bezierBBox(t),a=e.bezierBBox(r);if(!e.isBBoxIntersect(n,a))return i?0:[];for(var s=l.apply(0,t),o=l.apply(0,r),h=W(~~(s/5),1),c=W(~~(o/5),1),f=[],p=[],d={},g=i?0:[],v=0;v<h+1;v++){var x=e.findDotsAtSegment.apply(e,t.concat(v/h));f.push({x:x.x,y:x.y,t:v/h})}for(v=0;v<c+1;v++)x=e.findDotsAtSegment.apply(e,r.concat(v/c)),p.push({x:x.x,y:x.y,t:v/c});for(v=0;v<h;v++)for(var y=0;y<c;y++){var m=f[v],b=f[v+1],_=p[y],w=p[y+1],k=H(b.x-m.x)<.001?"y":"x",B=H(w.x-_.x)<.001?"y":"x",C=u(m.x,m.y,b.x,b.y,_.x,_.y,w.x,w.y);if(C){if(d[C.x.toFixed(4)]==C.y.toFixed(4))continue;d[C.x.toFixed(4)]=C.y.toFixed(4);var S=m.t+H((C[k]-m[k])/(b[k]-m[k]))*(b.t-m.t),A=_.t+H((C[B]-_[B])/(w[B]-_[B]))*(w.t-_.t);S>=0&&S<=1.001&&A>=0&&A<=1.001&&(i?g++:g.push({x:C.x,y:C.y,t1:G(S,1),t2:G(A,1)}))}}return g}function d(t,r,i){t=e._path2curve(t),r=e._path2curve(r);for(var n,a,s,o,l,h,u,c,f,d,g=i?0:[],v=0,x=t.length;v<x;v++){var y=t[v];if("M"==y[0])n=l=y[1],a=h=y[2];else{"C"==y[0]?(f=[n,a].concat(y.slice(1)),n=f[6],a=f[7]):(f=[n,a,n,a,l,h,l,h],n=l,a=h);for(var m=0,b=r.length;m<b;m++){var _=r[m];if("M"==_[0])s=u=_[1],o=c=_[2];else{"C"==_[0]?(d=[s,o].concat(_.slice(1)),s=d[6],o=d[7]):(d=[s,o,s,o,u,c,u,c],s=u,o=c);var w=p(f,d,i);if(i)g+=w;else{for(var k=0,B=w.length;k<B;k++)w[k].segment1=v,w[k].segment2=m,w[k].bez1=f,w[k].bez2=d;g=g.concat(w)}}}}}return g}function g(t,e,r,i,n,a){null!=t?(this.a=+t,this.b=+e,this.c=+r,this.d=+i,this.e=+n,this.f=+a):(this.a=1,this.b=0,this.c=0,this.d=1,this.e=0,this.f=0)}function v(){return this.x+j+this.y}function x(){return this.x+j+this.y+j+this.width+" × "+this.height}function y(t,e,r,i,n,a){function s(t){return((c*t+u)*t+h)*t}function o(t,e){var r=l(t,e);return((d*r+p)*r+f)*r}function l(t,e){var r,i,n,a,o,l;for(n=t,l=0;l<8;l++){if(a=s(n)-t,H(a)<e)return n;if(o=(3*c*n+2*u)*n+h,H(o)<1e-6)break;n-=a/o}if(r=0,i=1,n=t,n<r)return r;if(n>i)return i;for(;r<i;){if(a=s(n),H(a-t)<e)return n;t>a?r=n:i=n,n=(i-r)/2+r}return n}var h=3*e,u=3*(i-e)-h,c=1-h-u,f=3*r,p=3*(n-r)-f,d=1-f-p;return o(t,1/(200*a))}function m(t,e){var r=[],i={};if(this.ms=e,this.times=1,t){for(var n in t)t[A](n)&&(i[ht(n)]=t[n],r.push(ht(n)));r.sort(Bt)}this.anim=i,this.top=r[r.length-1],this.percents=r}function b(r,i,n,a,s,o){n=ht(n);var l,h,u,c=[],f,p,d,v=r.ms,x={},m={},b={};if(a)for(w=0,B=Ee.length;w<B;w++){var _=Ee[w];if(_.el.id==i.id&&_.anim==r){_.percent!=n?(Ee.splice(w,1),u=1):h=_,i.attr(_.totalOrigin);break}}else a=+m;for(var w=0,B=r.percents.length;w<B;w++){if(r.percents[w]==n||r.percents[w]>a*r.top){n=r.percents[w],p=r.percents[w-1]||0,v=v/r.top*(n-p),f=r.percents[w+1],l=r.anim[n];break}a&&i.attr(r.anim[r.percents[w]])}if(l){if(h)h.initstatus=a,h.start=new Date-h.ms*a;else{for(var C in l)if(l[A](C)&&(pt[A](C)||i.paper.customAttributes[A](C)))switch(x[C]=i.attr(C),null==x[C]&&(x[C]=ft[C]),m[C]=l[C],pt[C]){case $:b[C]=(m[C]-x[C])/v;break;case"colour":x[C]=e.getRGB(x[C]);var S=e.getRGB(m[C]);b[C]={r:(S.r-x[C].r)/v,g:(S.g-x[C].g)/v,b:(S.b-x[C].b)/v};break;case"path":var T=Qt(x[C],m[C]),E=T[1];for(x[C]=T[0],b[C]=[],w=0,B=x[C].length;w<B;w++){b[C][w]=[0];for(var M=1,N=x[C][w].length;M<N;M++)b[C][w][M]=(E[w][M]-x[C][w][M])/v}break;case"transform":var L=i._,z=le(L[C],m[C]);if(z)for(x[C]=z.from,m[C]=z.to,b[C]=[],b[C].real=!0,w=0,B=x[C].length;w<B;w++)for(b[C][w]=[x[C][w][0]],M=1,N=x[C][w].length;M<N;M++)b[C][w][M]=(m[C][w][M]-x[C][w][M])/v;else{var F=i.matrix||new g,R={_:{transform:L.transform},getBBox:function(){return i.getBBox(1)}};x[C]=[F.a,F.b,F.c,F.d,F.e,F.f],se(R,m[C]),m[C]=R._.transform,b[C]=[(R.matrix.a-F.a)/v,(R.matrix.b-F.b)/v,(R.matrix.c-F.c)/v,(R.matrix.d-F.d)/v,(R.matrix.e-F.e)/v,(R.matrix.f-F.f)/v]}break;case"csv":var j=I(l[C])[q](k),D=I(x[C])[q](k);if("clip-rect"==C)for(x[C]=D,b[C]=[],w=D.length;w--;)b[C][w]=(j[w]-x[C][w])/v;m[C]=j;break;default:for(j=[][P](l[C]),D=[][P](x[C]),b[C]=[],w=i.paper.customAttributes[C].length;w--;)b[C][w]=((j[w]||0)-(D[w]||0))/v}var V=l.easing,O=e.easing_formulas[V];if(!O)if(O=I(V).match(st),O&&5==O.length){var Y=O;O=function(t){return y(t,+Y[1],+Y[2],+Y[3],+Y[4],v)}}else O=St;if(d=l.start||r.start||+new Date,_={anim:r,percent:n,timestamp:d,start:d+(r.del||0),status:0,initstatus:a||0,stop:!1,ms:v,easing:O,from:x,diff:b,to:m,el:i,callback:l.callback,prev:p,next:f,repeat:o||r.times,origin:i.attr(),totalOrigin:s},Ee.push(_),a&&!h&&!u&&(_.stop=!0,_.start=new Date-v*a,1==Ee.length))return Ne();u&&(_.start=new Date-_.ms*a),1==Ee.length&&Me(Ne)}t("raphael.anim.start."+i.id,i,r)}}function _(t){for(var e=0;e<Ee.length;e++)Ee[e].el.paper==t&&Ee.splice(e--,1)}e.version="2.2.0",e.eve=t;var w,k=/[, ]+/,B={circle:1,rect:1,path:1,ellipse:1,text:1,image:1},C=/\{(\d+)\}/g,S="prototype",A="hasOwnProperty",T={doc:document,win:window},E={was:Object.prototype[A].call(T.win,"Raphael"),is:T.win.Raphael},M=function(){this.ca=this.customAttributes={}},N,L="appendChild",z="apply",P="concat",F="ontouchstart"in T.win||T.win.DocumentTouch&&T.doc instanceof DocumentTouch,R="",j=" ",I=String,q="split",D="click dblclick mousedown mousemove mouseout mouseover mouseup touchstart touchmove touchend touchcancel"[q](j),V={mousedown:"touchstart",mousemove:"touchmove",mouseup:"touchend"},O=I.prototype.toLowerCase,Y=Math,W=Y.max,G=Y.min,H=Y.abs,X=Y.pow,U=Y.PI,$="number",Z="string",Q="array",J="toString",K="fill",tt=Object.prototype.toString,et={},rt="push",it=e._ISURL=/^url\(['"]?(.+?)['"]?\)$/i,nt=/^\s*((#[a-f\d]{6})|(#[a-f\d]{3})|rgba?\(\s*([\d\.]+%?\s*,\s*[\d\.]+%?\s*,\s*[\d\.]+%?(?:\s*,\s*[\d\.]+%?)?)\s*\)|hsba?\(\s*([\d\.]+(?:deg|\xb0|%)?\s*,\s*[\d\.]+%?\s*,\s*[\d\.]+(?:%?\s*,\s*[\d\.]+)?)%?\s*\)|hsla?\(\s*([\d\.]+(?:deg|\xb0|%)?\s*,\s*[\d\.]+%?\s*,\s*[\d\.]+(?:%?\s*,\s*[\d\.]+)?)%?\s*\))\s*$/i,at={NaN:1,Infinity:1,"-Infinity":1},st=/^(?:cubic-)?bezier\(([^,]+),([^,]+),([^,]+),([^\)]+)\)/,ot=Y.round,lt="setAttribute",ht=parseFloat,ut=parseInt,ct=I.prototype.toUpperCase,ft=e._availableAttrs={"arrow-end":"none","arrow-start":"none",blur:0,"clip-rect":"0 0 1e9 1e9",cursor:"default",cx:0,cy:0,fill:"#fff","fill-opacity":1,font:'10px "Arial"',"font-family":'"Arial"',"font-size":"10","font-style":"normal","font-weight":400,gradient:0,height:0,href:"http://raphaeljs.com/","letter-spacing":0,opacity:1,path:"M0,0",r:0,rx:0,ry:0,src:"",stroke:"#000","stroke-dasharray":"","stroke-linecap":"butt","stroke-linejoin":"butt","stroke-miterlimit":0,"stroke-opacity":1,"stroke-width":1,target:"_blank","text-anchor":"middle",title:"Raphael",transform:"",width:0,x:0,y:0,"class":""},pt=e._availableAnimAttrs={blur:$,"clip-rect":"csv",cx:$,cy:$,fill:"colour","fill-opacity":$,"font-size":$,height:$,opacity:$,path:"path",r:$,rx:$,ry:$,stroke:"colour","stroke-opacity":$,"stroke-width":$,transform:"transform",width:$,x:$,y:$},dt=/[\x09\x0a\x0b\x0c\x0d\x20\xa0\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\u2028\u2029]/g,gt=/[\x09\x0a\x0b\x0c\x0d\x20\xa0\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\u2028\u2029]*,[\x09\x0a\x0b\x0c\x0d\x20\xa0\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\u2028\u2029]*/,vt={hs:1,rg:1},xt=/,?([achlmqrstvxz]),?/gi,yt=/([achlmrqstvz])[\x09\x0a\x0b\x0c\x0d\x20\xa0\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\u2028\u2029,]*((-?\d*\.?\d*(?:e[\-+]?\d+)?[\x09\x0a\x0b\x0c\x0d\x20\xa0\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\u2028\u2029]*,?[\x09\x0a\x0b\x0c\x0d\x20\xa0\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\u2028\u2029]*)+)/gi,mt=/([rstm])[\x09\x0a\x0b\x0c\x0d\x20\xa0\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\u2028\u2029,]*((-?\d*\.?\d*(?:e[\-+]?\d+)?[\x09\x0a\x0b\x0c\x0d\x20\xa0\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\u2028\u2029]*,?[\x09\x0a\x0b\x0c\x0d\x20\xa0\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\u2028\u2029]*)+)/gi,bt=/(-?\d*\.?\d*(?:e[\-+]?\d+)?)[\x09\x0a\x0b\x0c\x0d\x20\xa0\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\u2028\u2029]*,?[\x09\x0a\x0b\x0c\x0d\x20\xa0\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\u2028\u2029]*/gi,_t=e._radial_gradient=/^r(?:\(([^,]+?)[\x09\x0a\x0b\x0c\x0d\x20\xa0\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\u2028\u2029]*,[\x09\x0a\x0b\x0c\x0d\x20\xa0\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\u2028\u2029]*([^\)]+?)\))?/,wt={},kt=function(t,e){return t.key-e.key},Bt=function(t,e){return ht(t)-ht(e)},Ct=function(){},St=function(t){return t},At=e._rectPath=function(t,e,r,i,n){return n?[["M",t+n,e],["l",r-2*n,0],["a",n,n,0,0,1,n,n],["l",0,i-2*n],["a",n,n,0,0,1,-n,n],["l",2*n-r,0],["a",n,n,0,0,1,-n,-n],["l",0,2*n-i],["a",n,n,0,0,1,n,-n],["z"]]:[["M",t,e],["l",r,0],["l",0,i],["l",-r,0],["z"]]},Tt=function(t,e,r,i){return null==i&&(i=r),[["M",t,e],["m",0,-i],["a",r,i,0,1,1,0,2*i],["a",r,i,0,1,1,0,-2*i],["z"]]},Et=e._getPath={path:function(t){return t.attr("path")},circle:function(t){var e=t.attrs;return Tt(e.cx,e.cy,e.r)},ellipse:function(t){var e=t.attrs;return Tt(e.cx,e.cy,e.rx,e.ry)},rect:function(t){var e=t.attrs;return At(e.x,e.y,e.width,e.height,e.r)},image:function(t){var e=t.attrs;return At(e.x,e.y,e.width,e.height)},text:function(t){var e=t._getBBox();return At(e.x,e.y,e.width,e.height)},set:function(t){var e=t._getBBox();return At(e.x,e.y,e.width,e.height)}},Mt=e.mapPath=function(t,e){if(!e)return t;var r,i,n,a,s,o,l;for(t=Qt(t),n=0,s=t.length;n<s;n++)for(l=t[n],a=1,o=l.length;a<o;a+=2)r=e.x(l[a],l[a+1]),i=e.y(l[a],l[a+1]),l[a]=r,l[a+1]=i;return t};if(e._g=T,e.type=T.win.SVGAngle||T.doc.implementation.hasFeature("http://www.w3.org/TR/SVG11/feature#BasicStructure","1.1")?"SVG":"VML","VML"==e.type){var Nt=T.doc.createElement("div"),Lt;if(Nt.innerHTML='<v:shape adj="1"/>',Lt=Nt.firstChild,Lt.style.behavior="url(#default#VML)",!Lt||"object"!=typeof Lt.adj)return e.type=R;Nt=null}e.svg=!(e.vml="VML"==e.type),e._Paper=M,e.fn=N=M.prototype=e.prototype,e._id=0,e.is=function(t,e){return e=O.call(e),"finite"==e?!at[A](+t):"array"==e?t instanceof Array:"null"==e&&null===t||e==typeof t&&null!==t||"object"==e&&t===Object(t)||"array"==e&&Array.isArray&&Array.isArray(t)||tt.call(t).slice(8,-1).toLowerCase()==e},e.angle=function(t,r,i,n,a,s){if(null==a){var o=t-i,l=r-n;return o||l?(180+180*Y.atan2(-l,-o)/U+360)%360:0}return e.angle(t,r,a,s)-e.angle(i,n,a,s)},e.rad=function(t){return t%360*U/180},e.deg=function(t){return Math.round(180*t/U%360*1e3)/1e3},e.snapTo=function(t,r,i){if(i=e.is(i,"finite")?i:10,e.is(t,Q)){for(var n=t.length;n--;)if(H(t[n]-r)<=i)return t[n]}else{t=+t;var a=r%t;if(a<i)return r-a;if(a>t-i)return r-a+t}return r};var zt=e.createUUID=function(t,e){return function(){return"xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx".replace(t,e).toUpperCase()}}(/[xy]/g,function(t){var e=16*Y.random()|0,r="x"==t?e:3&e|8;return r.toString(16)});e.setWindow=function(r){t("raphael.setWindow",e,T.win,r),T.win=r,T.doc=T.win.document,e._engine.initWin&&e._engine.initWin(T.win)};var Pt=function(t){if(e.vml){var r=/^\s+|\s+$/g,i;try{var a=new ActiveXObject("htmlfile");a.write("<body>"),a.close(),i=a.body}catch(s){i=createPopup().document.body}var o=i.createTextRange();Pt=n(function(t){try{i.style.color=I(t).replace(r,R);var e=o.queryCommandValue("ForeColor");return e=(255&e)<<16|65280&e|(16711680&e)>>>16,"#"+("000000"+e.toString(16)).slice(-6)}catch(n){return"none"}})}else{var l=T.doc.createElement("i");l.title="Raphaël Colour Picker",l.style.display="none",T.doc.body.appendChild(l),Pt=n(function(t){return l.style.color=t,T.doc.defaultView.getComputedStyle(l,R).getPropertyValue("color")})}return Pt(t)},Ft=function(){return"hsb("+[this.h,this.s,this.b]+")"},Rt=function(){return"hsl("+[this.h,this.s,this.l]+")"},jt=function(){return this.hex},It=function(t,r,i){if(null==r&&e.is(t,"object")&&"r"in t&&"g"in t&&"b"in t&&(i=t.b,r=t.g,t=t.r),null==r&&e.is(t,Z)){var n=e.getRGB(t);t=n.r,r=n.g,i=n.b}return(t>1||r>1||i>1)&&(t/=255,r/=255,i/=255),[t,r,i]},qt=function(t,r,i,n){t*=255,r*=255,i*=255;var a={r:t,g:r,b:i,hex:e.rgb(t,r,i),toString:jt};return e.is(n,"finite")&&(a.opacity=n),a};e.color=function(t){var r;return e.is(t,"object")&&"h"in t&&"s"in t&&"b"in t?(r=e.hsb2rgb(t),t.r=r.r,t.g=r.g,t.b=r.b,t.hex=r.hex):e.is(t,"object")&&"h"in t&&"s"in t&&"l"in t?(r=e.hsl2rgb(t),t.r=r.r,t.g=r.g,t.b=r.b,t.hex=r.hex):(e.is(t,"string")&&(t=e.getRGB(t)),e.is(t,"object")&&"r"in t&&"g"in t&&"b"in t?(r=e.rgb2hsl(t),t.h=r.h,t.s=r.s,t.l=r.l,r=e.rgb2hsb(t),t.v=r.b):(t={hex:"none"},t.r=t.g=t.b=t.h=t.s=t.v=t.l=-1)),t.toString=jt,t},e.hsb2rgb=function(t,e,r,i){this.is(t,"object")&&"h"in t&&"s"in t&&"b"in t&&(r=t.b,e=t.s,i=t.o,t=t.h),t*=360;var n,a,s,o,l;return t=t%360/60,l=r*e,o=l*(1-H(t%2-1)),n=a=s=r-l,t=~~t,n+=[l,o,0,0,o,l][t],a+=[o,l,l,o,0,0][t],s+=[0,0,o,l,l,o][t],qt(n,a,s,i)},e.hsl2rgb=function(t,e,r,i){this.is(t,"object")&&"h"in t&&"s"in t&&"l"in t&&(r=t.l,e=t.s,t=t.h),(t>1||e>1||r>1)&&(t/=360,e/=100,r/=100),t*=360;var n,a,s,o,l;return t=t%360/60,l=2*e*(r<.5?r:1-r),o=l*(1-H(t%2-1)),n=a=s=r-l/2,t=~~t,n+=[l,o,0,0,o,l][t],a+=[o,l,l,o,0,0][t],s+=[0,0,o,l,l,o][t],qt(n,a,s,i)},e.rgb2hsb=function(t,e,r){r=It(t,e,r),t=r[0],e=r[1],r=r[2];var i,n,a,s;return a=W(t,e,r),s=a-G(t,e,r),i=0==s?null:a==t?(e-r)/s:a==e?(r-t)/s+2:(t-e)/s+4,i=(i+360)%6*60/360,n=0==s?0:s/a,{h:i,s:n,b:a,toString:Ft}},e.rgb2hsl=function(t,e,r){r=It(t,e,r),t=r[0],e=r[1],r=r[2];var i,n,a,s,o,l;return s=W(t,e,r),o=G(t,e,r),l=s-o,i=0==l?null:s==t?(e-r)/l:s==e?(r-t)/l+2:(t-e)/l+4,i=(i+360)%6*60/360,a=(s+o)/2,n=0==l?0:a<.5?l/(2*a):l/(2-2*a),{h:i,s:n,l:a,toString:Rt}},e._path2string=function(){return this.join(",").replace(xt,"$1")};var Dt=e._preload=function(t,e){var r=T.doc.createElement("img");r.style.cssText="position:absolute;left:-9999em;top:-9999em",r.onload=function(){e.call(this),this.onload=null,T.doc.body.removeChild(this)},r.onerror=function(){T.doc.body.removeChild(this)},T.doc.body.appendChild(r),r.src=t};e.getRGB=n(function(t){if(!t||(t=I(t)).indexOf("-")+1)return{r:-1,g:-1,b:-1,hex:"none",error:1,toString:a};if("none"==t)return{r:-1,g:-1,b:-1,hex:"none",toString:a};!(vt[A](t.toLowerCase().substring(0,2))||"#"==t.charAt())&&(t=Pt(t));var r,i,n,s,o,l,h,u=t.match(nt);return u?(u[2]&&(s=ut(u[2].substring(5),16),n=ut(u[2].substring(3,5),16),i=ut(u[2].substring(1,3),16)),u[3]&&(s=ut((l=u[3].charAt(3))+l,16),n=ut((l=u[3].charAt(2))+l,16),i=ut((l=u[3].charAt(1))+l,16)),u[4]&&(h=u[4][q](gt),i=ht(h[0]),"%"==h[0].slice(-1)&&(i*=2.55),n=ht(h[1]),"%"==h[1].slice(-1)&&(n*=2.55),s=ht(h[2]),"%"==h[2].slice(-1)&&(s*=2.55),"rgba"==u[1].toLowerCase().slice(0,4)&&(o=ht(h[3])),h[3]&&"%"==h[3].slice(-1)&&(o/=100)),u[5]?(h=u[5][q](gt),i=ht(h[0]),"%"==h[0].slice(-1)&&(i*=2.55),n=ht(h[1]),"%"==h[1].slice(-1)&&(n*=2.55),s=ht(h[2]),"%"==h[2].slice(-1)&&(s*=2.55),("deg"==h[0].slice(-3)||"°"==h[0].slice(-1))&&(i/=360),"hsba"==u[1].toLowerCase().slice(0,4)&&(o=ht(h[3])),h[3]&&"%"==h[3].slice(-1)&&(o/=100),e.hsb2rgb(i,n,s,o)):u[6]?(h=u[6][q](gt),i=ht(h[0]),"%"==h[0].slice(-1)&&(i*=2.55),n=ht(h[1]),"%"==h[1].slice(-1)&&(n*=2.55),s=ht(h[2]),"%"==h[2].slice(-1)&&(s*=2.55),("deg"==h[0].slice(-3)||"°"==h[0].slice(-1))&&(i/=360),"hsla"==u[1].toLowerCase().slice(0,4)&&(o=ht(h[3])),h[3]&&"%"==h[3].slice(-1)&&(o/=100),e.hsl2rgb(i,n,s,o)):(u={r:i,g:n,b:s,toString:a},u.hex="#"+(16777216|s|n<<8|i<<16).toString(16).slice(1),e.is(o,"finite")&&(u.opacity=o),u)):{r:-1,g:-1,b:-1,hex:"none",error:1,toString:a}},e),e.hsb=n(function(t,r,i){return e.hsb2rgb(t,r,i).hex}),e.hsl=n(function(t,r,i){return e.hsl2rgb(t,r,i).hex}),e.rgb=n(function(t,e,r){function i(t){return t+.5|0}return"#"+(16777216|i(r)|i(e)<<8|i(t)<<16).toString(16).slice(1)}),e.getColor=function(t){var e=this.getColor.start=this.getColor.start||{h:0,s:1,b:t||.75},r=this.hsb2rgb(e.h,e.s,e.b);return e.h+=.075,e.h>1&&(e.h=0,e.s-=.2,e.s<=0&&(this.getColor.start={h:0,s:1,b:e.b})),r.hex},e.getColor.reset=function(){delete this.start},e.parsePathString=function(t){if(!t)return null;var r=Vt(t);if(r.arr)return Yt(r.arr);var i={a:7,c:6,h:1,l:2,m:2,r:4,q:4,s:4,t:2,v:1,z:0},n=[];return e.is(t,Q)&&e.is(t[0],Q)&&(n=Yt(t)),n.length||I(t).replace(yt,function(t,e,r){var a=[],s=e.toLowerCase();if(r.replace(bt,function(t,e){e&&a.push(+e)}),"m"==s&&a.length>2&&(n.push([e][P](a.splice(0,2))),s="l",e="m"==e?"l":"L"),"r"==s)n.push([e][P](a));else for(;a.length>=i[s]&&(n.push([e][P](a.splice(0,i[s]))),i[s]););}),n.toString=e._path2string,r.arr=Yt(n),n},e.parseTransformString=n(function(t){if(!t)return null;var r={r:3,s:4,t:2,m:6},i=[];return e.is(t,Q)&&e.is(t[0],Q)&&(i=Yt(t)),i.length||I(t).replace(mt,function(t,e,r){var n=[],a=O.call(e);r.replace(bt,function(t,e){e&&n.push(+e)}),i.push([e][P](n))}),i.toString=e._path2string,i});var Vt=function(t){var e=Vt.ps=Vt.ps||{};return e[t]?e[t].sleep=100:e[t]={sleep:100},setTimeout(function(){for(var r in e)e[A](r)&&r!=t&&(e[r].sleep--,!e[r].sleep&&delete e[r])}),e[t]};e.findDotsAtSegment=function(t,e,r,i,n,a,s,o,l){var h=1-l,u=X(h,3),c=X(h,2),f=l*l,p=f*l,d=u*t+3*c*l*r+3*h*l*l*n+p*s,g=u*e+3*c*l*i+3*h*l*l*a+p*o,v=t+2*l*(r-t)+f*(n-2*r+t),x=e+2*l*(i-e)+f*(a-2*i+e),y=r+2*l*(n-r)+f*(s-2*n+r),m=i+2*l*(a-i)+f*(o-2*a+i),b=h*t+l*r,_=h*e+l*i,w=h*n+l*s,k=h*a+l*o,B=90-180*Y.atan2(v-y,x-m)/U;return(v>y||x<m)&&(B+=180),{x:d,y:g,m:{x:v,y:x},n:{x:y,y:m},start:{x:b,y:_},end:{x:w,y:k},alpha:B}},e.bezierBBox=function(t,r,i,n,a,s,o,l){e.is(t,"array")||(t=[t,r,i,n,a,s,o,l]);var h=Zt.apply(null,t);return{x:h.min.x,y:h.min.y,x2:h.max.x,y2:h.max.y,width:h.max.x-h.min.x,height:h.max.y-h.min.y}},e.isPointInsideBBox=function(t,e,r){return e>=t.x&&e<=t.x2&&r>=t.y&&r<=t.y2},e.isBBoxIntersect=function(t,r){var i=e.isPointInsideBBox;return i(r,t.x,t.y)||i(r,t.x2,t.y)||i(r,t.x,t.y2)||i(r,t.x2,t.y2)||i(t,r.x,r.y)||i(t,r.x2,r.y)||i(t,r.x,r.y2)||i(t,r.x2,r.y2)||(t.x<r.x2&&t.x>r.x||r.x<t.x2&&r.x>t.x)&&(t.y<r.y2&&t.y>r.y||r.y<t.y2&&r.y>t.y)},e.pathIntersection=function(t,e){return d(t,e)},e.pathIntersectionNumber=function(t,e){return d(t,e,1)},e.isPointInsidePath=function(t,r,i){var n=e.pathBBox(t);return e.isPointInsideBBox(n,r,i)&&d(t,[["M",r,i],["H",n.x2+10]],1)%2==1},e._removedFactory=function(e){return function(){t("raphael.log",null,"Raphaël: you are calling to method “"+e+"” of removed object",e)}};var Ot=e.pathBBox=function(t){var e=Vt(t);if(e.bbox)return r(e.bbox);if(!t)return{x:0,y:0,width:0,height:0,x2:0,y2:0};t=Qt(t);for(var i=0,n=0,a=[],s=[],o,l=0,h=t.length;l<h;l++)if(o=t[l],"M"==o[0])i=o[1],n=o[2],a.push(i),s.push(n);else{var u=Zt(i,n,o[1],o[2],o[3],o[4],o[5],o[6]);a=a[P](u.min.x,u.max.x),s=s[P](u.min.y,u.max.y),i=o[5],n=o[6]}var c=G[z](0,a),f=G[z](0,s),p=W[z](0,a),d=W[z](0,s),g=p-c,v=d-f,x={x:c,y:f,x2:p,y2:d,width:g,height:v,cx:c+g/2,cy:f+v/2};return e.bbox=r(x),x},Yt=function(t){var i=r(t);return i.toString=e._path2string,i},Wt=e._pathToRelative=function(t){var r=Vt(t);if(r.rel)return Yt(r.rel);e.is(t,Q)&&e.is(t&&t[0],Q)||(t=e.parsePathString(t));var i=[],n=0,a=0,s=0,o=0,l=0;"M"==t[0][0]&&(n=t[0][1],a=t[0][2],s=n,o=a,l++,i.push(["M",n,a]));for(var h=l,u=t.length;h<u;h++){var c=i[h]=[],f=t[h];if(f[0]!=O.call(f[0]))switch(c[0]=O.call(f[0]),c[0]){case"a":c[1]=f[1],c[2]=f[2],c[3]=f[3],c[4]=f[4],c[5]=f[5],c[6]=+(f[6]-n).toFixed(3),c[7]=+(f[7]-a).toFixed(3);break;case"v":c[1]=+(f[1]-a).toFixed(3);break;case"m":s=f[1],o=f[2];default:for(var p=1,d=f.length;p<d;p++)c[p]=+(f[p]-(p%2?n:a)).toFixed(3)}else{c=i[h]=[],"m"==f[0]&&(s=f[1]+n,o=f[2]+a);for(var g=0,v=f.length;g<v;g++)i[h][g]=f[g]}var x=i[h].length;switch(i[h][0]){case"z":n=s,a=o;break;case"h":n+=+i[h][x-1];break;case"v":a+=+i[h][x-1];break;default:n+=+i[h][x-2],a+=+i[h][x-1]}}return i.toString=e._path2string,r.rel=Yt(i),i},Gt=e._pathToAbsolute=function(t){var r=Vt(t);if(r.abs)return Yt(r.abs);if(e.is(t,Q)&&e.is(t&&t[0],Q)||(t=e.parsePathString(t)),!t||!t.length)return[["M",0,0]];var i=[],n=0,a=0,o=0,l=0,h=0;"M"==t[0][0]&&(n=+t[0][1],a=+t[0][2],o=n,l=a,h++,i[0]=["M",n,a]);for(var u=3==t.length&&"M"==t[0][0]&&"R"==t[1][0].toUpperCase()&&"Z"==t[2][0].toUpperCase(),c,f,p=h,d=t.length;p<d;p++){if(i.push(c=[]),f=t[p],f[0]!=ct.call(f[0]))switch(c[0]=ct.call(f[0]),c[0]){case"A":c[1]=f[1],c[2]=f[2],c[3]=f[3],c[4]=f[4],c[5]=f[5],c[6]=+(f[6]+n),c[7]=+(f[7]+a);break;case"V":c[1]=+f[1]+a;break;case"H":c[1]=+f[1]+n;break;case"R":for(var g=[n,a][P](f.slice(1)),v=2,x=g.length;v<x;v++)g[v]=+g[v]+n,g[++v]=+g[v]+a;i.pop(),i=i[P](s(g,u));break;case"M":o=+f[1]+n,l=+f[2]+a;default:for(v=1,x=f.length;v<x;v++)c[v]=+f[v]+(v%2?n:a)}else if("R"==f[0])g=[n,a][P](f.slice(1)),i.pop(),i=i[P](s(g,u)),c=["R"][P](f.slice(-2));else for(var y=0,m=f.length;y<m;y++)c[y]=f[y];switch(c[0]){case"Z":n=o,a=l;break;case"H":n=c[1];break;case"V":a=c[1];break;case"M":o=c[c.length-2],l=c[c.length-1];default:n=c[c.length-2],a=c[c.length-1]}}return i.toString=e._path2string,r.abs=Yt(i),i},Ht=function(t,e,r,i){return[t,e,r,i,r,i]},Xt=function(t,e,r,i,n,a){var s=1/3,o=2/3;return[s*t+o*r,s*e+o*i,s*n+o*r,s*a+o*i,n,a]},Ut=function(t,e,r,i,a,s,o,l,h,u){var c=120*U/180,f=U/180*(+a||0),p=[],d,g=n(function(t,e,r){var i=t*Y.cos(r)-e*Y.sin(r),n=t*Y.sin(r)+e*Y.cos(r);return{x:i,y:n}});if(u)S=u[0],A=u[1],B=u[2],C=u[3];else{d=g(t,e,-f),t=d.x,e=d.y,d=g(l,h,-f),l=d.x,h=d.y;var v=Y.cos(U/180*a),x=Y.sin(U/180*a),y=(t-l)/2,m=(e-h)/2,b=y*y/(r*r)+m*m/(i*i);b>1&&(b=Y.sqrt(b),r=b*r,i=b*i);var _=r*r,w=i*i,k=(s==o?-1:1)*Y.sqrt(H((_*w-_*m*m-w*y*y)/(_*m*m+w*y*y))),B=k*r*m/i+(t+l)/2,C=k*-i*y/r+(e+h)/2,S=Y.asin(((e-C)/i).toFixed(9)),A=Y.asin(((h-C)/i).toFixed(9));S=t<B?U-S:S,A=l<B?U-A:A,S<0&&(S=2*U+S),A<0&&(A=2*U+A),o&&S>A&&(S-=2*U),!o&&A>S&&(A-=2*U)}var T=A-S;if(H(T)>c){var E=A,M=l,N=h;A=S+c*(o&&A>S?1:-1),l=B+r*Y.cos(A),h=C+i*Y.sin(A),p=Ut(l,h,r,i,a,0,o,M,N,[A,E,B,C])}T=A-S;var L=Y.cos(S),z=Y.sin(S),F=Y.cos(A),R=Y.sin(A),j=Y.tan(T/4),I=4/3*r*j,D=4/3*i*j,V=[t,e],O=[t+I*z,e-D*L],W=[l+I*R,h-D*F],G=[l,h];if(O[0]=2*V[0]-O[0],O[1]=2*V[1]-O[1],u)return[O,W,G][P](p);p=[O,W,G][P](p).join()[q](",");for(var X=[],$=0,Z=p.length;$<Z;$++)X[$]=$%2?g(p[$-1],p[$],f).y:g(p[$],p[$+1],f).x;return X},$t=function(t,e,r,i,n,a,s,o,l){var h=1-l;return{x:X(h,3)*t+3*X(h,2)*l*r+3*h*l*l*n+X(l,3)*s,y:X(h,3)*e+3*X(h,2)*l*i+3*h*l*l*a+X(l,3)*o}},Zt=n(function(t,e,r,i,n,a,s,o){var l=n-2*r+t-(s-2*n+r),h=2*(r-t)-2*(n-r),u=t-r,c=(-h+Y.sqrt(h*h-4*l*u))/2/l,f=(-h-Y.sqrt(h*h-4*l*u))/2/l,p=[e,o],d=[t,s],g;return H(c)>"1e12"&&(c=.5),H(f)>"1e12"&&(f=.5),c>0&&c<1&&(g=$t(t,e,r,i,n,a,s,o,c),d.push(g.x),p.push(g.y)),f>0&&f<1&&(g=$t(t,e,r,i,n,a,s,o,f),d.push(g.x),p.push(g.y)),l=a-2*i+e-(o-2*a+i),h=2*(i-e)-2*(a-i),u=e-i,c=(-h+Y.sqrt(h*h-4*l*u))/2/l,f=(-h-Y.sqrt(h*h-4*l*u))/2/l,H(c)>"1e12"&&(c=.5),H(f)>"1e12"&&(f=.5),c>0&&c<1&&(g=$t(t,e,r,i,n,a,s,o,c),d.push(g.x),p.push(g.y)),f>0&&f<1&&(g=$t(t,e,r,i,n,a,s,o,f),d.push(g.x),p.push(g.y)),{min:{x:G[z](0,d),y:G[z](0,p)},max:{x:W[z](0,d),y:W[z](0,p)}}}),Qt=e._path2curve=n(function(t,e){var r=!e&&Vt(t);if(!e&&r.curve)return Yt(r.curve);for(var i=Gt(t),n=e&&Gt(e),a={x:0,y:0,bx:0,by:0,X:0,Y:0,qx:null,qy:null},s={x:0,y:0,bx:0,by:0,X:0,Y:0,qx:null,qy:null},o=(function(t,e,r){var i,n,a={T:1,Q:1};if(!t)return["C",e.x,e.y,e.x,e.y,e.x,e.y];switch(!(t[0]in a)&&(e.qx=e.qy=null),t[0]){case"M":e.X=t[1],e.Y=t[2];break;case"A":t=["C"][P](Ut[z](0,[e.x,e.y][P](t.slice(1))));break;case"S":"C"==r||"S"==r?(i=2*e.x-e.bx,n=2*e.y-e.by):(i=e.x,n=e.y),t=["C",i,n][P](t.slice(1));break;case"T":"Q"==r||"T"==r?(e.qx=2*e.x-e.qx,e.qy=2*e.y-e.qy):(e.qx=e.x,e.qy=e.y),t=["C"][P](Xt(e.x,e.y,e.qx,e.qy,t[1],t[2]));break;case"Q":e.qx=t[1],e.qy=t[2],t=["C"][P](Xt(e.x,e.y,t[1],t[2],t[3],t[4]));break;case"L":t=["C"][P](Ht(e.x,e.y,t[1],t[2]));break;case"H":t=["C"][P](Ht(e.x,e.y,t[1],e.y));break;case"V":t=["C"][P](Ht(e.x,e.y,e.x,t[1]));break;case"Z":t=["C"][P](Ht(e.x,e.y,e.X,e.Y))}return t}),l=function(t,e){if(t[e].length>7){t[e].shift();for(var r=t[e];r.length;)u[e]="A",n&&(c[e]="A"),t.splice(e++,0,["C"][P](r.splice(0,6)));t.splice(e,1),g=W(i.length,n&&n.length||0)}},h=function(t,e,r,a,s){t&&e&&"M"==t[s][0]&&"M"!=e[s][0]&&(e.splice(s,0,["M",a.x,a.y]),r.bx=0,r.by=0,r.x=t[s][1],r.y=t[s][2],g=W(i.length,n&&n.length||0))},u=[],c=[],f="",p="",d=0,g=W(i.length,n&&n.length||0);d<g;d++){i[d]&&(f=i[d][0]),"C"!=f&&(u[d]=f,d&&(p=u[d-1])),i[d]=o(i[d],a,p),"A"!=u[d]&&"C"==f&&(u[d]="C"),l(i,d),n&&(n[d]&&(f=n[d][0]),"C"!=f&&(c[d]=f,d&&(p=c[d-1])),n[d]=o(n[d],s,p),"A"!=c[d]&&"C"==f&&(c[d]="C"),l(n,d)),h(i,n,a,s,d),h(n,i,s,a,d);var v=i[d],x=n&&n[d],y=v.length,m=n&&x.length;a.x=v[y-2],a.y=v[y-1],a.bx=ht(v[y-4])||a.x,a.by=ht(v[y-3])||a.y,s.bx=n&&(ht(x[m-4])||s.x),s.by=n&&(ht(x[m-3])||s.y),s.x=n&&x[m-2],s.y=n&&x[m-1]}return n||(r.curve=Yt(i)),n?[i,n]:i},null,Yt),Jt=e._parseDots=n(function(t){for(var r=[],i=0,n=t.length;i<n;i++){var a={},s=t[i].match(/^([^:]*):?([\d\.]*)/);if(a.color=e.getRGB(s[1]),a.color.error)return null;a.opacity=a.color.opacity,a.color=a.color.hex,s[2]&&(a.offset=s[2]+"%"),r.push(a)}for(i=1,n=r.length-1;i<n;i++)if(!r[i].offset){for(var o=ht(r[i-1].offset||0),l=0,h=i+1;h<n;h++)if(r[h].offset){l=r[h].offset;break}l||(l=100,h=n),l=ht(l);for(var u=(l-o)/(h-i+1);i<h;i++)o+=u,r[i].offset=o+"%"}return r}),Kt=e._tear=function(t,e){t==e.top&&(e.top=t.prev),t==e.bottom&&(e.bottom=t.next),t.next&&(t.next.prev=t.prev),t.prev&&(t.prev.next=t.next)},te=e._tofront=function(t,e){e.top!==t&&(Kt(t,e),t.next=null,t.prev=e.top,e.top.next=t,e.top=t)},ee=e._toback=function(t,e){e.bottom!==t&&(Kt(t,e),t.next=e.bottom,t.prev=null,e.bottom.prev=t,e.bottom=t)},re=e._insertafter=function(t,e,r){Kt(t,r),e==r.top&&(r.top=t),e.next&&(e.next.prev=t),t.next=e.next,t.prev=e,e.next=t},ie=e._insertbefore=function(t,e,r){Kt(t,r),e==r.bottom&&(r.bottom=t),e.prev&&(e.prev.next=t),t.prev=e.prev,e.prev=t,t.next=e},ne=e.toMatrix=function(t,e){var r=Ot(t),i={_:{transform:R},getBBox:function(){return r}};return se(i,e),i.matrix},ae=e.transformPath=function(t,e){return Mt(t,ne(t,e))},se=e._extractTransform=function(t,r){if(null==r)return t._.transform;r=I(r).replace(/\.{3}|\u2026/g,t._.transform||R);var i=e.parseTransformString(r),n=0,a=0,s=0,o=1,l=1,h=t._,u=new g;if(h.transform=i||[],i)for(var c=0,f=i.length;c<f;c++){var p=i[c],d=p.length,v=I(p[0]).toLowerCase(),x=p[0]!=v,y=x?u.invert():0,m,b,_,w,k;"t"==v&&3==d?x?(m=y.x(0,0),b=y.y(0,0),_=y.x(p[1],p[2]),w=y.y(p[1],p[2]),u.translate(_-m,w-b)):u.translate(p[1],p[2]):"r"==v?2==d?(k=k||t.getBBox(1),u.rotate(p[1],k.x+k.width/2,k.y+k.height/2),n+=p[1]):4==d&&(x?(_=y.x(p[2],p[3]),w=y.y(p[2],p[3]),u.rotate(p[1],_,w)):u.rotate(p[1],p[2],p[3]),n+=p[1]):"s"==v?2==d||3==d?(k=k||t.getBBox(1),u.scale(p[1],p[d-1],k.x+k.width/2,k.y+k.height/2),o*=p[1],l*=p[d-1]):5==d&&(x?(_=y.x(p[3],p[4]),w=y.y(p[3],p[4]),u.scale(p[1],p[2],_,w)):u.scale(p[1],p[2],p[3],p[4]),o*=p[1],l*=p[2]):"m"==v&&7==d&&u.add(p[1],p[2],p[3],p[4],p[5],p[6]),h.dirtyT=1,t.matrix=u}t.matrix=u,h.sx=o,h.sy=l,h.deg=n,h.dx=a=u.e,h.dy=s=u.f,1==o&&1==l&&!n&&h.bbox?(h.bbox.x+=+a,h.bbox.y+=+s):h.dirtyT=1},oe=function(t){var e=t[0];switch(e.toLowerCase()){case"t":return[e,0,0];case"m":return[e,1,0,0,1,0,0];case"r":return 4==t.length?[e,0,t[2],t[3]]:[e,0];case"s":return 5==t.length?[e,1,1,t[3],t[4]]:3==t.length?[e,1,1]:[e,1]}},le=e._equaliseTransform=function(t,r){r=I(r).replace(/\.{3}|\u2026/g,t),t=e.parseTransformString(t)||[],r=e.parseTransformString(r)||[];for(var i=W(t.length,r.length),n=[],a=[],s=0,o,l,h,u;s<i;s++){if(h=t[s]||oe(r[s]),u=r[s]||oe(h),h[0]!=u[0]||"r"==h[0].toLowerCase()&&(h[2]!=u[2]||h[3]!=u[3])||"s"==h[0].toLowerCase()&&(h[3]!=u[3]||h[4]!=u[4]))return;for(n[s]=[],a[s]=[],o=0,l=W(h.length,u.length);o<l;o++)o in h&&(n[s][o]=h[o]),o in u&&(a[s][o]=u[o])}return{from:n,to:a}};e._getContainer=function(t,r,i,n){var a;if(a=null!=n||e.is(t,"object")?t:T.doc.getElementById(t),null!=a)return a.tagName?null==r?{container:a,width:a.style.pixelWidth||a.offsetWidth,height:a.style.pixelHeight||a.offsetHeight}:{container:a,width:r,height:i}:{container:1,x:t,y:r,width:i,height:n}},e.pathToRelative=Wt,e._engine={},e.path2curve=Qt,e.matrix=function(t,e,r,i,n,a){return new g(t,e,r,i,n,a)},function(t){function r(t){return t[0]*t[0]+t[1]*t[1]}function i(t){var e=Y.sqrt(r(t));t[0]&&(t[0]/=e),t[1]&&(t[1]/=e)}t.add=function(t,e,r,i,n,a){var s=[[],[],[]],o=[[this.a,this.c,this.e],[this.b,this.d,this.f],[0,0,1]],l=[[t,r,n],[e,i,a],[0,0,1]],h,u,c,f;for(t&&t instanceof g&&(l=[[t.a,t.c,t.e],[t.b,t.d,t.f],[0,0,1]]),h=0;h<3;h++)for(u=0;u<3;u++){for(f=0,c=0;c<3;c++)f+=o[h][c]*l[c][u];s[h][u]=f}this.a=s[0][0],this.b=s[1][0],this.c=s[0][1],this.d=s[1][1],this.e=s[0][2],this.f=s[1][2]},t.invert=function(){var t=this,e=t.a*t.d-t.b*t.c;return new g(t.d/e,-t.b/e,-t.c/e,t.a/e,(t.c*t.f-t.d*t.e)/e,(t.b*t.e-t.a*t.f)/e)},t.clone=function(){return new g(this.a,this.b,this.c,this.d,this.e,this.f)},t.translate=function(t,e){
this.add(1,0,0,1,t,e)},t.scale=function(t,e,r,i){null==e&&(e=t),(r||i)&&this.add(1,0,0,1,r,i),this.add(t,0,0,e,0,0),(r||i)&&this.add(1,0,0,1,-r,-i)},t.rotate=function(t,r,i){t=e.rad(t),r=r||0,i=i||0;var n=+Y.cos(t).toFixed(9),a=+Y.sin(t).toFixed(9);this.add(n,a,-a,n,r,i),this.add(1,0,0,1,-r,-i)},t.x=function(t,e){return t*this.a+e*this.c+this.e},t.y=function(t,e){return t*this.b+e*this.d+this.f},t.get=function(t){return+this[I.fromCharCode(97+t)].toFixed(4)},t.toString=function(){return e.svg?"matrix("+[this.get(0),this.get(1),this.get(2),this.get(3),this.get(4),this.get(5)].join()+")":[this.get(0),this.get(2),this.get(1),this.get(3),0,0].join()},t.toFilter=function(){return"progid:DXImageTransform.Microsoft.Matrix(M11="+this.get(0)+", M12="+this.get(2)+", M21="+this.get(1)+", M22="+this.get(3)+", Dx="+this.get(4)+", Dy="+this.get(5)+", sizingmethod='auto expand')"},t.offset=function(){return[this.e.toFixed(4),this.f.toFixed(4)]},t.split=function(){var t={};t.dx=this.e,t.dy=this.f;var n=[[this.a,this.c],[this.b,this.d]];t.scalex=Y.sqrt(r(n[0])),i(n[0]),t.shear=n[0][0]*n[1][0]+n[0][1]*n[1][1],n[1]=[n[1][0]-n[0][0]*t.shear,n[1][1]-n[0][1]*t.shear],t.scaley=Y.sqrt(r(n[1])),i(n[1]),t.shear/=t.scaley;var a=-n[0][1],s=n[1][1];return s<0?(t.rotate=e.deg(Y.acos(s)),a<0&&(t.rotate=360-t.rotate)):t.rotate=e.deg(Y.asin(a)),t.isSimple=!(+t.shear.toFixed(9)||t.scalex.toFixed(9)!=t.scaley.toFixed(9)&&t.rotate),t.isSuperSimple=!+t.shear.toFixed(9)&&t.scalex.toFixed(9)==t.scaley.toFixed(9)&&!t.rotate,t.noRotation=!+t.shear.toFixed(9)&&!t.rotate,t},t.toTransformString=function(t){var e=t||this[q]();return e.isSimple?(e.scalex=+e.scalex.toFixed(4),e.scaley=+e.scaley.toFixed(4),e.rotate=+e.rotate.toFixed(4),(e.dx||e.dy?"t"+[e.dx,e.dy]:R)+(1!=e.scalex||1!=e.scaley?"s"+[e.scalex,e.scaley,0,0]:R)+(e.rotate?"r"+[e.rotate,0,0]:R)):"m"+[this.get(0),this.get(1),this.get(2),this.get(3),this.get(4),this.get(5)]}}(g.prototype);for(var he=function(){this.returnValue=!1},ue=function(){return this.originalEvent.preventDefault()},ce=function(){this.cancelBubble=!0},fe=function(){return this.originalEvent.stopPropagation()},pe=function(t){var e=T.doc.documentElement.scrollTop||T.doc.body.scrollTop,r=T.doc.documentElement.scrollLeft||T.doc.body.scrollLeft;return{x:t.clientX+r,y:t.clientY+e}},de=function(){return T.doc.addEventListener?function(t,e,r,i){var n=function(t){var e=pe(t);return r.call(i,t,e.x,e.y)};if(t.addEventListener(e,n,!1),F&&V[e]){var a=function(e){for(var n=pe(e),a=e,s=0,o=e.targetTouches&&e.targetTouches.length;s<o;s++)if(e.targetTouches[s].target==t){e=e.targetTouches[s],e.originalEvent=a,e.preventDefault=ue,e.stopPropagation=fe;break}return r.call(i,e,n.x,n.y)};t.addEventListener(V[e],a,!1)}return function(){return t.removeEventListener(e,n,!1),F&&V[e]&&t.removeEventListener(V[e],a,!1),!0}}:T.doc.attachEvent?function(t,e,r,i){var n=function(t){t=t||T.win.event;var e=T.doc.documentElement.scrollTop||T.doc.body.scrollTop,n=T.doc.documentElement.scrollLeft||T.doc.body.scrollLeft,a=t.clientX+n,s=t.clientY+e;return t.preventDefault=t.preventDefault||he,t.stopPropagation=t.stopPropagation||ce,r.call(i,t,a,s)};t.attachEvent("on"+e,n);var a=function(){return t.detachEvent("on"+e,n),!0};return a}:void 0}(),ge=[],ve=function(e){for(var r=e.clientX,i=e.clientY,n=T.doc.documentElement.scrollTop||T.doc.body.scrollTop,a=T.doc.documentElement.scrollLeft||T.doc.body.scrollLeft,s,o=ge.length;o--;){if(s=ge[o],F&&e.touches){for(var l=e.touches.length,h;l--;)if(h=e.touches[l],h.identifier==s.el._drag.id){r=h.clientX,i=h.clientY,(e.originalEvent?e.originalEvent:e).preventDefault();break}}else e.preventDefault();var u=s.el.node,c,f=u.nextSibling,p=u.parentNode,d=u.style.display;T.win.opera&&p.removeChild(u),u.style.display="none",c=s.el.paper.getElementByPoint(r,i),u.style.display=d,T.win.opera&&(f?p.insertBefore(u,f):p.appendChild(u)),c&&t("raphael.drag.over."+s.el.id,s.el,c),r+=a,i+=n,t("raphael.drag.move."+s.el.id,s.move_scope||s.el,r-s.el._drag.x,i-s.el._drag.y,r,i,e)}},xe=function(r){e.unmousemove(ve).unmouseup(xe);for(var i=ge.length,n;i--;)n=ge[i],n.el._drag={},t("raphael.drag.end."+n.el.id,n.end_scope||n.start_scope||n.move_scope||n.el,r);ge=[]},ye=e.el={},me=D.length;me--;)!function(t){e[t]=ye[t]=function(r,i){return e.is(r,"function")&&(this.events=this.events||[],this.events.push({name:t,f:r,unbind:de(this.shape||this.node||T.doc,t,r,i||this)})),this},e["un"+t]=ye["un"+t]=function(r){for(var i=this.events||[],n=i.length;n--;)i[n].name!=t||!e.is(r,"undefined")&&i[n].f!=r||(i[n].unbind(),i.splice(n,1),!i.length&&delete this.events);return this}}(D[me]);ye.data=function(r,i){var n=wt[this.id]=wt[this.id]||{};if(0==arguments.length)return n;if(1==arguments.length){if(e.is(r,"object")){for(var a in r)r[A](a)&&this.data(a,r[a]);return this}return t("raphael.data.get."+this.id,this,n[r],r),n[r]}return n[r]=i,t("raphael.data.set."+this.id,this,i,r),this},ye.removeData=function(t){return null==t?wt[this.id]={}:wt[this.id]&&delete wt[this.id][t],this},ye.getData=function(){return r(wt[this.id]||{})},ye.hover=function(t,e,r,i){return this.mouseover(t,r).mouseout(e,i||r)},ye.unhover=function(t,e){return this.unmouseover(t).unmouseout(e)};var be=[];ye.drag=function(r,i,n,a,s,o){function l(l){(l.originalEvent||l).preventDefault();var h=l.clientX,u=l.clientY,c=T.doc.documentElement.scrollTop||T.doc.body.scrollTop,f=T.doc.documentElement.scrollLeft||T.doc.body.scrollLeft;if(this._drag.id=l.identifier,F&&l.touches)for(var p=l.touches.length,d;p--;)if(d=l.touches[p],this._drag.id=d.identifier,d.identifier==this._drag.id){h=d.clientX,u=d.clientY;break}this._drag.x=h+f,this._drag.y=u+c,!ge.length&&e.mousemove(ve).mouseup(xe),ge.push({el:this,move_scope:a,start_scope:s,end_scope:o}),i&&t.on("raphael.drag.start."+this.id,i),r&&t.on("raphael.drag.move."+this.id,r),n&&t.on("raphael.drag.end."+this.id,n),t("raphael.drag.start."+this.id,s||a||this,l.clientX+f,l.clientY+c,l)}return this._drag={},be.push({el:this,start:l}),this.mousedown(l),this},ye.onDragOver=function(e){e?t.on("raphael.drag.over."+this.id,e):t.unbind("raphael.drag.over."+this.id)},ye.undrag=function(){for(var r=be.length;r--;)be[r].el==this&&(this.unmousedown(be[r].start),be.splice(r,1),t.unbind("raphael.drag.*."+this.id));!be.length&&e.unmousemove(ve).unmouseup(xe),ge=[]},N.circle=function(t,r,i){var n=e._engine.circle(this,t||0,r||0,i||0);return this.__set__&&this.__set__.push(n),n},N.rect=function(t,r,i,n,a){var s=e._engine.rect(this,t||0,r||0,i||0,n||0,a||0);return this.__set__&&this.__set__.push(s),s},N.ellipse=function(t,r,i,n){var a=e._engine.ellipse(this,t||0,r||0,i||0,n||0);return this.__set__&&this.__set__.push(a),a},N.path=function(t){t&&!e.is(t,Z)&&!e.is(t[0],Q)&&(t+=R);var r=e._engine.path(e.format[z](e,arguments),this);return this.__set__&&this.__set__.push(r),r},N.image=function(t,r,i,n,a){var s=e._engine.image(this,t||"about:blank",r||0,i||0,n||0,a||0);return this.__set__&&this.__set__.push(s),s},N.text=function(t,r,i){var n=e._engine.text(this,t||0,r||0,I(i));return this.__set__&&this.__set__.push(n),n},N.set=function(t){!e.is(t,"array")&&(t=Array.prototype.splice.call(arguments,0,arguments.length));var r=new ze(t);return this.__set__&&this.__set__.push(r),r.paper=this,r.type="set",r},N.setStart=function(t){this.__set__=t||this.set()},N.setFinish=function(t){var e=this.__set__;return delete this.__set__,e},N.getSize=function(){var t=this.canvas.parentNode;return{width:t.offsetWidth,height:t.offsetHeight}},N.setSize=function(t,r){return e._engine.setSize.call(this,t,r)},N.setViewBox=function(t,r,i,n,a){return e._engine.setViewBox.call(this,t,r,i,n,a)},N.top=N.bottom=null,N.raphael=e;var _e=function(t){var e=t.getBoundingClientRect(),r=t.ownerDocument,i=r.body,n=r.documentElement,a=n.clientTop||i.clientTop||0,s=n.clientLeft||i.clientLeft||0,o=e.top+(T.win.pageYOffset||n.scrollTop||i.scrollTop)-a,l=e.left+(T.win.pageXOffset||n.scrollLeft||i.scrollLeft)-s;return{y:o,x:l}};N.getElementByPoint=function(t,e){var r=this,i=r.canvas,n=T.doc.elementFromPoint(t,e);if(T.win.opera&&"svg"==n.tagName){var a=_e(i),s=i.createSVGRect();s.x=t-a.x,s.y=e-a.y,s.width=s.height=1;var o=i.getIntersectionList(s,null);o.length&&(n=o[o.length-1])}if(!n)return null;for(;n.parentNode&&n!=i.parentNode&&!n.raphael;)n=n.parentNode;return n==r.canvas.parentNode&&(n=i),n=n&&n.raphael?r.getById(n.raphaelid):null},N.getElementsByBBox=function(t){var r=this.set();return this.forEach(function(i){e.isBBoxIntersect(i.getBBox(),t)&&r.push(i)}),r},N.getById=function(t){for(var e=this.bottom;e;){if(e.id==t)return e;e=e.next}return null},N.forEach=function(t,e){for(var r=this.bottom;r;){if(t.call(e,r)===!1)return this;r=r.next}return this},N.getElementsByPoint=function(t,e){var r=this.set();return this.forEach(function(i){i.isPointInside(t,e)&&r.push(i)}),r},ye.isPointInside=function(t,r){var i=this.realPath=Et[this.type](this);return this.attr("transform")&&this.attr("transform").length&&(i=e.transformPath(i,this.attr("transform"))),e.isPointInsidePath(i,t,r)},ye.getBBox=function(t){if(this.removed)return{};var e=this._;return t?(!e.dirty&&e.bboxwt||(this.realPath=Et[this.type](this),e.bboxwt=Ot(this.realPath),e.bboxwt.toString=x,e.dirty=0),e.bboxwt):((e.dirty||e.dirtyT||!e.bbox)&&(!e.dirty&&this.realPath||(e.bboxwt=0,this.realPath=Et[this.type](this)),e.bbox=Ot(Mt(this.realPath,this.matrix)),e.bbox.toString=x,e.dirty=e.dirtyT=0),e.bbox)},ye.clone=function(){if(this.removed)return null;var t=this.paper[this.type]().attr(this.attr());return this.__set__&&this.__set__.push(t),t},ye.glow=function(t){if("text"==this.type)return null;t=t||{};var e={width:(t.width||10)+(+this.attr("stroke-width")||1),fill:t.fill||!1,opacity:null==t.opacity?.5:t.opacity,offsetx:t.offsetx||0,offsety:t.offsety||0,color:t.color||"#000"},r=e.width/2,i=this.paper,n=i.set(),a=this.realPath||Et[this.type](this);a=this.matrix?Mt(a,this.matrix):a;for(var s=1;s<r+1;s++)n.push(i.path(a).attr({stroke:e.color,fill:e.fill?e.color:"none","stroke-linejoin":"round","stroke-linecap":"round","stroke-width":+(e.width/r*s).toFixed(3),opacity:+(e.opacity/r).toFixed(3)}));return n.insertBefore(this).translate(e.offsetx,e.offsety)};var we={},ke=function(t,r,i,n,a,s,o,u,c){return null==c?l(t,r,i,n,a,s,o,u):e.findDotsAtSegment(t,r,i,n,a,s,o,u,h(t,r,i,n,a,s,o,u,c))},Be=function(t,r){return function(i,n,a){i=Qt(i);for(var s,o,l,h,u="",c={},f,p=0,d=0,g=i.length;d<g;d++){if(l=i[d],"M"==l[0])s=+l[1],o=+l[2];else{if(h=ke(s,o,l[1],l[2],l[3],l[4],l[5],l[6]),p+h>n){if(r&&!c.start){if(f=ke(s,o,l[1],l[2],l[3],l[4],l[5],l[6],n-p),u+=["C"+f.start.x,f.start.y,f.m.x,f.m.y,f.x,f.y],a)return u;c.start=u,u=["M"+f.x,f.y+"C"+f.n.x,f.n.y,f.end.x,f.end.y,l[5],l[6]].join(),p+=h,s=+l[5],o=+l[6];continue}if(!t&&!r)return f=ke(s,o,l[1],l[2],l[3],l[4],l[5],l[6],n-p),{x:f.x,y:f.y,alpha:f.alpha}}p+=h,s=+l[5],o=+l[6]}u+=l.shift()+l}return c.end=u,f=t?p:r?c:e.findDotsAtSegment(s,o,l[0],l[1],l[2],l[3],l[4],l[5],1),f.alpha&&(f={x:f.x,y:f.y,alpha:f.alpha}),f}},Ce=Be(1),Se=Be(),Ae=Be(0,1);e.getTotalLength=Ce,e.getPointAtLength=Se,e.getSubpath=function(t,e,r){if(this.getTotalLength(t)-r<1e-6)return Ae(t,e).end;var i=Ae(t,r,1);return e?Ae(i,e).end:i},ye.getTotalLength=function(){var t=this.getPath();if(t)return this.node.getTotalLength?this.node.getTotalLength():Ce(t)},ye.getPointAtLength=function(t){var e=this.getPath();if(e)return Se(e,t)},ye.getPath=function(){var t,r=e._getPath[this.type];if("text"!=this.type&&"set"!=this.type)return r&&(t=r(this)),t},ye.getSubpath=function(t,r){var i=this.getPath();if(i)return e.getSubpath(i,t,r)};var Te=e.easing_formulas={linear:function(t){return t},"<":function(t){return X(t,1.7)},">":function(t){return X(t,.48)},"<>":function(t){var e=.48-t/1.04,r=Y.sqrt(.1734+e*e),i=r-e,n=X(H(i),1/3)*(i<0?-1:1),a=-r-e,s=X(H(a),1/3)*(a<0?-1:1),o=n+s+.5;return 3*(1-o)*o*o+o*o*o},backIn:function(t){var e=1.70158;return t*t*((e+1)*t-e)},backOut:function(t){t-=1;var e=1.70158;return t*t*((e+1)*t+e)+1},elastic:function(t){return t==!!t?t:X(2,-10*t)*Y.sin((t-.075)*(2*U)/.3)+1},bounce:function(t){var e=7.5625,r=2.75,i;return t<1/r?i=e*t*t:t<2/r?(t-=1.5/r,i=e*t*t+.75):t<2.5/r?(t-=2.25/r,i=e*t*t+.9375):(t-=2.625/r,i=e*t*t+.984375),i}};Te.easeIn=Te["ease-in"]=Te["<"],Te.easeOut=Te["ease-out"]=Te[">"],Te.easeInOut=Te["ease-in-out"]=Te["<>"],Te["back-in"]=Te.backIn,Te["back-out"]=Te.backOut;var Ee=[],Me=window.requestAnimationFrame||window.webkitRequestAnimationFrame||window.mozRequestAnimationFrame||window.oRequestAnimationFrame||window.msRequestAnimationFrame||function(t){setTimeout(t,16)},Ne=function(){for(var r=+new Date,i=0;i<Ee.length;i++){var n=Ee[i];if(!n.el.removed&&!n.paused){var a=r-n.start,s=n.ms,o=n.easing,l=n.from,h=n.diff,u=n.to,c=n.t,f=n.el,p={},d,g={},v;if(n.initstatus?(a=(n.initstatus*n.anim.top-n.prev)/(n.percent-n.prev)*s,n.status=n.initstatus,delete n.initstatus,n.stop&&Ee.splice(i--,1)):n.status=(n.prev+(n.percent-n.prev)*(a/s))/n.anim.top,!(a<0))if(a<s){var x=o(a/s);for(var y in l)if(l[A](y)){switch(pt[y]){case $:d=+l[y]+x*s*h[y];break;case"colour":d="rgb("+[Le(ot(l[y].r+x*s*h[y].r)),Le(ot(l[y].g+x*s*h[y].g)),Le(ot(l[y].b+x*s*h[y].b))].join(",")+")";break;case"path":d=[];for(var m=0,_=l[y].length;m<_;m++){d[m]=[l[y][m][0]];for(var w=1,k=l[y][m].length;w<k;w++)d[m][w]=+l[y][m][w]+x*s*h[y][m][w];d[m]=d[m].join(j)}d=d.join(j);break;case"transform":if(h[y].real)for(d=[],m=0,_=l[y].length;m<_;m++)for(d[m]=[l[y][m][0]],w=1,k=l[y][m].length;w<k;w++)d[m][w]=l[y][m][w]+x*s*h[y][m][w];else{var B=function(t){return+l[y][t]+x*s*h[y][t]};d=[["m",B(0),B(1),B(2),B(3),B(4),B(5)]]}break;case"csv":if("clip-rect"==y)for(d=[],m=4;m--;)d[m]=+l[y][m]+x*s*h[y][m];break;default:var C=[][P](l[y]);for(d=[],m=f.paper.customAttributes[y].length;m--;)d[m]=+C[m]+x*s*h[y][m]}p[y]=d}f.attr(p),function(e,r,i){setTimeout(function(){t("raphael.anim.frame."+e,r,i)})}(f.id,f,n.anim)}else{if(function(r,i,n){setTimeout(function(){t("raphael.anim.frame."+i.id,i,n),t("raphael.anim.finish."+i.id,i,n),e.is(r,"function")&&r.call(i)})}(n.callback,f,n.anim),f.attr(u),Ee.splice(i--,1),n.repeat>1&&!n.next){for(v in u)u[A](v)&&(g[v]=n.totalOrigin[v]);n.el.attr(g),b(n.anim,n.el,n.anim.percents[0],null,n.totalOrigin,n.repeat-1)}n.next&&!n.stop&&b(n.anim,n.el,n.next,null,n.totalOrigin,n.repeat)}}}Ee.length&&Me(Ne)},Le=function(t){return t>255?255:t<0?0:t};ye.animateWith=function(t,r,i,n,a,s){var o=this;if(o.removed)return s&&s.call(o),o;var l=i instanceof m?i:e.animation(i,n,a,s),h,u;b(l,o,l.percents[0],null,o.attr());for(var c=0,f=Ee.length;c<f;c++)if(Ee[c].anim==r&&Ee[c].el==t){Ee[f-1].start=Ee[c].start;break}return o},ye.onAnimation=function(e){return e?t.on("raphael.anim.frame."+this.id,e):t.unbind("raphael.anim.frame."+this.id),this},m.prototype.delay=function(t){var e=new m(this.anim,this.ms);return e.times=this.times,e.del=+t||0,e},m.prototype.repeat=function(t){var e=new m(this.anim,this.ms);return e.del=this.del,e.times=Y.floor(W(t,0))||1,e},e.animation=function(t,r,i,n){if(t instanceof m)return t;!e.is(i,"function")&&i||(n=n||i||null,i=null),t=Object(t),r=+r||0;var a={},s,o;for(o in t)t[A](o)&&ht(o)!=o&&ht(o)+"%"!=o&&(s=!0,a[o]=t[o]);if(s)return i&&(a.easing=i),n&&(a.callback=n),new m({100:a},r);if(n){var l=0;for(var h in t){var u=ut(h);t[A](h)&&u>l&&(l=u)}l+="%",!t[l].callback&&(t[l].callback=n)}return new m(t,r)},ye.animate=function(t,r,i,n){var a=this;if(a.removed)return n&&n.call(a),a;var s=t instanceof m?t:e.animation(t,r,i,n);return b(s,a,s.percents[0],null,a.attr()),a},ye.setTime=function(t,e){return t&&null!=e&&this.status(t,G(e,t.ms)/t.ms),this},ye.status=function(t,e){var r=[],i=0,n,a;if(null!=e)return b(t,this,-1,G(e,1)),this;for(n=Ee.length;i<n;i++)if(a=Ee[i],a.el.id==this.id&&(!t||a.anim==t)){if(t)return a.status;r.push({anim:a.anim,status:a.status})}return t?0:r},ye.pause=function(e){for(var r=0;r<Ee.length;r++)Ee[r].el.id!=this.id||e&&Ee[r].anim!=e||t("raphael.anim.pause."+this.id,this,Ee[r].anim)!==!1&&(Ee[r].paused=!0);return this},ye.resume=function(e){for(var r=0;r<Ee.length;r++)if(Ee[r].el.id==this.id&&(!e||Ee[r].anim==e)){var i=Ee[r];t("raphael.anim.resume."+this.id,this,i.anim)!==!1&&(delete i.paused,this.status(i.anim,i.status))}return this},ye.stop=function(e){for(var r=0;r<Ee.length;r++)Ee[r].el.id!=this.id||e&&Ee[r].anim!=e||t("raphael.anim.stop."+this.id,this,Ee[r].anim)!==!1&&Ee.splice(r--,1);return this},t.on("raphael.remove",_),t.on("raphael.clear",_),ye.toString=function(){return"Raphaël’s object"};var ze=function(t){if(this.items=[],this.length=0,this.type="set",t)for(var e=0,r=t.length;e<r;e++)!t[e]||t[e].constructor!=ye.constructor&&t[e].constructor!=ze||(this[this.items.length]=this.items[this.items.length]=t[e],this.length++)},Pe=ze.prototype;Pe.push=function(){for(var t,e,r=0,i=arguments.length;r<i;r++)t=arguments[r],!t||t.constructor!=ye.constructor&&t.constructor!=ze||(e=this.items.length,this[e]=this.items[e]=t,this.length++);return this},Pe.pop=function(){return this.length&&delete this[this.length--],this.items.pop()},Pe.forEach=function(t,e){for(var r=0,i=this.items.length;r<i;r++)if(t.call(e,this.items[r],r)===!1)return this;return this};for(var Fe in ye)ye[A](Fe)&&(Pe[Fe]=function(t){return function(){var e=arguments;return this.forEach(function(r){r[t][z](r,e)})}}(Fe));return Pe.attr=function(t,r){if(t&&e.is(t,Q)&&e.is(t[0],"object"))for(var i=0,n=t.length;i<n;i++)this.items[i].attr(t[i]);else for(var a=0,s=this.items.length;a<s;a++)this.items[a].attr(t,r);return this},Pe.clear=function(){for(;this.length;)this.pop()},Pe.splice=function(t,e,r){t=t<0?W(this.length+t,0):t,e=W(0,G(this.length-t,e));var i=[],n=[],a=[],s;for(s=2;s<arguments.length;s++)a.push(arguments[s]);for(s=0;s<e;s++)n.push(this[t+s]);for(;s<this.length-t;s++)i.push(this[t+s]);var o=a.length;for(s=0;s<o+i.length;s++)this.items[t+s]=this[t+s]=s<o?a[s]:i[s-o];for(s=this.items.length=this.length-=e-o;this[s];)delete this[s++];return new ze(n)},Pe.exclude=function(t){for(var e=0,r=this.length;e<r;e++)if(this[e]==t)return this.splice(e,1),!0},Pe.animate=function(t,r,i,n){(e.is(i,"function")||!i)&&(n=i||null);var a=this.items.length,s=a,o,l=this,h;if(!a)return this;n&&(h=function(){!--a&&n.call(l)}),i=e.is(i,Z)?i:h;var u=e.animation(t,r,i,h);for(o=this.items[--s].animate(u);s--;)this.items[s]&&!this.items[s].removed&&this.items[s].animateWith(o,u,u),this.items[s]&&!this.items[s].removed||a--;return this},Pe.insertAfter=function(t){for(var e=this.items.length;e--;)this.items[e].insertAfter(t);return this},Pe.getBBox=function(){for(var t=[],e=[],r=[],i=[],n=this.items.length;n--;)if(!this.items[n].removed){var a=this.items[n].getBBox();t.push(a.x),e.push(a.y),r.push(a.x+a.width),i.push(a.y+a.height)}return t=G[z](0,t),e=G[z](0,e),r=W[z](0,r),i=W[z](0,i),{x:t,y:e,x2:r,y2:i,width:r-t,height:i-e}},Pe.clone=function(t){t=this.paper.set();for(var e=0,r=this.items.length;e<r;e++)t.push(this.items[e].clone());return t},Pe.toString=function(){return"Raphaël‘s set"},Pe.glow=function(t){var e=this.paper.set();return this.forEach(function(r,i){var n=r.glow(t);null!=n&&n.forEach(function(t,r){e.push(t)})}),e},Pe.isPointInside=function(t,e){var r=!1;return this.forEach(function(i){if(i.isPointInside(t,e))return r=!0,!1}),r},e.registerFont=function(t){if(!t.face)return t;this.fonts=this.fonts||{};var e={w:t.w,face:{},glyphs:{}},r=t.face["font-family"];for(var i in t.face)t.face[A](i)&&(e.face[i]=t.face[i]);if(this.fonts[r]?this.fonts[r].push(e):this.fonts[r]=[e],!t.svg){e.face["units-per-em"]=ut(t.face["units-per-em"],10);for(var n in t.glyphs)if(t.glyphs[A](n)){var a=t.glyphs[n];if(e.glyphs[n]={w:a.w,k:{},d:a.d&&"M"+a.d.replace(/[mlcxtrv]/g,function(t){return{l:"L",c:"C",x:"z",t:"m",r:"l",v:"c"}[t]||"M"})+"z"},a.k)for(var s in a.k)a[A](s)&&(e.glyphs[n].k[s]=a.k[s])}}return t},N.getFont=function(t,r,i,n){if(n=n||"normal",i=i||"normal",r=+r||{normal:400,bold:700,lighter:300,bolder:800}[r]||400,e.fonts){var a=e.fonts[t];if(!a){var s=new RegExp("(^|\\s)"+t.replace(/[^\w\d\s+!~.:_-]/g,R)+"(\\s|$)","i");for(var o in e.fonts)if(e.fonts[A](o)&&s.test(o)){a=e.fonts[o];break}}var l;if(a)for(var h=0,u=a.length;h<u&&(l=a[h],l.face["font-weight"]!=r||l.face["font-style"]!=i&&l.face["font-style"]||l.face["font-stretch"]!=n);h++);return l}},N.print=function(t,r,i,n,a,s,o,l){s=s||"middle",o=W(G(o||0,1),-1),l=W(G(l||1,3),1);var h=I(i)[q](R),u=0,c=0,f=R,p;if(e.is(n,"string")&&(n=this.getFont(n)),n){p=(a||16)/n.face["units-per-em"];for(var d=n.face.bbox[q](k),g=+d[0],v=d[3]-d[1],x=0,y=+d[1]+("baseline"==s?v+ +n.face.descent:v/2),m=0,b=h.length;m<b;m++){if("\n"==h[m])u=0,w=0,c=0,x+=v*l;else{var _=c&&n.glyphs[h[m-1]]||{},w=n.glyphs[h[m]];u+=c?(_.w||n.w)+(_.k&&_.k[h[m]]||0)+n.w*o:0,c=1}w&&w.d&&(f+=e.transformPath(w.d,["t",u*p,x*p,"s",p,p,g,y,"t",(t-g)/p,(r-y)/p]))}}return this.path(f).attr({fill:"#000",stroke:"none"})},N.add=function(t){if(e.is(t,"array"))for(var r=this.set(),i=0,n=t.length,a;i<n;i++)a=t[i]||{},B[A](a.type)&&r.push(this[a.type]().attr(a));return r},e.format=function(t,r){var i=e.is(r,Q)?[0][P](r):arguments;return t&&e.is(t,Z)&&i.length-1&&(t=t.replace(C,function(t,e){return null==i[++e]?R:i[e]})),t||R},e.fullfill=function(){var t=/\{([^\}]+)\}/g,e=/(?:(?:^|\.)(.+?)(?=\[|\.|$|\()|\[('|")(.+?)\2\])(\(\))?/g,r=function(t,r,i){var n=i;return r.replace(e,function(t,e,r,i,a){e=e||i,n&&(e in n&&(n=n[e]),"function"==typeof n&&a&&(n=n()))}),n=(null==n||n==i?t:n)+""};return function(e,i){return String(e).replace(t,function(t,e){return r(t,e,i)})}}(),e.ninja=function(){if(E.was)T.win.Raphael=E.is;else{window.Raphael=void 0;try{delete window.Raphael}catch(t){}}return e},e.st=Pe,t.on("raphael.DOMload",function(){w=!0}),function(t,r,i){function n(){/in/.test(t.readyState)?setTimeout(n,9):e.eve("raphael.DOMload")}null==t.readyState&&t.addEventListener&&(t.addEventListener(r,i=function(){t.removeEventListener(r,i,!1),t.readyState="complete"},!1),t.readyState="loading"),n()}(document,"DOMContentLoaded"),e}.apply(e,i),!(void 0!==n&&(t.exports=n))},function(t,e,r){var i,n;!function(r){var a="0.5.0",s="hasOwnProperty",o=/[\.\/]/,l=/\s*,\s*/,h="*",u=function(){},c=function(t,e){return t-e},f,p,d={n:{}},g=function(){for(var t=0,e=this.length;t<e;t++)if("undefined"!=typeof this[t])return this[t]},v=function(){for(var t=this.length;--t;)if("undefined"!=typeof this[t])return this[t]},x=Object.prototype.toString,y=String,m=Array.isArray||function(t){return t instanceof Array||"[object Array]"==x.call(t)};eve=function(t,e){var r=d,i=p,n=Array.prototype.slice.call(arguments,2),a=eve.listeners(t),s=0,o=!1,l,h=[],u={},x=[],y=f,m=[];x.firstDefined=g,x.lastDefined=v,f=t,p=0;for(var b=0,_=a.length;b<_;b++)"zIndex"in a[b]&&(h.push(a[b].zIndex),a[b].zIndex<0&&(u[a[b].zIndex]=a[b]));for(h.sort(c);h[s]<0;)if(l=u[h[s++]],x.push(l.apply(e,n)),p)return p=i,x;for(b=0;b<_;b++)if(l=a[b],"zIndex"in l)if(l.zIndex==h[s]){if(x.push(l.apply(e,n)),p)break;do if(s++,l=u[h[s]],l&&x.push(l.apply(e,n)),p)break;while(l)}else u[l.zIndex]=l;else if(x.push(l.apply(e,n)),p)break;return p=i,f=y,x},eve._events=d,eve.listeners=function(t){var e=m(t)?t:t.split(o),r=d,i,n,a,s,l,u,c,f,p=[r],g=[];for(s=0,l=e.length;s<l;s++){for(f=[],u=0,c=p.length;u<c;u++)for(r=p[u].n,n=[r[e[s]],r[h]],a=2;a--;)i=n[a],i&&(f.push(i),g=g.concat(i.f||[]));p=f}return g},eve.separator=function(t){t?(t=y(t).replace(/(?=[\.\^\]\[\-])/g,"\\"),t="["+t+"]",o=new RegExp(t)):o=/[\.\/]/},eve.on=function(t,e){if("function"!=typeof e)return function(){};for(var r=m(t)?m(t[0])?t:[t]:y(t).split(l),i=0,n=r.length;i<n;i++)!function(t){for(var r=m(t)?t:y(t).split(o),i=d,n,a=0,s=r.length;a<s;a++)i=i.n,i=i.hasOwnProperty(r[a])&&i[r[a]]||(i[r[a]]={n:{}});for(i.f=i.f||[],a=0,s=i.f.length;a<s;a++)if(i.f[a]==e){n=!0;break}!n&&i.f.push(e)}(r[i]);return function(t){+t==+t&&(e.zIndex=+t)}},eve.f=function(t){var e=[].slice.call(arguments,1);return function(){eve.apply(null,[t,null].concat(e).concat([].slice.call(arguments,0)))}},eve.stop=function(){p=1},eve.nt=function(t){var e=m(f)?f.join("."):f;return t?new RegExp("(?:\\.|\\/|^)"+t+"(?:\\.|\\/|$)").test(e):e},eve.nts=function(){return m(f)?f:f.split(o)},eve.off=eve.unbind=function(t,e){if(!t)return void(eve._events=d={n:{}});var r=m(t)?m(t[0])?t:[t]:y(t).split(l);if(r.length>1)for(var i=0,n=r.length;i<n;i++)eve.off(r[i],e);else{r=m(t)?t:y(t).split(o);var a,u,c,i,n,f,p,g=[d];for(i=0,n=r.length;i<n;i++)for(f=0;f<g.length;f+=c.length-2){if(c=[f,1],a=g[f].n,r[i]!=h)a[r[i]]&&c.push(a[r[i]]);else for(u in a)a[s](u)&&c.push(a[u]);g.splice.apply(g,c)}for(i=0,n=g.length;i<n;i++)for(a=g[i];a.n;){if(e){if(a.f){for(f=0,p=a.f.length;f<p;f++)if(a.f[f]==e){a.f.splice(f,1);break}!a.f.length&&delete a.f}for(u in a.n)if(a.n[s](u)&&a.n[u].f){var v=a.n[u].f;for(f=0,p=v.length;f<p;f++)if(v[f]==e){v.splice(f,1);break}!v.length&&delete a.n[u].f}}else{delete a.f;for(u in a.n)a.n[s](u)&&a.n[u].f&&delete a.n[u].f}a=a.n}}},eve.once=function(t,e){var r=function(){return eve.off(t,r),e.apply(this,arguments)};return eve.on(t,r)},eve.version=a,eve.toString=function(){return"You are running Eve "+a},"undefined"!=typeof t&&t.exports?t.exports=eve:(i=[],n=function(){return eve}.apply(e,i),!(void 0!==n&&(t.exports=n)))}(this)},function(t,e,r){var i,n;i=[r(1)],n=function(t){if(!t||t.svg){var e="hasOwnProperty",r=String,i=parseFloat,n=parseInt,a=Math,s=a.max,o=a.abs,l=a.pow,h=/[, ]+/,u=t.eve,c="",f=" ",p="http://www.w3.org/1999/xlink",d={block:"M5,0 0,2.5 5,5z",classic:"M5,0 0,2.5 5,5 3.5,3 3.5,2z",diamond:"M2.5,0 5,2.5 2.5,5 0,2.5z",open:"M6,1 1,3.5 6,6",oval:"M2.5,0A2.5,2.5,0,0,1,2.5,5 2.5,2.5,0,0,1,2.5,0z"},g={};t.toString=function(){return"Your browser supports SVG.\nYou are running Raphaël "+this.version};var v=function(i,n){if(n){"string"==typeof i&&(i=v(i));for(var a in n)n[e](a)&&("xlink:"==a.substring(0,6)?i.setAttributeNS(p,a.substring(6),r(n[a])):i.setAttribute(a,r(n[a])))}else i=t._g.doc.createElementNS("http://www.w3.org/2000/svg",i),i.style&&(i.style.webkitTapHighlightColor="rgba(0,0,0,0)");return i},x=function(e,n){var h="linear",u=e.id+n,f=.5,p=.5,d=e.node,g=e.paper,x=d.style,y=t._g.doc.getElementById(u);if(!y){if(n=r(n).replace(t._radial_gradient,function(t,e,r){if(h="radial",e&&r){f=i(e),p=i(r);var n=2*(p>.5)-1;l(f-.5,2)+l(p-.5,2)>.25&&(p=a.sqrt(.25-l(f-.5,2))*n+.5)&&.5!=p&&(p=p.toFixed(5)-1e-5*n)}return c}),n=n.split(/\s*\-\s*/),"linear"==h){var b=n.shift();if(b=-i(b),isNaN(b))return null;var _=[0,0,a.cos(t.rad(b)),a.sin(t.rad(b))],w=1/(s(o(_[2]),o(_[3]))||1);_[2]*=w,_[3]*=w,_[2]<0&&(_[0]=-_[2],_[2]=0),_[3]<0&&(_[1]=-_[3],_[3]=0)}var k=t._parseDots(n);if(!k)return null;if(u=u.replace(/[\(\)\s,\xb0#]/g,"_"),e.gradient&&u!=e.gradient.id&&(g.defs.removeChild(e.gradient),delete e.gradient),!e.gradient){y=v(h+"Gradient",{id:u}),e.gradient=y,v(y,"radial"==h?{fx:f,fy:p}:{x1:_[0],y1:_[1],x2:_[2],y2:_[3],gradientTransform:e.matrix.invert()}),g.defs.appendChild(y);for(var B=0,C=k.length;B<C;B++)y.appendChild(v("stop",{offset:k[B].offset?k[B].offset:B?"100%":"0%","stop-color":k[B].color||"#fff","stop-opacity":isFinite(k[B].opacity)?k[B].opacity:1}))}}return v(d,{fill:m(u),opacity:1,"fill-opacity":1}),x.fill=c,x.opacity=1,x.fillOpacity=1,1},y=function(){var t=document.documentMode;return t&&(9===t||10===t)},m=function(t){if(y())return"url('#"+t+"')";var e=document.location,r=e.protocol+"//"+e.host+e.pathname+e.search;return"url('"+r+"#"+t+"')"},b=function(t){var e=t.getBBox(1);v(t.pattern,{patternTransform:t.matrix.invert()+" translate("+e.x+","+e.y+")"})},_=function(i,n,a){if("path"==i.type){for(var s=r(n).toLowerCase().split("-"),o=i.paper,l=a?"end":"start",h=i.node,u=i.attrs,f=u["stroke-width"],p=s.length,x="classic",y,m,b,_,w,k=3,B=3,C=5;p--;)switch(s[p]){case"block":case"classic":case"oval":case"diamond":case"open":case"none":x=s[p];break;case"wide":B=5;break;case"narrow":B=2;break;case"long":k=5;break;case"short":k=2}if("open"==x?(k+=2,B+=2,C+=2,b=1,_=a?4:1,w={fill:"none",stroke:u.stroke}):(_=b=k/2,w={fill:u.stroke,stroke:"none"}),i._.arrows?a?(i._.arrows.endPath&&g[i._.arrows.endPath]--,i._.arrows.endMarker&&g[i._.arrows.endMarker]--):(i._.arrows.startPath&&g[i._.arrows.startPath]--,i._.arrows.startMarker&&g[i._.arrows.startMarker]--):i._.arrows={},"none"!=x){var S="raphael-marker-"+x,A="raphael-marker-"+l+x+k+B+"-obj"+i.id;t._g.doc.getElementById(S)?g[S]++:(o.defs.appendChild(v(v("path"),{"stroke-linecap":"round",d:d[x],id:S})),g[S]=1);var T=t._g.doc.getElementById(A),E;T?(g[A]++,E=T.getElementsByTagName("use")[0]):(T=v(v("marker"),{id:A,markerHeight:B,markerWidth:k,orient:"auto",refX:_,refY:B/2}),E=v(v("use"),{"xlink:href":"#"+S,transform:(a?"rotate(180 "+k/2+" "+B/2+") ":c)+"scale("+k/C+","+B/C+")","stroke-width":(1/((k/C+B/C)/2)).toFixed(4)}),T.appendChild(E),o.defs.appendChild(T),g[A]=1),v(E,w);var M=b*("diamond"!=x&&"oval"!=x);a?(y=i._.arrows.startdx*f||0,m=t.getTotalLength(u.path)-M*f):(y=M*f,m=t.getTotalLength(u.path)-(i._.arrows.enddx*f||0)),w={},w["marker-"+l]="url(#"+A+")",(m||y)&&(w.d=t.getSubpath(u.path,y,m)),v(h,w),i._.arrows[l+"Path"]=S,i._.arrows[l+"Marker"]=A,i._.arrows[l+"dx"]=M,i._.arrows[l+"Type"]=x,i._.arrows[l+"String"]=n}else a?(y=i._.arrows.startdx*f||0,m=t.getTotalLength(u.path)-y):(y=0,m=t.getTotalLength(u.path)-(i._.arrows.enddx*f||0)),i._.arrows[l+"Path"]&&v(h,{d:t.getSubpath(u.path,y,m)}),delete i._.arrows[l+"Path"],delete i._.arrows[l+"Marker"],delete i._.arrows[l+"dx"],delete i._.arrows[l+"Type"],delete i._.arrows[l+"String"];for(w in g)if(g[e](w)&&!g[w]){var N=t._g.doc.getElementById(w);N&&N.parentNode.removeChild(N)}}},w={"-":[3,1],".":[1,1],"-.":[3,1,1,1],"-..":[3,1,1,1,1,1],". ":[1,3],"- ":[4,3],"--":[8,3],"- .":[4,3,1,3],"--.":[8,3,1,3],"--..":[8,3,1,3,1,3]},k=function(t,e,i){if(e=w[r(e).toLowerCase()]){for(var n=t.attrs["stroke-width"]||"1",a={round:n,square:n,butt:0}[t.attrs["stroke-linecap"]||i["stroke-linecap"]]||0,s=[],o=e.length;o--;)s[o]=e[o]*n+(o%2?1:-1)*a;v(t.node,{"stroke-dasharray":s.join(",")})}else v(t.node,{"stroke-dasharray":"none"})},B=function(i,a){var l=i.node,u=i.attrs,f=l.style.visibility;l.style.visibility="hidden";for(var d in a)if(a[e](d)){if(!t._availableAttrs[e](d))continue;var g=a[d];switch(u[d]=g,d){case"blur":i.blur(g);break;case"title":var y=l.getElementsByTagName("title");if(y.length&&(y=y[0]))y.firstChild.nodeValue=g;else{y=v("title");var m=t._g.doc.createTextNode(g);y.appendChild(m),l.appendChild(y)}break;case"href":case"target":var w=l.parentNode;if("a"!=w.tagName.toLowerCase()){var B=v("a");w.insertBefore(B,l),B.appendChild(l),w=B}"target"==d?w.setAttributeNS(p,"show","blank"==g?"new":g):w.setAttributeNS(p,d,g);break;case"cursor":l.style.cursor=g;break;case"transform":i.transform(g);break;case"arrow-start":_(i,g);break;case"arrow-end":_(i,g,1);break;case"clip-rect":var C=r(g).split(h);if(4==C.length){i.clip&&i.clip.parentNode.parentNode.removeChild(i.clip.parentNode);var A=v("clipPath"),T=v("rect");A.id=t.createUUID(),v(T,{x:C[0],y:C[1],width:C[2],height:C[3]}),A.appendChild(T),i.paper.defs.appendChild(A),v(l,{"clip-path":"url(#"+A.id+")"}),i.clip=T}if(!g){var E=l.getAttribute("clip-path");if(E){var M=t._g.doc.getElementById(E.replace(/(^url\(#|\)$)/g,c));M&&M.parentNode.removeChild(M),v(l,{"clip-path":c}),delete i.clip}}break;case"path":"path"==i.type&&(v(l,{d:g?u.path=t._pathToAbsolute(g):"M0,0"}),i._.dirty=1,i._.arrows&&("startString"in i._.arrows&&_(i,i._.arrows.startString),"endString"in i._.arrows&&_(i,i._.arrows.endString,1)));break;case"width":if(l.setAttribute(d,g),i._.dirty=1,!u.fx)break;d="x",g=u.x;case"x":u.fx&&(g=-u.x-(u.width||0));case"rx":if("rx"==d&&"rect"==i.type)break;case"cx":l.setAttribute(d,g),i.pattern&&b(i),i._.dirty=1;break;case"height":if(l.setAttribute(d,g),i._.dirty=1,!u.fy)break;d="y",g=u.y;case"y":u.fy&&(g=-u.y-(u.height||0));case"ry":if("ry"==d&&"rect"==i.type)break;case"cy":l.setAttribute(d,g),i.pattern&&b(i),i._.dirty=1;break;case"r":"rect"==i.type?v(l,{rx:g,ry:g}):l.setAttribute(d,g),i._.dirty=1;break;case"src":"image"==i.type&&l.setAttributeNS(p,"href",g);break;case"stroke-width":1==i._.sx&&1==i._.sy||(g/=s(o(i._.sx),o(i._.sy))||1),l.setAttribute(d,g),u["stroke-dasharray"]&&k(i,u["stroke-dasharray"],a),
i._.arrows&&("startString"in i._.arrows&&_(i,i._.arrows.startString),"endString"in i._.arrows&&_(i,i._.arrows.endString,1));break;case"stroke-dasharray":k(i,g,a);break;case"fill":var N=r(g).match(t._ISURL);if(N){A=v("pattern");var L=v("image");A.id=t.createUUID(),v(A,{x:0,y:0,patternUnits:"userSpaceOnUse",height:1,width:1}),v(L,{x:0,y:0,"xlink:href":N[1]}),A.appendChild(L),function(e){t._preload(N[1],function(){var t=this.offsetWidth,r=this.offsetHeight;v(e,{width:t,height:r}),v(L,{width:t,height:r})})}(A),i.paper.defs.appendChild(A),v(l,{fill:"url(#"+A.id+")"}),i.pattern=A,i.pattern&&b(i);break}var z=t.getRGB(g);if(z.error){if(("circle"==i.type||"ellipse"==i.type||"r"!=r(g).charAt())&&x(i,g)){if("opacity"in u||"fill-opacity"in u){var P=t._g.doc.getElementById(l.getAttribute("fill").replace(/^url\(#|\)$/g,c));if(P){var F=P.getElementsByTagName("stop");v(F[F.length-1],{"stop-opacity":("opacity"in u?u.opacity:1)*("fill-opacity"in u?u["fill-opacity"]:1)})}}u.gradient=g,u.fill="none";break}}else delete a.gradient,delete u.gradient,!t.is(u.opacity,"undefined")&&t.is(a.opacity,"undefined")&&v(l,{opacity:u.opacity}),!t.is(u["fill-opacity"],"undefined")&&t.is(a["fill-opacity"],"undefined")&&v(l,{"fill-opacity":u["fill-opacity"]});z[e]("opacity")&&v(l,{"fill-opacity":z.opacity>1?z.opacity/100:z.opacity});case"stroke":z=t.getRGB(g),l.setAttribute(d,z.hex),"stroke"==d&&z[e]("opacity")&&v(l,{"stroke-opacity":z.opacity>1?z.opacity/100:z.opacity}),"stroke"==d&&i._.arrows&&("startString"in i._.arrows&&_(i,i._.arrows.startString),"endString"in i._.arrows&&_(i,i._.arrows.endString,1));break;case"gradient":("circle"==i.type||"ellipse"==i.type||"r"!=r(g).charAt())&&x(i,g);break;case"opacity":u.gradient&&!u[e]("stroke-opacity")&&v(l,{"stroke-opacity":g>1?g/100:g});case"fill-opacity":if(u.gradient){P=t._g.doc.getElementById(l.getAttribute("fill").replace(/^url\(#|\)$/g,c)),P&&(F=P.getElementsByTagName("stop"),v(F[F.length-1],{"stop-opacity":g}));break}default:"font-size"==d&&(g=n(g,10)+"px");var R=d.replace(/(\-.)/g,function(t){return t.substring(1).toUpperCase()});l.style[R]=g,i._.dirty=1,l.setAttribute(d,g)}}S(i,a),l.style.visibility=f},C=1.2,S=function(i,a){if("text"==i.type&&(a[e]("text")||a[e]("font")||a[e]("font-size")||a[e]("x")||a[e]("y"))){var s=i.attrs,o=i.node,l=o.firstChild?n(t._g.doc.defaultView.getComputedStyle(o.firstChild,c).getPropertyValue("font-size"),10):10;if(a[e]("text")){for(s.text=a.text;o.firstChild;)o.removeChild(o.firstChild);for(var h=r(a.text).split("\n"),u=[],f,p=0,d=h.length;p<d;p++)f=v("tspan"),p&&v(f,{dy:l*C,x:s.x}),f.appendChild(t._g.doc.createTextNode(h[p])),o.appendChild(f),u[p]=f}else for(u=o.getElementsByTagName("tspan"),p=0,d=u.length;p<d;p++)p?v(u[p],{dy:l*C,x:s.x}):v(u[0],{dy:0});v(o,{x:s.x,y:s.y}),i._.dirty=1;var g=i._getBBox(),x=s.y-(g.y+g.height/2);x&&t.is(x,"finite")&&v(u[0],{dy:x})}},A=function(t){return t.parentNode&&"a"===t.parentNode.tagName.toLowerCase()?t.parentNode:t},T=function(e,r){function i(){return("0000"+(Math.random()*Math.pow(36,5)<<0).toString(36)).slice(-5)}var n=0,a=0;this[0]=this.node=e,e.raphael=!0,this.id=i(),e.raphaelid=this.id,this.matrix=t.matrix(),this.realPath=null,this.paper=r,this.attrs=this.attrs||{},this._={transform:[],sx:1,sy:1,deg:0,dx:0,dy:0,dirty:1},!r.bottom&&(r.bottom=this),this.prev=r.top,r.top&&(r.top.next=this),r.top=this,this.next=null},E=t.el;T.prototype=E,E.constructor=T,t._engine.path=function(t,e){var r=v("path");e.canvas&&e.canvas.appendChild(r);var i=new T(r,e);return i.type="path",B(i,{fill:"none",stroke:"#000",path:t}),i},E.rotate=function(t,e,n){if(this.removed)return this;if(t=r(t).split(h),t.length-1&&(e=i(t[1]),n=i(t[2])),t=i(t[0]),null==n&&(e=n),null==e||null==n){var a=this.getBBox(1);e=a.x+a.width/2,n=a.y+a.height/2}return this.transform(this._.transform.concat([["r",t,e,n]])),this},E.scale=function(t,e,n,a){if(this.removed)return this;if(t=r(t).split(h),t.length-1&&(e=i(t[1]),n=i(t[2]),a=i(t[3])),t=i(t[0]),null==e&&(e=t),null==a&&(n=a),null==n||null==a)var s=this.getBBox(1);return n=null==n?s.x+s.width/2:n,a=null==a?s.y+s.height/2:a,this.transform(this._.transform.concat([["s",t,e,n,a]])),this},E.translate=function(t,e){return this.removed?this:(t=r(t).split(h),t.length-1&&(e=i(t[1])),t=i(t[0])||0,e=+e||0,this.transform(this._.transform.concat([["t",t,e]])),this)},E.transform=function(r){var i=this._;if(null==r)return i.transform;if(t._extractTransform(this,r),this.clip&&v(this.clip,{transform:this.matrix.invert()}),this.pattern&&b(this),this.node&&v(this.node,{transform:this.matrix}),1!=i.sx||1!=i.sy){var n=this.attrs[e]("stroke-width")?this.attrs["stroke-width"]:1;this.attr({"stroke-width":n})}return this},E.hide=function(){return this.removed||(this.node.style.display="none"),this},E.show=function(){return this.removed||(this.node.style.display=""),this},E.remove=function(){var e=A(this.node);if(!this.removed&&e.parentNode){var r=this.paper;r.__set__&&r.__set__.exclude(this),u.unbind("raphael.*.*."+this.id),this.gradient&&r.defs.removeChild(this.gradient),t._tear(this,r),e.parentNode.removeChild(e),this.removeData();for(var i in this)this[i]="function"==typeof this[i]?t._removedFactory(i):null;this.removed=!0}},E._getBBox=function(){if("none"==this.node.style.display){this.show();var t=!0}var e=!1,r;this.paper.canvas.parentElement?r=this.paper.canvas.parentElement.style:this.paper.canvas.parentNode&&(r=this.paper.canvas.parentNode.style),r&&"none"==r.display&&(e=!0,r.display="");var i={};try{i=this.node.getBBox()}catch(n){i={x:this.node.clientLeft,y:this.node.clientTop,width:this.node.clientWidth,height:this.node.clientHeight}}finally{i=i||{},e&&(r.display="none")}return t&&this.hide(),i},E.attr=function(r,i){if(this.removed)return this;if(null==r){var n={};for(var a in this.attrs)this.attrs[e](a)&&(n[a]=this.attrs[a]);return n.gradient&&"none"==n.fill&&(n.fill=n.gradient)&&delete n.gradient,n.transform=this._.transform,n}if(null==i&&t.is(r,"string")){if("fill"==r&&"none"==this.attrs.fill&&this.attrs.gradient)return this.attrs.gradient;if("transform"==r)return this._.transform;for(var s=r.split(h),o={},l=0,c=s.length;l<c;l++)r=s[l],r in this.attrs?o[r]=this.attrs[r]:t.is(this.paper.customAttributes[r],"function")?o[r]=this.paper.customAttributes[r].def:o[r]=t._availableAttrs[r];return c-1?o:o[s[0]]}if(null==i&&t.is(r,"array")){for(o={},l=0,c=r.length;l<c;l++)o[r[l]]=this.attr(r[l]);return o}if(null!=i){var f={};f[r]=i}else null!=r&&t.is(r,"object")&&(f=r);for(var p in f)u("raphael.attr."+p+"."+this.id,this,f[p]);for(p in this.paper.customAttributes)if(this.paper.customAttributes[e](p)&&f[e](p)&&t.is(this.paper.customAttributes[p],"function")){var d=this.paper.customAttributes[p].apply(this,[].concat(f[p]));this.attrs[p]=f[p];for(var g in d)d[e](g)&&(f[g]=d[g])}return B(this,f),this},E.toFront=function(){if(this.removed)return this;var e=A(this.node);e.parentNode.appendChild(e);var r=this.paper;return r.top!=this&&t._tofront(this,r),this},E.toBack=function(){if(this.removed)return this;var e=A(this.node),r=e.parentNode;r.insertBefore(e,r.firstChild),t._toback(this,this.paper);var i=this.paper;return this},E.insertAfter=function(e){if(this.removed||!e)return this;var r=A(this.node),i=A(e.node||e[e.length-1].node);return i.nextSibling?i.parentNode.insertBefore(r,i.nextSibling):i.parentNode.appendChild(r),t._insertafter(this,e,this.paper),this},E.insertBefore=function(e){if(this.removed||!e)return this;var r=A(this.node),i=A(e.node||e[0].node);return i.parentNode.insertBefore(r,i),t._insertbefore(this,e,this.paper),this},E.blur=function(e){var r=this;if(0!==+e){var i=v("filter"),n=v("feGaussianBlur");r.attrs.blur=e,i.id=t.createUUID(),v(n,{stdDeviation:+e||1.5}),i.appendChild(n),r.paper.defs.appendChild(i),r._blur=i,v(r.node,{filter:"url(#"+i.id+")"})}else r._blur&&(r._blur.parentNode.removeChild(r._blur),delete r._blur,delete r.attrs.blur),r.node.removeAttribute("filter");return r},t._engine.circle=function(t,e,r,i){var n=v("circle");t.canvas&&t.canvas.appendChild(n);var a=new T(n,t);return a.attrs={cx:e,cy:r,r:i,fill:"none",stroke:"#000"},a.type="circle",v(n,a.attrs),a},t._engine.rect=function(t,e,r,i,n,a){var s=v("rect");t.canvas&&t.canvas.appendChild(s);var o=new T(s,t);return o.attrs={x:e,y:r,width:i,height:n,rx:a||0,ry:a||0,fill:"none",stroke:"#000"},o.type="rect",v(s,o.attrs),o},t._engine.ellipse=function(t,e,r,i,n){var a=v("ellipse");t.canvas&&t.canvas.appendChild(a);var s=new T(a,t);return s.attrs={cx:e,cy:r,rx:i,ry:n,fill:"none",stroke:"#000"},s.type="ellipse",v(a,s.attrs),s},t._engine.image=function(t,e,r,i,n,a){var s=v("image");v(s,{x:r,y:i,width:n,height:a,preserveAspectRatio:"none"}),s.setAttributeNS(p,"href",e),t.canvas&&t.canvas.appendChild(s);var o=new T(s,t);return o.attrs={x:r,y:i,width:n,height:a,src:e},o.type="image",o},t._engine.text=function(e,r,i,n){var a=v("text");e.canvas&&e.canvas.appendChild(a);var s=new T(a,e);return s.attrs={x:r,y:i,"text-anchor":"middle",text:n,"font-family":t._availableAttrs["font-family"],"font-size":t._availableAttrs["font-size"],stroke:"none",fill:"#000"},s.type="text",B(s,s.attrs),s},t._engine.setSize=function(t,e){return this.width=t||this.width,this.height=e||this.height,this.canvas.setAttribute("width",this.width),this.canvas.setAttribute("height",this.height),this._viewBox&&this.setViewBox.apply(this,this._viewBox),this},t._engine.create=function(){var e=t._getContainer.apply(0,arguments),r=e&&e.container,i=e.x,n=e.y,a=e.width,s=e.height;if(!r)throw new Error("SVG container not found.");var o=v("svg"),l="overflow:hidden;",h;return i=i||0,n=n||0,a=a||512,s=s||342,v(o,{height:s,version:1.1,width:a,xmlns:"http://www.w3.org/2000/svg","xmlns:xlink":"http://www.w3.org/1999/xlink"}),1==r?(o.style.cssText=l+"position:absolute;left:"+i+"px;top:"+n+"px",t._g.doc.body.appendChild(o),h=1):(o.style.cssText=l+"position:relative",r.firstChild?r.insertBefore(o,r.firstChild):r.appendChild(o)),r=new t._Paper,r.width=a,r.height=s,r.canvas=o,r.clear(),r._left=r._top=0,h&&(r.renderfix=function(){}),r.renderfix(),r},t._engine.setViewBox=function(t,e,r,i,n){u("raphael.setViewBox",this,this._viewBox,[t,e,r,i,n]);var a=this.getSize(),o=s(r/a.width,i/a.height),l=this.top,h=n?"xMidYMid meet":"xMinYMin",c,p;for(null==t?(this._vbSize&&(o=1),delete this._vbSize,c="0 0 "+this.width+f+this.height):(this._vbSize=o,c=t+f+e+f+r+f+i),v(this.canvas,{viewBox:c,preserveAspectRatio:h});o&&l;)p="stroke-width"in l.attrs?l.attrs["stroke-width"]:1,l.attr({"stroke-width":p}),l._.dirty=1,l._.dirtyT=1,l=l.prev;return this._viewBox=[t,e,r,i,!!n],this},t.prototype.renderfix=function(){var t=this.canvas,e=t.style,r;try{r=t.getScreenCTM()||t.createSVGMatrix()}catch(i){r=t.createSVGMatrix()}var n=-r.e%1,a=-r.f%1;(n||a)&&(n&&(this._left=(this._left+n)%1,e.left=this._left+"px"),a&&(this._top=(this._top+a)%1,e.top=this._top+"px"))},t.prototype.clear=function(){t.eve("raphael.clear",this);for(var e=this.canvas;e.firstChild;)e.removeChild(e.firstChild);this.bottom=this.top=null,(this.desc=v("desc")).appendChild(t._g.doc.createTextNode("Created with Raphaël "+t.version)),e.appendChild(this.desc),e.appendChild(this.defs=v("defs"))},t.prototype.remove=function(){u("raphael.remove",this),this.canvas.parentNode&&this.canvas.parentNode.removeChild(this.canvas);for(var e in this)this[e]="function"==typeof this[e]?t._removedFactory(e):null};var M=t.st;for(var N in E)E[e](N)&&!M[e](N)&&(M[N]=function(t){return function(){var e=arguments;return this.forEach(function(r){r[t].apply(r,e)})}}(N))}}.apply(e,i),!(void 0!==n&&(t.exports=n))},function(t,e,r){var i,n;i=[r(1)],n=function(t){if(!t||t.vml){var e="hasOwnProperty",r=String,i=parseFloat,n=Math,a=n.round,s=n.max,o=n.min,l=n.abs,h="fill",u=/[, ]+/,c=t.eve,f=" progid:DXImageTransform.Microsoft",p=" ",d="",g={M:"m",L:"l",C:"c",Z:"x",m:"t",l:"r",c:"v",z:"x"},v=/([clmz]),?([^clmz]*)/gi,x=/ progid:\S+Blur\([^\)]+\)/g,y=/-?[^,\s-]+/g,m="position:absolute;left:0;top:0;width:1px;height:1px;behavior:url(#default#VML)",b=21600,_={path:1,rect:1,image:1},w={circle:1,ellipse:1},k=function(e){var i=/[ahqstv]/gi,n=t._pathToAbsolute;if(r(e).match(i)&&(n=t._path2curve),i=/[clmz]/g,n==t._pathToAbsolute&&!r(e).match(i)){var s=r(e).replace(v,function(t,e,r){var i=[],n="m"==e.toLowerCase(),s=g[e];return r.replace(y,function(t){n&&2==i.length&&(s+=i+g["m"==e?"l":"L"],i=[]),i.push(a(t*b))}),s+i});return s}var o=n(e),l,h;s=[];for(var u=0,c=o.length;u<c;u++){l=o[u],h=o[u][0].toLowerCase(),"z"==h&&(h="x");for(var f=1,x=l.length;f<x;f++)h+=a(l[f]*b)+(f!=x-1?",":d);s.push(h)}return s.join(p)},B=function(e,r,i){var n=t.matrix();return n.rotate(-e,.5,.5),{dx:n.x(r,i),dy:n.y(r,i)}},C=function(t,e,r,i,n,a){var s=t._,o=t.matrix,u=s.fillpos,c=t.node,f=c.style,d=1,g="",v,x=b/e,y=b/r;if(f.visibility="hidden",e&&r){if(c.coordsize=l(x)+p+l(y),f.rotation=a*(e*r<0?-1:1),a){var m=B(a,i,n);i=m.dx,n=m.dy}if(e<0&&(g+="x"),r<0&&(g+=" y")&&(d=-1),f.flip=g,c.coordorigin=i*-x+p+n*-y,u||s.fillsize){var _=c.getElementsByTagName(h);_=_&&_[0],c.removeChild(_),u&&(m=B(a,o.x(u[0],u[1]),o.y(u[0],u[1])),_.position=m.dx*d+p+m.dy*d),s.fillsize&&(_.size=s.fillsize[0]*l(e)+p+s.fillsize[1]*l(r)),c.appendChild(_)}f.visibility="visible"}};t.toString=function(){return"Your browser doesn’t support SVG. Falling down to VML.\nYou are running Raphaël "+this.version};var S=function(t,e,i){for(var n=r(e).toLowerCase().split("-"),a=i?"end":"start",s=n.length,o="classic",l="medium",h="medium";s--;)switch(n[s]){case"block":case"classic":case"oval":case"diamond":case"open":case"none":o=n[s];break;case"wide":case"narrow":h=n[s];break;case"long":case"short":l=n[s]}var u=t.node.getElementsByTagName("stroke")[0];u[a+"arrow"]=o,u[a+"arrowlength"]=l,u[a+"arrowwidth"]=h},A=function(n,l){n.attrs=n.attrs||{};var c=n.node,f=n.attrs,g=c.style,v,x=_[n.type]&&(l.x!=f.x||l.y!=f.y||l.width!=f.width||l.height!=f.height||l.cx!=f.cx||l.cy!=f.cy||l.rx!=f.rx||l.ry!=f.ry||l.r!=f.r),y=w[n.type]&&(f.cx!=l.cx||f.cy!=l.cy||f.r!=l.r||f.rx!=l.rx||f.ry!=l.ry),m=n;for(var B in l)l[e](B)&&(f[B]=l[B]);if(x&&(f.path=t._getPath[n.type](n),n._.dirty=1),l.href&&(c.href=l.href),l.title&&(c.title=l.title),l.target&&(c.target=l.target),l.cursor&&(g.cursor=l.cursor),"blur"in l&&n.blur(l.blur),(l.path&&"path"==n.type||x)&&(c.path=k(~r(f.path).toLowerCase().indexOf("r")?t._pathToAbsolute(f.path):f.path),n._.dirty=1,"image"==n.type&&(n._.fillpos=[f.x,f.y],n._.fillsize=[f.width,f.height],C(n,1,1,0,0,0))),"transform"in l&&n.transform(l.transform),y){var A=+f.cx,E=+f.cy,M=+f.rx||+f.r||0,L=+f.ry||+f.r||0;c.path=t.format("ar{0},{1},{2},{3},{4},{1},{4},{1}x",a((A-M)*b),a((E-L)*b),a((A+M)*b),a((E+L)*b),a(A*b)),n._.dirty=1}if("clip-rect"in l){var z=r(l["clip-rect"]).split(u);if(4==z.length){z[2]=+z[2]+ +z[0],z[3]=+z[3]+ +z[1];var P=c.clipRect||t._g.doc.createElement("div"),F=P.style;F.clip=t.format("rect({1}px {2}px {3}px {0}px)",z),c.clipRect||(F.position="absolute",F.top=0,F.left=0,F.width=n.paper.width+"px",F.height=n.paper.height+"px",c.parentNode.insertBefore(P,c),P.appendChild(c),c.clipRect=P)}l["clip-rect"]||c.clipRect&&(c.clipRect.style.clip="auto")}if(n.textpath){var R=n.textpath.style;l.font&&(R.font=l.font),l["font-family"]&&(R.fontFamily='"'+l["font-family"].split(",")[0].replace(/^['"]+|['"]+$/g,d)+'"'),l["font-size"]&&(R.fontSize=l["font-size"]),l["font-weight"]&&(R.fontWeight=l["font-weight"]),l["font-style"]&&(R.fontStyle=l["font-style"])}if("arrow-start"in l&&S(m,l["arrow-start"]),"arrow-end"in l&&S(m,l["arrow-end"],1),null!=l.opacity||null!=l.fill||null!=l.src||null!=l.stroke||null!=l["stroke-width"]||null!=l["stroke-opacity"]||null!=l["fill-opacity"]||null!=l["stroke-dasharray"]||null!=l["stroke-miterlimit"]||null!=l["stroke-linejoin"]||null!=l["stroke-linecap"]){var j=c.getElementsByTagName(h),I=!1;if(j=j&&j[0],!j&&(I=j=N(h)),"image"==n.type&&l.src&&(j.src=l.src),l.fill&&(j.on=!0),null!=j.on&&"none"!=l.fill&&null!==l.fill||(j.on=!1),j.on&&l.fill){var q=r(l.fill).match(t._ISURL);if(q){j.parentNode==c&&c.removeChild(j),j.rotate=!0,j.src=q[1],j.type="tile";var D=n.getBBox(1);j.position=D.x+p+D.y,n._.fillpos=[D.x,D.y],t._preload(q[1],function(){n._.fillsize=[this.offsetWidth,this.offsetHeight]})}else j.color=t.getRGB(l.fill).hex,j.src=d,j.type="solid",t.getRGB(l.fill).error&&(m.type in{circle:1,ellipse:1}||"r"!=r(l.fill).charAt())&&T(m,l.fill,j)&&(f.fill="none",f.gradient=l.fill,j.rotate=!1)}if("fill-opacity"in l||"opacity"in l){var V=((+f["fill-opacity"]+1||2)-1)*((+f.opacity+1||2)-1)*((+t.getRGB(l.fill).o+1||2)-1);V=o(s(V,0),1),j.opacity=V,j.src&&(j.color="none")}c.appendChild(j);var O=c.getElementsByTagName("stroke")&&c.getElementsByTagName("stroke")[0],Y=!1;!O&&(Y=O=N("stroke")),(l.stroke&&"none"!=l.stroke||l["stroke-width"]||null!=l["stroke-opacity"]||l["stroke-dasharray"]||l["stroke-miterlimit"]||l["stroke-linejoin"]||l["stroke-linecap"])&&(O.on=!0),("none"==l.stroke||null===l.stroke||null==O.on||0==l.stroke||0==l["stroke-width"])&&(O.on=!1);var W=t.getRGB(l.stroke);O.on&&l.stroke&&(O.color=W.hex),V=((+f["stroke-opacity"]+1||2)-1)*((+f.opacity+1||2)-1)*((+W.o+1||2)-1);var G=.75*(i(l["stroke-width"])||1);if(V=o(s(V,0),1),null==l["stroke-width"]&&(G=f["stroke-width"]),l["stroke-width"]&&(O.weight=G),G&&G<1&&(V*=G)&&(O.weight=1),O.opacity=V,l["stroke-linejoin"]&&(O.joinstyle=l["stroke-linejoin"]||"miter"),O.miterlimit=l["stroke-miterlimit"]||8,l["stroke-linecap"]&&(O.endcap="butt"==l["stroke-linecap"]?"flat":"square"==l["stroke-linecap"]?"square":"round"),"stroke-dasharray"in l){var H={"-":"shortdash",".":"shortdot","-.":"shortdashdot","-..":"shortdashdotdot",". ":"dot","- ":"dash","--":"longdash","- .":"dashdot","--.":"longdashdot","--..":"longdashdotdot"};O.dashstyle=H[e](l["stroke-dasharray"])?H[l["stroke-dasharray"]]:d}Y&&c.appendChild(O)}if("text"==m.type){m.paper.canvas.style.display=d;var X=m.paper.span,U=100,$=f.font&&f.font.match(/\d+(?:\.\d*)?(?=px)/);g=X.style,f.font&&(g.font=f.font),f["font-family"]&&(g.fontFamily=f["font-family"]),f["font-weight"]&&(g.fontWeight=f["font-weight"]),f["font-style"]&&(g.fontStyle=f["font-style"]),$=i(f["font-size"]||$&&$[0])||10,g.fontSize=$*U+"px",m.textpath.string&&(X.innerHTML=r(m.textpath.string).replace(/</g,"&#60;").replace(/&/g,"&#38;").replace(/\n/g,"<br>"));var Z=X.getBoundingClientRect();m.W=f.w=(Z.right-Z.left)/U,m.H=f.h=(Z.bottom-Z.top)/U,m.X=f.x,m.Y=f.y+m.H/2,("x"in l||"y"in l)&&(m.path.v=t.format("m{0},{1}l{2},{1}",a(f.x*b),a(f.y*b),a(f.x*b)+1));for(var Q=["x","y","text","font","font-family","font-weight","font-style","font-size"],J=0,K=Q.length;J<K;J++)if(Q[J]in l){m._.dirty=1;break}switch(f["text-anchor"]){case"start":m.textpath.style["v-text-align"]="left",m.bbx=m.W/2;break;case"end":m.textpath.style["v-text-align"]="right",m.bbx=-m.W/2;break;default:m.textpath.style["v-text-align"]="center",m.bbx=0}m.textpath.style["v-text-kern"]=!0}},T=function(e,a,s){e.attrs=e.attrs||{};var o=e.attrs,l=Math.pow,h,u,c="linear",f=".5 .5";if(e.attrs.gradient=a,a=r(a).replace(t._radial_gradient,function(t,e,r){return c="radial",e&&r&&(e=i(e),r=i(r),l(e-.5,2)+l(r-.5,2)>.25&&(r=n.sqrt(.25-l(e-.5,2))*(2*(r>.5)-1)+.5),f=e+p+r),d}),a=a.split(/\s*\-\s*/),"linear"==c){var g=a.shift();if(g=-i(g),isNaN(g))return null}var v=t._parseDots(a);if(!v)return null;if(e=e.shape||e.node,v.length){e.removeChild(s),s.on=!0,s.method="none",s.color=v[0].color,s.color2=v[v.length-1].color;for(var x=[],y=0,m=v.length;y<m;y++)v[y].offset&&x.push(v[y].offset+p+v[y].color);s.colors=x.length?x.join():"0% "+s.color,"radial"==c?(s.type="gradientTitle",s.focus="100%",s.focussize="0 0",s.focusposition=f,s.angle=0):(s.type="gradient",s.angle=(270-g)%360),e.appendChild(s)}return 1},E=function(e,r){this[0]=this.node=e,e.raphael=!0,this.id=t._oid++,e.raphaelid=this.id,this.X=0,this.Y=0,this.attrs={},this.paper=r,this.matrix=t.matrix(),this._={transform:[],sx:1,sy:1,dx:0,dy:0,deg:0,dirty:1,dirtyT:1},!r.bottom&&(r.bottom=this),this.prev=r.top,r.top&&(r.top.next=this),r.top=this,this.next=null},M=t.el;E.prototype=M,M.constructor=E,M.transform=function(e){if(null==e)return this._.transform;var i=this.paper._viewBoxShift,n=i?"s"+[i.scale,i.scale]+"-1-1t"+[i.dx,i.dy]:d,a;i&&(a=e=r(e).replace(/\.{3}|\u2026/g,this._.transform||d)),t._extractTransform(this,n+e);var s=this.matrix.clone(),o=this.skew,l=this.node,h,u=~r(this.attrs.fill).indexOf("-"),c=!r(this.attrs.fill).indexOf("url(");if(s.translate(1,1),c||u||"image"==this.type)if(o.matrix="1 0 0 1",o.offset="0 0",h=s.split(),u&&h.noRotation||!h.isSimple){l.style.filter=s.toFilter();var f=this.getBBox(),g=this.getBBox(1),v=f.x-g.x,x=f.y-g.y;l.coordorigin=v*-b+p+x*-b,C(this,1,1,v,x,0)}else l.style.filter=d,C(this,h.scalex,h.scaley,h.dx,h.dy,h.rotate);else l.style.filter=d,o.matrix=r(s),o.offset=s.offset();return null!==a&&(this._.transform=a,t._extractTransform(this,a)),this},M.rotate=function(t,e,n){if(this.removed)return this;if(null!=t){if(t=r(t).split(u),t.length-1&&(e=i(t[1]),n=i(t[2])),t=i(t[0]),null==n&&(e=n),null==e||null==n){var a=this.getBBox(1);e=a.x+a.width/2,n=a.y+a.height/2}return this._.dirtyT=1,this.transform(this._.transform.concat([["r",t,e,n]])),this}},M.translate=function(t,e){return this.removed?this:(t=r(t).split(u),t.length-1&&(e=i(t[1])),t=i(t[0])||0,e=+e||0,this._.bbox&&(this._.bbox.x+=t,this._.bbox.y+=e),this.transform(this._.transform.concat([["t",t,e]])),this)},M.scale=function(t,e,n,a){if(this.removed)return this;if(t=r(t).split(u),t.length-1&&(e=i(t[1]),n=i(t[2]),a=i(t[3]),isNaN(n)&&(n=null),isNaN(a)&&(a=null)),t=i(t[0]),null==e&&(e=t),null==a&&(n=a),null==n||null==a)var s=this.getBBox(1);return n=null==n?s.x+s.width/2:n,a=null==a?s.y+s.height/2:a,this.transform(this._.transform.concat([["s",t,e,n,a]])),this._.dirtyT=1,this},M.hide=function(){return!this.removed&&(this.node.style.display="none"),this},M.show=function(){return!this.removed&&(this.node.style.display=d),this},M.auxGetBBox=t.el.getBBox,M.getBBox=function(){var t=this.auxGetBBox();if(this.paper&&this.paper._viewBoxShift){var e={},r=1/this.paper._viewBoxShift.scale;return e.x=t.x-this.paper._viewBoxShift.dx,e.x*=r,e.y=t.y-this.paper._viewBoxShift.dy,e.y*=r,e.width=t.width*r,e.height=t.height*r,e.x2=e.x+e.width,e.y2=e.y+e.height,e}return t},M._getBBox=function(){return this.removed?{}:{x:this.X+(this.bbx||0)-this.W/2,y:this.Y-this.H,width:this.W,height:this.H}},M.remove=function(){if(!this.removed&&this.node.parentNode){this.paper.__set__&&this.paper.__set__.exclude(this),t.eve.unbind("raphael.*.*."+this.id),t._tear(this,this.paper),this.node.parentNode.removeChild(this.node),this.shape&&this.shape.parentNode.removeChild(this.shape);for(var e in this)this[e]="function"==typeof this[e]?t._removedFactory(e):null;this.removed=!0}},M.attr=function(r,i){if(this.removed)return this;if(null==r){var n={};for(var a in this.attrs)this.attrs[e](a)&&(n[a]=this.attrs[a]);return n.gradient&&"none"==n.fill&&(n.fill=n.gradient)&&delete n.gradient,n.transform=this._.transform,n}if(null==i&&t.is(r,"string")){if(r==h&&"none"==this.attrs.fill&&this.attrs.gradient)return this.attrs.gradient;for(var s=r.split(u),o={},l=0,f=s.length;l<f;l++)r=s[l],r in this.attrs?o[r]=this.attrs[r]:t.is(this.paper.customAttributes[r],"function")?o[r]=this.paper.customAttributes[r].def:o[r]=t._availableAttrs[r];return f-1?o:o[s[0]]}if(this.attrs&&null==i&&t.is(r,"array")){for(o={},l=0,f=r.length;l<f;l++)o[r[l]]=this.attr(r[l]);return o}var p;null!=i&&(p={},p[r]=i),null==i&&t.is(r,"object")&&(p=r);for(var d in p)c("raphael.attr."+d+"."+this.id,this,p[d]);if(p){for(d in this.paper.customAttributes)if(this.paper.customAttributes[e](d)&&p[e](d)&&t.is(this.paper.customAttributes[d],"function")){var g=this.paper.customAttributes[d].apply(this,[].concat(p[d]));this.attrs[d]=p[d];for(var v in g)g[e](v)&&(p[v]=g[v])}p.text&&"text"==this.type&&(this.textpath.string=p.text),A(this,p)}return this},M.toFront=function(){return!this.removed&&this.node.parentNode.appendChild(this.node),this.paper&&this.paper.top!=this&&t._tofront(this,this.paper),this},M.toBack=function(){return this.removed?this:(this.node.parentNode.firstChild!=this.node&&(this.node.parentNode.insertBefore(this.node,this.node.parentNode.firstChild),t._toback(this,this.paper)),this)},M.insertAfter=function(e){return this.removed?this:(e.constructor==t.st.constructor&&(e=e[e.length-1]),e.node.nextSibling?e.node.parentNode.insertBefore(this.node,e.node.nextSibling):e.node.parentNode.appendChild(this.node),t._insertafter(this,e,this.paper),this)},M.insertBefore=function(e){return this.removed?this:(e.constructor==t.st.constructor&&(e=e[0]),e.node.parentNode.insertBefore(this.node,e.node),t._insertbefore(this,e,this.paper),this)},M.blur=function(e){var r=this.node.runtimeStyle,i=r.filter;return i=i.replace(x,d),0!==+e?(this.attrs.blur=e,r.filter=i+p+f+".Blur(pixelradius="+(+e||1.5)+")",r.margin=t.format("-{0}px 0 0 -{0}px",a(+e||1.5))):(r.filter=i,r.margin=0,delete this.attrs.blur),this},t._engine.path=function(t,e){var r=N("shape");r.style.cssText=m,r.coordsize=b+p+b,r.coordorigin=e.coordorigin;var i=new E(r,e),n={fill:"none",stroke:"#000"};t&&(n.path=t),i.type="path",i.path=[],i.Path=d,A(i,n),e.canvas&&e.canvas.appendChild(r);var a=N("skew");return a.on=!0,r.appendChild(a),i.skew=a,i.transform(d),i},t._engine.rect=function(e,r,i,n,a,s){var o=t._rectPath(r,i,n,a,s),l=e.path(o),h=l.attrs;return l.X=h.x=r,l.Y=h.y=i,l.W=h.width=n,l.H=h.height=a,h.r=s,h.path=o,l.type="rect",l},t._engine.ellipse=function(t,e,r,i,n){var a=t.path(),s=a.attrs;return a.X=e-i,a.Y=r-n,a.W=2*i,a.H=2*n,a.type="ellipse",A(a,{cx:e,cy:r,rx:i,ry:n}),a},t._engine.circle=function(t,e,r,i){var n=t.path(),a=n.attrs;return n.X=e-i,n.Y=r-i,n.W=n.H=2*i,n.type="circle",A(n,{cx:e,cy:r,r:i}),n},t._engine.image=function(e,r,i,n,a,s){var o=t._rectPath(i,n,a,s),l=e.path(o).attr({stroke:"none"}),u=l.attrs,c=l.node,f=c.getElementsByTagName(h)[0];return u.src=r,l.X=u.x=i,l.Y=u.y=n,l.W=u.width=a,l.H=u.height=s,u.path=o,l.type="image",f.parentNode==c&&c.removeChild(f),f.rotate=!0,f.src=r,f.type="tile",l._.fillpos=[i,n],l._.fillsize=[a,s],c.appendChild(f),C(l,1,1,0,0,0),l},t._engine.text=function(e,i,n,s){var o=N("shape"),l=N("path"),h=N("textpath");i=i||0,n=n||0,s=s||"",l.v=t.format("m{0},{1}l{2},{1}",a(i*b),a(n*b),a(i*b)+1),l.textpathok=!0,h.string=r(s),h.on=!0,o.style.cssText=m,o.coordsize=b+p+b,o.coordorigin="0 0";var u=new E(o,e),c={fill:"#000",stroke:"none",font:t._availableAttrs.font,text:s};u.shape=o,u.path=l,u.textpath=h,u.type="text",u.attrs.text=r(s),u.attrs.x=i,u.attrs.y=n,u.attrs.w=1,u.attrs.h=1,A(u,c),o.appendChild(h),o.appendChild(l),e.canvas.appendChild(o);var f=N("skew");return f.on=!0,o.appendChild(f),u.skew=f,u.transform(d),u},t._engine.setSize=function(e,r){var i=this.canvas.style;return this.width=e,this.height=r,e==+e&&(e+="px"),r==+r&&(r+="px"),i.width=e,i.height=r,i.clip="rect(0 "+e+" "+r+" 0)",this._viewBox&&t._engine.setViewBox.apply(this,this._viewBox),this},t._engine.setViewBox=function(e,r,i,n,a){t.eve("raphael.setViewBox",this,this._viewBox,[e,r,i,n,a]);var s=this.getSize(),o=s.width,l=s.height,h,u;return a&&(h=l/n,u=o/i,i*h<o&&(e-=(o-i*h)/2/h),n*u<l&&(r-=(l-n*u)/2/u)),this._viewBox=[e,r,i,n,!!a],this._viewBoxShift={dx:-e,dy:-r,scale:s},this.forEach(function(t){t.transform("...")}),this};var N;t._engine.initWin=function(t){var e=t.document;e.styleSheets.length<31?e.createStyleSheet().addRule(".rvml","behavior:url(#default#VML)"):e.styleSheets[0].addRule(".rvml","behavior:url(#default#VML)");try{!e.namespaces.rvml&&e.namespaces.add("rvml","urn:schemas-microsoft-com:vml"),N=function(t){return e.createElement("<rvml:"+t+' class="rvml">')}}catch(r){N=function(t){return e.createElement("<"+t+' xmlns="urn:schemas-microsoft.com:vml" class="rvml">')}}},t._engine.initWin(t._g.win),t._engine.create=function(){var e=t._getContainer.apply(0,arguments),r=e.container,i=e.height,n,a=e.width,s=e.x,o=e.y;if(!r)throw new Error("VML container not found.");var l=new t._Paper,h=l.canvas=t._g.doc.createElement("div"),u=h.style;return s=s||0,o=o||0,a=a||512,i=i||342,l.width=a,l.height=i,a==+a&&(a+="px"),i==+i&&(i+="px"),l.coordsize=1e3*b+p+1e3*b,l.coordorigin="0 0",l.span=t._g.doc.createElement("span"),l.span.style.cssText="position:absolute;left:-9999em;top:-9999em;padding:0;margin:0;line-height:1;",h.appendChild(l.span),u.cssText=t.format("top:0;left:0;width:{0};height:{1};display:inline-block;position:relative;clip:rect(0 {0} {1} 0);overflow:hidden",a,i),1==r?(t._g.doc.body.appendChild(h),u.left=s+"px",u.top=o+"px",u.position="absolute"):r.firstChild?r.insertBefore(h,r.firstChild):r.appendChild(h),l.renderfix=function(){},l},t.prototype.clear=function(){t.eve("raphael.clear",this),this.canvas.innerHTML=d,this.span=t._g.doc.createElement("span"),this.span.style.cssText="position:absolute;left:-9999em;top:-9999em;padding:0;margin:0;line-height:1;display:inline;",this.canvas.appendChild(this.span),this.bottom=this.top=null},t.prototype.remove=function(){t.eve("raphael.remove",this),this.canvas.parentNode.removeChild(this.canvas);for(var e in this)this[e]="function"==typeof this[e]?t._removedFactory(e):null;return!0};var L=t.st;for(var z in M)M[e](z)&&!L[e](z)&&(L[z]=function(t){return function(){var e=arguments;return this.forEach(function(r){r[t].apply(r,e)})}}(z))}}.apply(e,i),!(void 0!==n&&(t.exports=n))}])});
</script>

<script>
// flowchart.js, v1.11.3
// Copyright (c)2018 Adriano Raiano (adrai).
// Distributed under MIT license
// http://adrai.github.io/flowchart.js

!function(t,i){if("object"==typeof exports&&"object"==typeof module)module.exports=i(require("Raphael"));else if("function"==typeof define&&define.amd)define(["Raphael"],i);else{var e=i("object"==typeof exports?require("Raphael"):t.Raphael);for(var r in e)("object"==typeof exports?exports:t)[r]=e[r]}}(this,function(t){return function(t){function i(r){if(e[r])return e[r].exports;var s=e[r]={exports:{},id:r,loaded:!1};return t[r].call(s.exports,s,s.exports,i),s.loaded=!0,s.exports}var e={};return i.m=t,i.c=e,i.p="",i(0)}([function(t,i,e){e(9);var r=e(4);e(15);var s={parse:r};"undefined"!=typeof window&&(window.flowchart=s),t.exports=s},function(t,i){function e(t,i){if(!t||"function"==typeof t)return i;var r={};for(var s in i)r[s]=i[s];for(s in t)t[s]&&("object"==typeof r[s]?r[s]=e(r[s],t[s]):r[s]=t[s]);return r}function r(t,i){if("function"==typeof Object.create)t.super_=i,t.prototype=Object.create(i.prototype,{constructor:{value:t,enumerable:!1,writable:!0,configurable:!0}});else{t.super_=i;var e=function(){};e.prototype=i.prototype,t.prototype=new e,t.prototype.constructor=t}}t.exports={defaults:e,inherits:r}},function(t,i,e){function r(t,i,e){this.chart=t,this.group=this.chart.paper.set(),this.symbol=e,this.connectedTo=[],this.symbolType=i.symbolType,this.flowstate=i.flowstate||"future",this.lineStyle=i.lineStyle||{},this.key=i.key||"",this.next_direction=i.next&&i.direction_next?i.direction_next:void 0,this.text=this.chart.paper.text(0,0,i.text),i.key&&(this.text.node.id=i.key+"t"),this.text.node.setAttribute("class",this.getAttr("class")+"t"),this.text.attr({"text-anchor":"start",x:this.getAttr("text-margin"),fill:this.getAttr("font-color"),"font-size":this.getAttr("font-size")});var r=this.getAttr("font"),s=this.getAttr("font-family"),o=this.getAttr("font-weight");r&&this.text.attr({font:r}),s&&this.text.attr({"font-family":s}),o&&this.text.attr({"font-weight":o}),i.link&&this.text.attr("href",i.link),i.target&&this.text.attr("target",i.target);var h=this.getAttr("maxWidth");if(h){for(var n=i.text.split(" "),a="",l=0,p=n.length;l<p;l++){var y=n[l];this.text.attr("text",a+" "+y),a+=this.text.getBBox().width>h?"\n"+y:" "+y}this.text.attr("text",a.substring(1))}if(this.group.push(this.text),e){var x=this.getAttr("text-margin");e.attr({fill:this.getAttr("fill"),stroke:this.getAttr("element-color"),"stroke-width":this.getAttr("line-width"),width:this.text.getBBox().width+2*x,height:this.text.getBBox().height+2*x}),e.node.setAttribute("class",this.getAttr("class")),i.link&&e.attr("href",i.link),i.target&&e.attr("target",i.target),i.key&&(e.node.id=i.key),this.group.push(e),e.insertBefore(this.text),this.text.attr({y:e.getBBox().height/2}),this.initialize()}}var s=e(3),o=s.drawLine,h=s.checkLineIntersection;r.prototype.getAttr=function(t){if(this.chart){var i,e=this.chart.options?this.chart.options[t]:void 0,r=this.chart.options.symbols?this.chart.options.symbols[this.symbolType][t]:void 0;return this.chart.options.flowstate&&this.chart.options.flowstate[this.flowstate]&&(i=this.chart.options.flowstate[this.flowstate][t]),i||r||e}},r.prototype.initialize=function(){this.group.transform("t"+this.getAttr("line-width")+","+this.getAttr("line-width")),this.width=this.group.getBBox().width,this.height=this.group.getBBox().height},r.prototype.getCenter=function(){return{x:this.getX()+this.width/2,y:this.getY()+this.height/2}},r.prototype.getX=function(){return this.group.getBBox().x},r.prototype.getY=function(){return this.group.getBBox().y},r.prototype.shiftX=function(t){this.group.transform("t"+(this.getX()+t)+","+this.getY())},r.prototype.setX=function(t){this.group.transform("t"+t+","+this.getY())},r.prototype.shiftY=function(t){this.group.transform("t"+this.getX()+","+(this.getY()+t))},r.prototype.setY=function(t){this.group.transform("t"+this.getX()+","+t)},r.prototype.getTop=function(){var t=this.getY(),i=this.getX()+this.width/2;return{x:i,y:t}},r.prototype.getBottom=function(){var t=this.getY()+this.height,i=this.getX()+this.width/2;return{x:i,y:t}},r.prototype.getLeft=function(){var t=this.getY()+this.group.getBBox().height/2,i=this.getX();return{x:i,y:t}},r.prototype.getRight=function(){var t=this.getY()+this.group.getBBox().height/2,i=this.getX()+this.group.getBBox().width;return{x:i,y:t}},r.prototype.render=function(){if(this.next){var t=this,i=this.getAttr("line-length");if("right"===this.next_direction){var e=this.getRight();this.next.isPositioned||(this.next.setY(e.y-this.next.height/2),this.next.shiftX(this.group.getBBox().x+this.width+i),function e(){for(var r,s=!1,o=0,h=t.chart.symbols.length;o<h;o++){r=t.chart.symbols[o];var n=Math.abs(r.getCenter().x-t.next.getCenter().x);if(r.getCenter().y>t.next.getCenter().y&&n<=t.next.width/2){s=!0;break}}if(s){if("end"===t.next.symbolType)return;t.next.setX(r.getX()+r.width+i),e()}}(),this.next.isPositioned=!0,this.next.render())}else if("left"===this.next_direction){var r=this.getLeft();this.next.isPositioned||(this.next.setY(r.y-this.next.height/2),this.next.shiftX(-(this.group.getBBox().x+this.width+i)),function e(){for(var r,s=!1,o=0,h=t.chart.symbols.length;o<h;o++){r=t.chart.symbols[o];var n=Math.abs(r.getCenter().x-t.next.getCenter().x);if(r.getCenter().y>t.next.getCenter().y&&n<=t.next.width/2){s=!0;break}}if(s){if("end"===t.next.symbolType)return;t.next.setX(r.getX()+r.width+i),e()}}(),this.next.isPositioned=!0,this.next.render())}else{var s=this.getBottom();this.next.isPositioned||(this.next.shiftY(this.getY()+this.height+i),this.next.setX(s.x-this.next.width/2),this.next.isPositioned=!0,this.next.render())}}},r.prototype.renderLines=function(){this.next&&(this.next_direction?this.drawLineTo(this.next,this.getAttr("arrow-text")||"",this.next_direction):this.drawLineTo(this.next,this.getAttr("arrow-text")||""))},r.prototype.drawLineTo=function(t,i,e){this.connectedTo.indexOf(t)<0&&this.connectedTo.push(t);var r,s=this.getCenter().x,n=this.getCenter().y,a=this.getRight(),l=this.getBottom(),p=this.getTop(),y=this.getLeft(),x=t.getCenter().x,g=t.getCenter().y,c=t.getTop(),f=t.getRight(),d=t.getLeft(),m=s===x,u=n===g,b=n<g,_=n>g||this===t,v=s>x,w=s<x,k=0,B=this.getAttr("line-length"),A=this.getAttr("line-width");if(e&&"bottom"!==e||!m||!b)if(e&&"right"!==e||!u||!w)if(e&&"left"!==e||!u||!v)if(e&&"right"!==e||!m||!_)if(e&&"right"!==e||!m||!b)if(e&&"bottom"!==e||!v)if(e&&"bottom"!==e||!w||!b)if(e&&"bottom"!==e||!w)if(e&&"right"===e&&v)r=o(this.chart,a,[{x:a.x+B/2,y:a.y},{x:a.x+B/2,y:c.y-B/2},{x:c.x,y:c.y-B/2},{x:c.x,y:c.y}],i),this.rightStart=!0,t.topEnd=!0,k=a.x+B/2;else if(e&&"right"===e&&w)r=o(this.chart,a,[{x:c.x,y:a.y},{x:c.x,y:c.y}],i),this.rightStart=!0,t.topEnd=!0,k=a.x+B/2;else if(e&&"bottom"===e&&m&&_)r=o(this.chart,l,[{x:l.x,y:l.y+B/2},{x:a.x+B/2,y:l.y+B/2},{x:a.x+B/2,y:c.y-B/2},{x:c.x,y:c.y-B/2},{x:c.x,y:c.y}],i),this.bottomStart=!0,t.topEnd=!0,k=l.x+B/2;else if("left"===e&&m&&_){var X=y.x-B/2;d.x<y.x&&(X=d.x-B/2),r=o(this.chart,y,[{x:X,y:y.y},{x:X,y:c.y-B/2},{x:c.x,y:c.y-B/2},{x:c.x,y:c.y}],i),this.leftStart=!0,t.topEnd=!0,k=y.x}else"left"===e?(r=o(this.chart,y,[{x:c.x+(y.x-c.x)/2,y:y.y},{x:c.x+(y.x-c.x)/2,y:c.y-B/2},{x:c.x,y:c.y-B/2},{x:c.x,y:c.y}],i),this.leftStart=!0,t.topEnd=!0,k=y.x):"top"===e&&(r=o(this.chart,p,[{x:p.x,y:c.y-B/2},{x:c.x,y:c.y-B/2},{x:c.x,y:c.y}],i),this.topStart=!0,t.topEnd=!0,k=p.x);else r=o(this.chart,l,[{x:l.x,y:l.y+B/2},{x:l.x+(l.x-c.x)/2,y:l.y+B/2},{x:l.x+(l.x-c.x)/2,y:c.y-B/2},{x:c.x,y:c.y-B/2},{x:c.x,y:c.y}],i),this.bottomStart=!0,t.topEnd=!0,k=l.x+(l.x-c.x)/2;else r=o(this.chart,l,[{x:l.x,y:c.y-B/2},{x:c.x,y:c.y-B/2},{x:c.x,y:c.y}],i),this.bottomStart=!0,t.topEnd=!0,k=l.x,c.x>k&&(k=c.x);else r=this.leftEnd&&_?o(this.chart,l,[{x:l.x,y:l.y+B/2},{x:l.x+(l.x-c.x)/2,y:l.y+B/2},{x:l.x+(l.x-c.x)/2,y:c.y-B/2},{x:c.x,y:c.y-B/2},{x:c.x,y:c.y}],i):o(this.chart,l,[{x:l.x,y:c.y-B/2},{x:c.x,y:c.y-B/2},{x:c.x,y:c.y}],i),this.bottomStart=!0,t.topEnd=!0,k=l.x+(l.x-c.x)/2;else r=o(this.chart,a,[{x:a.x+B/2,y:a.y},{x:a.x+B/2,y:c.y-B/2},{x:c.x,y:c.y-B/2},{x:c.x,y:c.y}],i),this.rightStart=!0,t.topEnd=!0,k=a.x+B/2;else r=o(this.chart,a,[{x:a.x+B/2,y:a.y},{x:a.x+B/2,y:c.y-B/2},{x:c.x,y:c.y-B/2},{x:c.x,y:c.y}],i),this.rightStart=!0,t.topEnd=!0,k=a.x+B/2;else r=o(this.chart,y,f,i),this.leftStart=!0,t.rightEnd=!0,k=f.x;else r=o(this.chart,a,d,i),this.rightStart=!0,t.leftEnd=!0,k=d.x;else r=o(this.chart,l,c,i),this.bottomStart=!0,t.topEnd=!0,k=l.x;if(this.lineStyle[t.key]&&r&&r.attr(this.lineStyle[t.key]),r){for(var O=0,L=this.chart.lines.length;O<L;O++)for(var M,T=this.chart.lines[O],S=T.attr("path"),C=r.attr("path"),Y=0,P=S.length-1;Y<P;Y++){var E=[];E.push(["M",S[Y][1],S[Y][2]]),E.push(["L",S[Y+1][1],S[Y+1][2]]);for(var j=E[0][1],z=E[0][2],R=E[1][1],F=E[1][2],I=0,N=C.length-1;I<N;I++){var W=[];W.push(["M",C[I][1],C[I][2]]),W.push(["L",C[I+1][1],C[I+1][2]]);var V=W[0][1],q=W[0][2],G=W[1][1],Q=W[1][2],J=h(j,z,R,F,V,q,G,Q);if(J.onLine1&&J.onLine2){var $;q===Q?V>G?($=["L",J.x+2*A,q],C.splice(I+1,0,$),$=["C",J.x+2*A,q,J.x,q-4*A,J.x-2*A,q],C.splice(I+2,0,$),r.attr("path",C)):($=["L",J.x-2*A,q],C.splice(I+1,0,$),$=["C",J.x-2*A,q,J.x,q-4*A,J.x+2*A,q],C.splice(I+2,0,$),r.attr("path",C)):q>Q?($=["L",V,J.y+2*A],C.splice(I+1,0,$),$=["C",V,J.y+2*A,V+4*A,J.y,V,J.y-2*A],C.splice(I+2,0,$),r.attr("path",C)):($=["L",V,J.y-2*A],C.splice(I+1,0,$),$=["C",V,J.y-2*A,V+4*A,J.y,V,J.y+2*A],C.splice(I+2,0,$),r.attr("path",C)),I+=2,M+=2}}}this.chart.lines.push(r),(void 0===this.chart.minXFromSymbols||this.chart.minXFromSymbols>y.x)&&(this.chart.minXFromSymbols=y.x)}(!this.chart.maxXFromLine||this.chart.maxXFromLine&&k>this.chart.maxXFromLine)&&(this.chart.maxXFromLine=k)},t.exports=r},function(t,i){function e(t,i,e){var r,s,o="M{0},{1}";for(r=2,s=2*e.length+2;r<s;r+=2)o+=" L{"+r+"},{"+(r+1)+"}";var h=[i.x,i.y];for(r=0,s=e.length;r<s;r++)h.push(e[r].x),h.push(e[r].y);var n=t.paper.path(o,h);n.attr("stroke",t.options["element-color"]),n.attr("stroke-width",t.options["line-width"]);var a=t.options.font,l=t.options["font-family"],p=t.options["font-weight"];return a&&n.attr({font:a}),l&&n.attr({"font-family":l}),p&&n.attr({"font-weight":p}),n}function r(t,i,e,r){var s,o;"[object Array]"!==Object.prototype.toString.call(e)&&(e=[e]);var h="M{0},{1}";for(s=2,o=2*e.length+2;s<o;s+=2)h+=" L{"+s+"},{"+(s+1)+"}";var n=[i.x,i.y];for(s=0,o=e.length;s<o;s++)n.push(e[s].x),n.push(e[s].y);var a=t.paper.path(h,n);a.attr({stroke:t.options["line-color"],"stroke-width":t.options["line-width"],"arrow-end":t.options["arrow-end"]});var l=t.options.font,p=t.options["font-family"],y=t.options["font-weight"];if(l&&a.attr({font:l}),p&&a.attr({"font-family":p}),y&&a.attr({"font-weight":y}),r){var x=!1,g=t.paper.text(0,0,r),c=!1,f=e[0];i.y===f.y&&(c=!0);var d=0,m=0;x?(d=i.x>f.x?i.x-(i.x-f.x)/2:f.x-(f.x-i.x)/2,m=i.y>f.y?i.y-(i.y-f.y)/2:f.y-(f.y-i.y)/2,c?(d-=g.getBBox().width/2,m-=t.options["text-margin"]):(d+=t.options["text-margin"],m-=g.getBBox().height/2)):(d=i.x,m=i.y,c?(d+=t.options["text-margin"]/2,m-=t.options["text-margin"]):(d+=t.options["text-margin"]/2,m+=t.options["text-margin"],i.y>f.y&&(m-=2*t.options["text-margin"]))),g.attr({"text-anchor":"start","font-size":t.options["font-size"],fill:t.options["font-color"],x:d,y:m}),l&&g.attr({font:l}),p&&g.attr({"font-family":p}),y&&g.attr({"font-weight":y})}return a}function s(t,i,e,r,s,o,h,n){var a,l,p,y,x,g={x:null,y:null,onLine1:!1,onLine2:!1};return a=(n-o)*(e-t)-(h-s)*(r-i),0===a?g:(l=i-o,p=t-s,y=(h-s)*l-(n-o)*p,x=(e-t)*l-(r-i)*p,l=y/a,p=x/a,g.x=t+l*(e-t),g.y=i+l*(r-i),l>0&&l<1&&(g.onLine1=!0),p>0&&p<1&&(g.onLine2=!0),g)}t.exports={drawPath:e,drawLine:r,checkLineIntersection:s}},function(t,i,e){function r(t){function i(t){var i=t.indexOf("(")+1,e=t.indexOf(")");return i>=0&&e>=0?t.substring(i,e):"{}"}function e(t){var i=t.indexOf("(")+1,e=t.indexOf(")");return i>=0&&e>=0?t.substring(i,e):""}function r(t){var i=t.indexOf("(")+1,e=t.indexOf(")");return i>=0&&e>=0?g.symbols[t.substring(0,i-1)]:g.symbols[t]}function x(t){var i="next",e=t.indexOf("(")+1,r=t.indexOf(")");return e>=0&&r>=0&&(i=E.substring(e,r),i.indexOf(",")<0&&"yes"!==i&&"no"!==i&&(i="next, "+i)),i}t=t||"",t=t.trim();for(var g={symbols:{},start:null,drawSVG:function(t,i){function e(t){if(g[t.key])return g[t.key];switch(t.symbolType){case"start":g[t.key]=new o(x,t);break;case"end":g[t.key]=new h(x,t);break;case"operation":g[t.key]=new n(x,t);break;case"inputoutput":g[t.key]=new a(x,t);break;case"subroutine":g[t.key]=new l(x,t);break;case"condition":g[t.key]=new p(x,t);break;case"parallel":g[t.key]=new y(x,t);break;default:return new Error("Wrong symbol type!")}return g[t.key]}var r=this;this.diagram&&this.diagram.clean();var x=new s(t,i);this.diagram=x;var g={};!function t(i,s,o){var h=e(i);return r.start===i?x.startWith(h):s&&o&&!s.pathOk&&(s instanceof p?(o.yes===i&&s.yes(h),o.no===i&&s.no(h)):s instanceof y?(o.path1===i&&s.path1(h),o.path2===i&&s.path2(h),o.path3===i&&s.path3(h)):s.then(h)),h.pathOk?h:(h instanceof p?(i.yes&&t(i.yes,h,i),i.no&&t(i.no,h,i)):h instanceof y?(i.path1&&t(i.path1,h,i),i.path2&&t(i.path2,h,i),i.path3&&t(i.path3,h,i)):i.next&&t(i.next,h,i),h)}(this.start),x.render()},clean:function(){this.diagram.clean()}},c=[],f=0,d=1,m=t.length;d<m;d++)if("\n"===t[d]&&"\\"!==t[d-1]){var u=t.substring(f,d);f=d+1,c.push(u.replace(/\\\n/g,"\n"))}f<t.length&&c.push(t.substr(f));for(var b=1,_=c.length;b<_;){var v=c[b];v.indexOf("->")<0&&v.indexOf("=>")<0&&v.indexOf("@>")<0?(c[b-1]+="\n"+v,c.splice(b,1),_--):b++}for(;c.length>0;){var w=c.splice(0,1)[0].trim();if(w.indexOf("=>")>=0){var k=w.split("=>"),B={key:k[0].replace(/\(.*\)/,""),symbolType:k[1],text:null,link:null,target:null,flowstate:null,lineStyle:{},params:{}},A=k[0].match(/\((.*)\)/);if(A&&A.length>1)for(var X=A[1].split(","),O=0;O<X.length;O++){var L=X[0].split("=");2==L.length&&(B.params[L[0]]=L[1])}var M;if(B.symbolType.indexOf(": ")>=0&&(M=B.symbolType.split(": "),B.symbolType=M.shift(),B.text=M.join(": ")),B.text&&B.text.indexOf(":>")>=0?(M=B.text.split(":>"),B.text=M.shift(),B.link=M.join(":>")):B.symbolType.indexOf(":>")>=0&&(M=B.symbolType.split(":>"),B.symbolType=M.shift(),B.link=M.join(":>")),B.symbolType.indexOf("\n")>=0&&(B.symbolType=B.symbolType.split("\n")[0]),B.link){var T=B.link.indexOf("[")+1,S=B.link.indexOf("]");T>=0&&S>=0&&(B.target=B.link.substring(T,S),B.link=B.link.substring(0,T-1))}if(B.text&&B.text.indexOf("|")>=0){var C=B.text.split("|");B.flowstate=C.pop().trim(),B.text=C.join("|")}g.symbols[B.key]=B}else if(w.indexOf("->")>=0)for(var Y=w.split("->"),O=0,P=Y.length;O<P;O++){var E=Y[O],j=e(E);"true"!==j&&"false"!==j||(E=E.replace("true","yes"),E=E.replace("false","no"));var z=r(E),R=x(E),F=null;if(R.indexOf(",")>=0){var I=R.split(",");R=I[0],F=I[1].trim()}if(g.start||(g.start=z),O+1<P){var N=Y[O+1];z[R]=r(N),z["direction_"+R]=F,F=null}}else if(w.indexOf("@>")>=0)for(var W=w.split("@>"),O=0,P=W.length;O<P;O++)if(O+1!=P){var V=r(W[O]),N=r(W[O+1]);V.lineStyle[N.key]=JSON.parse(i(W[O+1]))}}return g}var s=e(7),o=e(13),h=e(10),n=e(12),a=e(11),l=e(14),p=e(5),y=e(6);t.exports=r},function(t,i,e){function r(t,i){i=i||{},s.call(this,t,i),this.textMargin=this.getAttr("text-margin"),this.yes_direction="bottom",this.no_direction="right",this.params=i.params,i.yes&&i.direction_yes&&i.no&&!i.direction_no?"right"===i.direction_yes?(this.no_direction="bottom",this.yes_direction="right"):"top"===i.direction_yes?(this.no_direction="right",this.yes_direction="top"):(this.no_direction="right",this.yes_direction="bottom"):i.yes&&!i.direction_yes&&i.no&&i.direction_no?"right"===i.direction_no?(this.yes_direction="bottom",this.no_direction="right"):(this.yes_direction="right",this.no_direction="bottom"):i.yes&&i.direction_yes&&i.no&&i.direction_no&&i.direction_no!==i.direction_yes?"right"===i.direction_yes?(this.no_direction="bottom",this.yes_direction="right"):"top"===i.direction_yes?(this.no_direction="right",this.yes_direction="top"):(this.no_direction="right",this.yes_direction="bottom"):(this.yes_direction="bottom",this.no_direction="right"),this.yes_direction=this.yes_direction||"bottom",this.no_direction=this.no_direction||"right",this.text.attr({x:2*this.textMargin});var e=this.text.getBBox().width+3*this.textMargin;e+=e/2;var r=this.text.getBBox().height+2*this.textMargin;r+=r/2,r=Math.max(.5*e,r);var o=e/4,h=r/4;this.text.attr({x:o+this.textMargin/2});var a={x:o,y:h},l=[{x:o-e/4,y:h+r/4},{x:o-e/4+e/2,y:h+r/4+r/2},{x:o-e/4+e,y:h+r/4},{x:o-e/4+e/2,y:h+r/4-r/2},{x:o-e/4,y:h+r/4}],p=n(t,a,l);p.attr({stroke:this.getAttr("element-color"),"stroke-width":this.getAttr("line-width"),fill:this.getAttr("fill")}),i.link&&p.attr("href",i.link),i.target&&p.attr("target",i.target),i.key&&(p.node.id=i.key),p.node.setAttribute("class",this.getAttr("class")),this.text.attr({y:p.getBBox().height/2}),this.group.push(p),p.insertBefore(this.text),this.initialize()}var s=e(2),o=e(1).inherits,h=e(3),n=h.drawPath;o(r,s),r.prototype.render=function(){this.yes_direction&&(this[this.yes_direction+"_symbol"]=this.yes_symbol),this.no_direction&&(this[this.no_direction+"_symbol"]=this.no_symbol);var t=this.getAttr("line-length");if(this.bottom_symbol){var i=this.getBottom();this.bottom_symbol.isPositioned||(this.bottom_symbol.shiftY(this.getY()+this.height+t),this.bottom_symbol.setX(i.x-this.bottom_symbol.width/2),this.bottom_symbol.isPositioned=!0,this.bottom_symbol.render())}if(this.right_symbol){var e=this.getRight();if(!this.right_symbol.isPositioned){this.right_symbol.setY(e.y-this.right_symbol.height/2),this.right_symbol.shiftX(this.group.getBBox().x+this.width+t);var r=this;!function i(){for(var e,s=!1,o=0,h=r.chart.symbols.length;o<h;o++)if(e=r.chart.symbols[o],!r.params["align-next"]||"no"!==r.params["align-next"]){var n=Math.abs(e.getCenter().x-r.right_symbol.getCenter().x);if(e.getCenter().y>r.right_symbol.getCenter().y&&n<=r.right_symbol.width/2){s=!0;break}}if(s){if("end"===r.right_symbol.symbolType)return;r.right_symbol.setX(e.getX()+e.width+t),i()}}(),this.right_symbol.isPositioned=!0,this.right_symbol.render()}}},r.prototype.renderLines=function(){this.yes_symbol&&this.drawLineTo(this.yes_symbol,this.getAttr("yes-text"),this.yes_direction),this.no_symbol&&this.drawLineTo(this.no_symbol,this.getAttr("no-text"),this.no_direction)},t.exports=r},function(t,i,e){function r(t,i){var e=t.paper.rect(0,0,0,0);i=i||{},s.call(this,t,i,e),this.textMargin=this.getAttr("text-margin"),this.path1_direction="bottom",this.path2_direction="right",this.path3_direction="top",this.params=i.params,"path1"===i.direction_next&&!i[i.direction_next]&&i.next&&(i[i.direction_next]=i.next),"path2"===i.direction_next&&!i[i.direction_next]&&i.next&&(i[i.direction_next]=i.next),"path3"===i.direction_next&&!i[i.direction_next]&&i.next&&(i[i.direction_next]=i.next),i.path1&&i.direction_path1&&i.path2&&!i.direction_path2&&i.path3&&!i.direction_path3?"right"===i.direction_path1?(this.path2_direction="bottom",this.path1_direction="right",this.path3_direction="top"):"top"===i.direction_path1?(this.path2_direction="right",this.path1_direction="top",this.path3_direction="bottom"):"left"===i.direction_path1?(this.path2_direction="right",this.path1_direction="left",this.path3_direction="bottom"):(this.path2_direction="right",this.path1_direction="bottom",this.path3_direction="top"):i.path1&&!i.direction_path1&&i.path2&&i.direction_path2&&i.path3&&!i.direction_path3?"right"===i.direction_path2?(this.path1_direction="bottom",this.path2_direction="right",this.path3_direction="top"):"left"===i.direction_path2?(this.path1_direction="bottom",this.path2_direction="left",this.path3_direction="right"):(this.path1_direction="right",this.path2_direction="bottom",this.path3_direction="top"):i.path1&&!i.direction_path1&&i.path2&&!i.direction_path2&&i.path3&&i.direction_path3?"right"===i.direction_path2?(this.path1_direction="bottom",this.path2_direction="top",this.path3_direction="right"):"left"===i.direction_path2?(this.path1_direction="bottom",this.path2_direction="right",this.path3_direction="left"):(this.path1_direction="right",this.path2_direction="bottom",this.path3_direction="top"):(this.path1_direction=i.direction_path1,this.path2_direction=i.direction_path2,this.path3_direction=i.direction_path3),this.path1_direction=this.path1_direction||"bottom",this.path2_direction=this.path2_direction||"right",this.path3_direction=this.path3_direction||"top",this.initialize()}var s=e(2),o=e(1).inherits;o(r,s),r.prototype.render=function(){this.path1_direction&&(this[this.path1_direction+"_symbol"]=this.path1_symbol),this.path2_direction&&(this[this.path2_direction+"_symbol"]=this.path2_symbol),this.path3_direction&&(this[this.path3_direction+"_symbol"]=this.path3_symbol);var t=this.getAttr("line-length");if(this.bottom_symbol){var i=this.getBottom();this.bottom_symbol.isPositioned||(this.bottom_symbol.shiftY(this.getY()+this.height+t),this.bottom_symbol.setX(i.x-this.bottom_symbol.width/2),this.bottom_symbol.isPositioned=!0,this.bottom_symbol.render())}if(this.top_symbol){var e=this.getTop();this.top_symbol.isPositioned||(this.top_symbol.shiftY(this.getY()-this.top_symbol.height-t),this.top_symbol.setX(e.x+this.top_symbol.width),this.top_symbol.isPositioned=!0,this.top_symbol.render())}var r=this;if(this.left_symbol){var s=this.getLeft();this.left_symbol.isPositioned||(this.left_symbol.setY(s.y-this.left_symbol.height/2),this.left_symbol.shiftX(-(this.group.getBBox().x+this.width+t)),function i(){for(var e,s=!1,o=0,h=r.chart.symbols.length;o<h;o++)if(e=r.chart.symbols[o],!r.params["align-next"]||"no"!==r.params["align-next"]){var n=Math.abs(e.getCenter().x-r.left_symbol.getCenter().x);if(e.getCenter().y>r.left_symbol.getCenter().y&&n<=r.left_symbol.width/2){s=!0;break}}if(s){if("end"===r.left_symbol.symbolType)return;r.left_symbol.setX(e.getX()+e.width+t),i()}}(),this.left_symbol.isPositioned=!0,this.left_symbol.render())}if(this.right_symbol){var o=this.getRight();this.right_symbol.isPositioned||(this.right_symbol.setY(o.y-this.right_symbol.height/2),this.right_symbol.shiftX(this.group.getBBox().x+this.width+t),function i(){for(var e,s=!1,o=0,h=r.chart.symbols.length;o<h;o++)if(e=r.chart.symbols[o],!r.params["align-next"]||"no"!==r.params["align-next"]){var n=Math.abs(e.getCenter().x-r.right_symbol.getCenter().x);if(e.getCenter().y>r.right_symbol.getCenter().y&&n<=r.right_symbol.width/2){s=!0;break}}if(s){if("end"===r.right_symbol.symbolType)return;r.right_symbol.setX(e.getX()+e.width+t),i()}}(),this.right_symbol.isPositioned=!0,this.right_symbol.render())}},r.prototype.renderLines=function(){this.path1_symbol&&this.drawLineTo(this.path1_symbol,"",this.path1_direction),this.path2_symbol&&this.drawLineTo(this.path2_symbol,"",this.path2_direction),this.path3_symbol&&this.drawLineTo(this.path3_symbol,"",this.path3_direction)},t.exports=r},function(t,i,e){function r(t,i){i=i||{},this.paper=new s(t),this.options=o(i,h),this.symbols=[],this.lines=[],this.start=null}var s=e(16),o=e(1).defaults,h=e(8),n=e(5),a=e(6);r.prototype.handle=function(t){this.symbols.indexOf(t)<=-1&&this.symbols.push(t);var i=this;return t instanceof n?(t.yes=function(e){return t.yes_symbol=e,t.no_symbol&&(t.pathOk=!0),i.handle(e)},t.no=function(e){return t.no_symbol=e,t.yes_symbol&&(t.pathOk=!0),i.handle(e)}):t instanceof a?(t.path1=function(e){return t.path1_symbol=e,t.path2_symbol&&(t.pathOk=!0),i.handle(e)},t.path2=function(e){return t.path2_symbol=e,t.path3_symbol&&(t.pathOk=!0),i.handle(e)},t.path3=function(e){return t.path3_symbol=e,t.path1_symbol&&(t.pathOk=!0),i.handle(e)}):t.then=function(e){return t.next=e,t.pathOk=!0,i.handle(e)},t},r.prototype.startWith=function(t){return this.start=t,this.handle(t)},r.prototype.render=function(){var t,i,e=0,r=0,s=0,o=0,h=0,n=0,a=0,l=0;for(s=0,o=this.symbols.length;s<o;s++)t=this.symbols[s],t.width>e&&(e=t.width),t.height>r&&(r=t.height);for(s=0,o=this.symbols.length;s<o;s++)t=this.symbols[s],t.shiftX(this.options.x+(e-t.width)/2+this.options["line-width"]),t.shiftY(this.options.y+(r-t.height)/2+this.options["line-width"]);for(this.start.render(),s=0,o=this.symbols.length;s<o;s++)t=this.symbols[s],t.renderLines();h=this.maxXFromLine;var p,y;for(s=0,o=this.symbols.length;s<o;s++)t=this.symbols[s],p=t.getX()+t.width,y=t.getY()+t.height,p>h&&(h=p),y>n&&(n=y);for(s=0,o=this.lines.length;s<o;s++){i=this.lines[s].getBBox(),p=i.x,y=i.y;var x=i.x2,g=i.y2;p<a&&(a=p),y<l&&(l=y),x>h&&(h=x),g>n&&(n=g)}var c=this.options.scale,f=this.options["line-width"];this.minXFromSymbols<a&&(a=this.minXFromSymbols),a<0&&(a-=f),l<0&&(l-=f);var d=h+f-a,m=n+f-l;this.paper.setSize(d*c,m*c),this.paper.setViewBox(a,l,d,m,!0)},r.prototype.clean=function(){if(this.paper){var t=this.paper.canvas;t.parentNode.removeChild(t)}},t.exports=r},function(t,i){t.exports={x:0,y:0,"line-width":3,"line-length":50,"text-margin":10,"font-size":14,"font-color":"black","line-color":"black","element-color":"black",fill:"white","yes-text":"yes","no-text":"no","arrow-end":"block",class:"flowchart",scale:1,symbols:{start:{},end:{},condition:{},inputoutput:{},operation:{},subroutine:{},parallel:{}}}},function(t,i){Array.prototype.indexOf||(Array.prototype.indexOf=function(t){"use strict";if(null===this)throw new TypeError;var i=Object(this),e=i.length>>>0;if(0===e)return-1;var r=0;if(arguments.length>0&&(r=Number(arguments[1]),r!=r?r=0:0!==r&&r!=1/0&&r!=-(1/0)&&(r=(r>0||-1)*Math.floor(Math.abs(r)))),r>=e)return-1;for(var s=r>=0?r:Math.max(e-Math.abs(r),0);s<e;s++)if(s in i&&i[s]===t)return s;return-1}),Array.prototype.lastIndexOf||(Array.prototype.lastIndexOf=function(t){"use strict";if(null===this)throw new TypeError;var i=Object(this),e=i.length>>>0;if(0===e)return-1;var r=e;arguments.length>1&&(r=Number(arguments[1]),r!=r?r=0:0!==r&&r!=1/0&&r!=-(1/0)&&(r=(r>0||-1)*Math.floor(Math.abs(r))));for(var s=r>=0?Math.min(r,e-1):e-Math.abs(r);s>=0;s--)if(s in i&&i[s]===t)return s;return-1}),String.prototype.trim||(String.prototype.trim=function(){return this.replace(/^\s+|\s+$/g,"")})},function(t,i,e){function r(t,i){var e=t.paper.rect(0,0,0,0,20);i=i||{},i.text=i.text||"End",s.call(this,t,i,e)}var s=e(2),o=e(1).inherits;o(r,s),t.exports=r},function(t,i,e){function r(t,i){i=i||{},s.call(this,t,i),this.textMargin=this.getAttr("text-margin"),this.text.attr({x:3*this.textMargin});var e=this.text.getBBox().width+4*this.textMargin,r=this.text.getBBox().height+2*this.textMargin,o=this.textMargin,h=r/2,a={x:o,y:h},l=[{x:o-this.textMargin,y:r},{x:o-this.textMargin+e,y:r},{x:o-this.textMargin+e+2*this.textMargin,y:0},{x:o-this.textMargin+2*this.textMargin,y:0},{x:o,y:h}],p=n(t,a,l);p.attr({stroke:this.getAttr("element-color"),"stroke-width":this.getAttr("line-width"),fill:this.getAttr("fill")}),i.link&&p.attr("href",i.link),i.target&&p.attr("target",i.target),i.key&&(p.node.id=i.key),p.node.setAttribute("class",this.getAttr("class")),this.text.attr({y:p.getBBox().height/2}),this.group.push(p),p.insertBefore(this.text),this.initialize()}var s=e(2),o=e(1).inherits,h=e(3),n=h.drawPath;o(r,s),r.prototype.getLeft=function(){var t=this.getY()+this.group.getBBox().height/2,i=this.getX()+this.textMargin;return{x:i,y:t}},r.prototype.getRight=function(){var t=this.getY()+this.group.getBBox().height/2,i=this.getX()+this.group.getBBox().width-this.textMargin;return{x:i,y:t}},t.exports=r},function(t,i,e){function r(t,i){var e=t.paper.rect(0,0,0,0);i=i||{},s.call(this,t,i,e)}var s=e(2),o=e(1).inherits;o(r,s),t.exports=r},function(t,i,e){function r(t,i){var e=t.paper.rect(0,0,0,0,20);i=i||{},i.text=i.text||"Start",s.call(this,t,i,e)}var s=e(2),o=e(1).inherits;o(r,s),t.exports=r},function(t,i,e){function r(t,i){var e=t.paper.rect(0,0,0,0);i=i||{},s.call(this,t,i,e),e.attr({width:this.text.getBBox().width+4*this.getAttr("text-margin")}),this.text.attr({x:2*this.getAttr("text-margin")});var r=t.paper.rect(0,0,0,0);r.attr({x:this.getAttr("text-margin"),stroke:this.getAttr("element-color"),"stroke-width":this.getAttr("line-width"),width:this.text.getBBox().width+2*this.getAttr("text-margin"),height:this.text.getBBox().height+2*this.getAttr("text-margin"),fill:this.getAttr("fill")}),i.key&&(r.node.id=i.key+"i");var o=this.getAttr("font"),h=this.getAttr("font-family"),n=this.getAttr("font-weight");o&&r.attr({font:o}),h&&r.attr({"font-family":h}),n&&r.attr({"font-weight":n}),i.link&&r.attr("href",i.link),i.target&&r.attr("target",i.target),this.group.push(r),r.insertBefore(this.text),this.initialize()}var s=e(2),o=e(1).inherits;o(r,s),t.exports=r},function(t,i,e){if("undefined"!=typeof jQuery){var r=e(4);!function(t){t.fn.flowChart=function(i){return this.each(function(){var e=t(this),s=r(e.text());e.html(""),s.drawSVG(this,i)})}}(jQuery)}},function(i,e){i.exports=t}])});
//# sourceMappingURL=flowchart.min.js.map
</script>

<script>
/* Web Font Loader v1.6.28 - (c) Adobe Systems, Google. License: Apache 2.0 */(function(){function aa(a,b,c){return a.call.apply(a.bind,arguments)}function ba(a,b,c){if(!a)throw Error();if(2<arguments.length){var d=Array.prototype.slice.call(arguments,2);return function(){var c=Array.prototype.slice.call(arguments);Array.prototype.unshift.apply(c,d);return a.apply(b,c)}}return function(){return a.apply(b,arguments)}}function p(a,b,c){p=Function.prototype.bind&&-1!=Function.prototype.bind.toString().indexOf("native code")?aa:ba;return p.apply(null,arguments)}var q=Date.now||function(){return+new Date};function ca(a,b){this.a=a;this.o=b||a;this.c=this.o.document}var da=!!window.FontFace;function t(a,b,c,d){b=a.c.createElement(b);if(c)for(var e in c)c.hasOwnProperty(e)&&("style"==e?b.style.cssText=c[e]:b.setAttribute(e,c[e]));d&&b.appendChild(a.c.createTextNode(d));return b}function u(a,b,c){a=a.c.getElementsByTagName(b)[0];a||(a=document.documentElement);a.insertBefore(c,a.lastChild)}function v(a){a.parentNode&&a.parentNode.removeChild(a)}
function w(a,b,c){b=b||[];c=c||[];for(var d=a.className.split(/\s+/),e=0;e<b.length;e+=1){for(var f=!1,g=0;g<d.length;g+=1)if(b[e]===d[g]){f=!0;break}f||d.push(b[e])}b=[];for(e=0;e<d.length;e+=1){f=!1;for(g=0;g<c.length;g+=1)if(d[e]===c[g]){f=!0;break}f||b.push(d[e])}a.className=b.join(" ").replace(/\s+/g," ").replace(/^\s+|\s+$/,"")}function y(a,b){for(var c=a.className.split(/\s+/),d=0,e=c.length;d<e;d++)if(c[d]==b)return!0;return!1}
function ea(a){return a.o.location.hostname||a.a.location.hostname}function z(a,b,c){function d(){m&&e&&f&&(m(g),m=null)}b=t(a,"link",{rel:"stylesheet",href:b,media:"all"});var e=!1,f=!0,g=null,m=c||null;da?(b.onload=function(){e=!0;d()},b.onerror=function(){e=!0;g=Error("Stylesheet failed to load");d()}):setTimeout(function(){e=!0;d()},0);u(a,"head",b)}
function A(a,b,c,d){var e=a.c.getElementsByTagName("head")[0];if(e){var f=t(a,"script",{src:b}),g=!1;f.onload=f.onreadystatechange=function(){g||this.readyState&&"loaded"!=this.readyState&&"complete"!=this.readyState||(g=!0,c&&c(null),f.onload=f.onreadystatechange=null,"HEAD"==f.parentNode.tagName&&e.removeChild(f))};e.appendChild(f);setTimeout(function(){g||(g=!0,c&&c(Error("Script load timeout")))},d||5E3);return f}return null};function B(){this.a=0;this.c=null}function C(a){a.a++;return function(){a.a--;D(a)}}function E(a,b){a.c=b;D(a)}function D(a){0==a.a&&a.c&&(a.c(),a.c=null)};function F(a){this.a=a||"-"}F.prototype.c=function(a){for(var b=[],c=0;c<arguments.length;c++)b.push(arguments[c].replace(/[\W_]+/g,"").toLowerCase());return b.join(this.a)};function G(a,b){this.c=a;this.f=4;this.a="n";var c=(b||"n4").match(/^([nio])([1-9])$/i);c&&(this.a=c[1],this.f=parseInt(c[2],10))}function fa(a){return H(a)+" "+(a.f+"00")+" 300px "+I(a.c)}function I(a){var b=[];a=a.split(/,\s*/);for(var c=0;c<a.length;c++){var d=a[c].replace(/['"]/g,"");-1!=d.indexOf(" ")||/^\d/.test(d)?b.push("'"+d+"'"):b.push(d)}return b.join(",")}function J(a){return a.a+a.f}function H(a){var b="normal";"o"===a.a?b="oblique":"i"===a.a&&(b="italic");return b}
function ga(a){var b=4,c="n",d=null;a&&((d=a.match(/(normal|oblique|italic)/i))&&d[1]&&(c=d[1].substr(0,1).toLowerCase()),(d=a.match(/([1-9]00|normal|bold)/i))&&d[1]&&(/bold/i.test(d[1])?b=7:/[1-9]00/.test(d[1])&&(b=parseInt(d[1].substr(0,1),10))));return c+b};function ha(a,b){this.c=a;this.f=a.o.document.documentElement;this.h=b;this.a=new F("-");this.j=!1!==b.events;this.g=!1!==b.classes}function ia(a){a.g&&w(a.f,[a.a.c("wf","loading")]);K(a,"loading")}function L(a){if(a.g){var b=y(a.f,a.a.c("wf","active")),c=[],d=[a.a.c("wf","loading")];b||c.push(a.a.c("wf","inactive"));w(a.f,c,d)}K(a,"inactive")}function K(a,b,c){if(a.j&&a.h[b])if(c)a.h[b](c.c,J(c));else a.h[b]()};function ja(){this.c={}}function ka(a,b,c){var d=[],e;for(e in b)if(b.hasOwnProperty(e)){var f=a.c[e];f&&d.push(f(b[e],c))}return d};function M(a,b){this.c=a;this.f=b;this.a=t(this.c,"span",{"aria-hidden":"true"},this.f)}function N(a){u(a.c,"body",a.a)}function O(a){return"display:block;position:absolute;top:-9999px;left:-9999px;font-size:300px;width:auto;height:auto;line-height:normal;margin:0;padding:0;font-variant:normal;white-space:nowrap;font-family:"+I(a.c)+";"+("font-style:"+H(a)+";font-weight:"+(a.f+"00")+";")};function P(a,b,c,d,e,f){this.g=a;this.j=b;this.a=d;this.c=c;this.f=e||3E3;this.h=f||void 0}P.prototype.start=function(){var a=this.c.o.document,b=this,c=q(),d=new Promise(function(d,e){function f(){q()-c>=b.f?e():a.fonts.load(fa(b.a),b.h).then(function(a){1<=a.length?d():setTimeout(f,25)},function(){e()})}f()}),e=null,f=new Promise(function(a,d){e=setTimeout(d,b.f)});Promise.race([f,d]).then(function(){e&&(clearTimeout(e),e=null);b.g(b.a)},function(){b.j(b.a)})};function Q(a,b,c,d,e,f,g){this.v=a;this.B=b;this.c=c;this.a=d;this.s=g||"BESbswy";this.f={};this.w=e||3E3;this.u=f||null;this.m=this.j=this.h=this.g=null;this.g=new M(this.c,this.s);this.h=new M(this.c,this.s);this.j=new M(this.c,this.s);this.m=new M(this.c,this.s);a=new G(this.a.c+",serif",J(this.a));a=O(a);this.g.a.style.cssText=a;a=new G(this.a.c+",sans-serif",J(this.a));a=O(a);this.h.a.style.cssText=a;a=new G("serif",J(this.a));a=O(a);this.j.a.style.cssText=a;a=new G("sans-serif",J(this.a));a=
O(a);this.m.a.style.cssText=a;N(this.g);N(this.h);N(this.j);N(this.m)}var R={D:"serif",C:"sans-serif"},S=null;function T(){if(null===S){var a=/AppleWebKit\/([0-9]+)(?:\.([0-9]+))/.exec(window.navigator.userAgent);S=!!a&&(536>parseInt(a[1],10)||536===parseInt(a[1],10)&&11>=parseInt(a[2],10))}return S}Q.prototype.start=function(){this.f.serif=this.j.a.offsetWidth;this.f["sans-serif"]=this.m.a.offsetWidth;this.A=q();U(this)};
function la(a,b,c){for(var d in R)if(R.hasOwnProperty(d)&&b===a.f[R[d]]&&c===a.f[R[d]])return!0;return!1}function U(a){var b=a.g.a.offsetWidth,c=a.h.a.offsetWidth,d;(d=b===a.f.serif&&c===a.f["sans-serif"])||(d=T()&&la(a,b,c));d?q()-a.A>=a.w?T()&&la(a,b,c)&&(null===a.u||a.u.hasOwnProperty(a.a.c))?V(a,a.v):V(a,a.B):ma(a):V(a,a.v)}function ma(a){setTimeout(p(function(){U(this)},a),50)}function V(a,b){setTimeout(p(function(){v(this.g.a);v(this.h.a);v(this.j.a);v(this.m.a);b(this.a)},a),0)};function W(a,b,c){this.c=a;this.a=b;this.f=0;this.m=this.j=!1;this.s=c}var X=null;W.prototype.g=function(a){var b=this.a;b.g&&w(b.f,[b.a.c("wf",a.c,J(a).toString(),"active")],[b.a.c("wf",a.c,J(a).toString(),"loading"),b.a.c("wf",a.c,J(a).toString(),"inactive")]);K(b,"fontactive",a);this.m=!0;na(this)};
W.prototype.h=function(a){var b=this.a;if(b.g){var c=y(b.f,b.a.c("wf",a.c,J(a).toString(),"active")),d=[],e=[b.a.c("wf",a.c,J(a).toString(),"loading")];c||d.push(b.a.c("wf",a.c,J(a).toString(),"inactive"));w(b.f,d,e)}K(b,"fontinactive",a);na(this)};function na(a){0==--a.f&&a.j&&(a.m?(a=a.a,a.g&&w(a.f,[a.a.c("wf","active")],[a.a.c("wf","loading"),a.a.c("wf","inactive")]),K(a,"active")):L(a.a))};function oa(a){this.j=a;this.a=new ja;this.h=0;this.f=this.g=!0}oa.prototype.load=function(a){this.c=new ca(this.j,a.context||this.j);this.g=!1!==a.events;this.f=!1!==a.classes;pa(this,new ha(this.c,a),a)};
function qa(a,b,c,d,e){var f=0==--a.h;(a.f||a.g)&&setTimeout(function(){var a=e||null,m=d||null||{};if(0===c.length&&f)L(b.a);else{b.f+=c.length;f&&(b.j=f);var h,l=[];for(h=0;h<c.length;h++){var k=c[h],n=m[k.c],r=b.a,x=k;r.g&&w(r.f,[r.a.c("wf",x.c,J(x).toString(),"loading")]);K(r,"fontloading",x);r=null;if(null===X)if(window.FontFace){var x=/Gecko.*Firefox\/(\d+)/.exec(window.navigator.userAgent),xa=/OS X.*Version\/10\..*Safari/.exec(window.navigator.userAgent)&&/Apple/.exec(window.navigator.vendor);
X=x?42<parseInt(x[1],10):xa?!1:!0}else X=!1;X?r=new P(p(b.g,b),p(b.h,b),b.c,k,b.s,n):r=new Q(p(b.g,b),p(b.h,b),b.c,k,b.s,a,n);l.push(r)}for(h=0;h<l.length;h++)l[h].start()}},0)}function pa(a,b,c){var d=[],e=c.timeout;ia(b);var d=ka(a.a,c,a.c),f=new W(a.c,b,e);a.h=d.length;b=0;for(c=d.length;b<c;b++)d[b].load(function(b,d,c){qa(a,f,b,d,c)})};function ra(a,b){this.c=a;this.a=b}
ra.prototype.load=function(a){function b(){if(f["__mti_fntLst"+d]){var c=f["__mti_fntLst"+d](),e=[],h;if(c)for(var l=0;l<c.length;l++){var k=c[l].fontfamily;void 0!=c[l].fontStyle&&void 0!=c[l].fontWeight?(h=c[l].fontStyle+c[l].fontWeight,e.push(new G(k,h))):e.push(new G(k))}a(e)}else setTimeout(function(){b()},50)}var c=this,d=c.a.projectId,e=c.a.version;if(d){var f=c.c.o;A(this.c,(c.a.api||"https://fast.fonts.net/jsapi")+"/"+d+".js"+(e?"?v="+e:""),function(e){e?a([]):(f["__MonotypeConfiguration__"+
d]=function(){return c.a},b())}).id="__MonotypeAPIScript__"+d}else a([])};function sa(a,b){this.c=a;this.a=b}sa.prototype.load=function(a){var b,c,d=this.a.urls||[],e=this.a.families||[],f=this.a.testStrings||{},g=new B;b=0;for(c=d.length;b<c;b++)z(this.c,d[b],C(g));var m=[];b=0;for(c=e.length;b<c;b++)if(d=e[b].split(":"),d[1])for(var h=d[1].split(","),l=0;l<h.length;l+=1)m.push(new G(d[0],h[l]));else m.push(new G(d[0]));E(g,function(){a(m,f)})};function ta(a,b){a?this.c=a:this.c=ua;this.a=[];this.f=[];this.g=b||""}var ua="https://fonts.googleapis.com/css";function va(a,b){for(var c=b.length,d=0;d<c;d++){var e=b[d].split(":");3==e.length&&a.f.push(e.pop());var f="";2==e.length&&""!=e[1]&&(f=":");a.a.push(e.join(f))}}
function wa(a){if(0==a.a.length)throw Error("No fonts to load!");if(-1!=a.c.indexOf("kit="))return a.c;for(var b=a.a.length,c=[],d=0;d<b;d++)c.push(a.a[d].replace(/ /g,"+"));b=a.c+"?family="+c.join("%7C");0<a.f.length&&(b+="&subset="+a.f.join(","));0<a.g.length&&(b+="&text="+encodeURIComponent(a.g));return b};function ya(a){this.f=a;this.a=[];this.c={}}
var za={latin:"BESbswy","latin-ext":"\u00e7\u00f6\u00fc\u011f\u015f",cyrillic:"\u0439\u044f\u0416",greek:"\u03b1\u03b2\u03a3",khmer:"\u1780\u1781\u1782",Hanuman:"\u1780\u1781\u1782"},Aa={thin:"1",extralight:"2","extra-light":"2",ultralight:"2","ultra-light":"2",light:"3",regular:"4",book:"4",medium:"5","semi-bold":"6",semibold:"6","demi-bold":"6",demibold:"6",bold:"7","extra-bold":"8",extrabold:"8","ultra-bold":"8",ultrabold:"8",black:"9",heavy:"9",l:"3",r:"4",b:"7"},Ba={i:"i",italic:"i",n:"n",normal:"n"},
Ca=/^(thin|(?:(?:extra|ultra)-?)?light|regular|book|medium|(?:(?:semi|demi|extra|ultra)-?)?bold|black|heavy|l|r|b|[1-9]00)?(n|i|normal|italic)?$/;
function Da(a){for(var b=a.f.length,c=0;c<b;c++){var d=a.f[c].split(":"),e=d[0].replace(/\+/g," "),f=["n4"];if(2<=d.length){var g;var m=d[1];g=[];if(m)for(var m=m.split(","),h=m.length,l=0;l<h;l++){var k;k=m[l];if(k.match(/^[\w-]+$/)){var n=Ca.exec(k.toLowerCase());if(null==n)k="";else{k=n[2];k=null==k||""==k?"n":Ba[k];n=n[1];if(null==n||""==n)n="4";else var r=Aa[n],n=r?r:isNaN(n)?"4":n.substr(0,1);k=[k,n].join("")}}else k="";k&&g.push(k)}0<g.length&&(f=g);3==d.length&&(d=d[2],g=[],d=d?d.split(","):
g,0<d.length&&(d=za[d[0]])&&(a.c[e]=d))}a.c[e]||(d=za[e])&&(a.c[e]=d);for(d=0;d<f.length;d+=1)a.a.push(new G(e,f[d]))}};function Ea(a,b){this.c=a;this.a=b}var Fa={Arimo:!0,Cousine:!0,Tinos:!0};Ea.prototype.load=function(a){var b=new B,c=this.c,d=new ta(this.a.api,this.a.text),e=this.a.families;va(d,e);var f=new ya(e);Da(f);z(c,wa(d),C(b));E(b,function(){a(f.a,f.c,Fa)})};function Ga(a,b){this.c=a;this.a=b}Ga.prototype.load=function(a){var b=this.a.id,c=this.c.o;b?A(this.c,(this.a.api||"https://use.typekit.net")+"/"+b+".js",function(b){if(b)a([]);else if(c.Typekit&&c.Typekit.config&&c.Typekit.config.fn){b=c.Typekit.config.fn;for(var e=[],f=0;f<b.length;f+=2)for(var g=b[f],m=b[f+1],h=0;h<m.length;h++)e.push(new G(g,m[h]));try{c.Typekit.load({events:!1,classes:!1,async:!0})}catch(l){}a(e)}},2E3):a([])};function Ha(a,b){this.c=a;this.f=b;this.a=[]}Ha.prototype.load=function(a){var b=this.f.id,c=this.c.o,d=this;b?(c.__webfontfontdeckmodule__||(c.__webfontfontdeckmodule__={}),c.__webfontfontdeckmodule__[b]=function(b,c){for(var g=0,m=c.fonts.length;g<m;++g){var h=c.fonts[g];d.a.push(new G(h.name,ga("font-weight:"+h.weight+";font-style:"+h.style)))}a(d.a)},A(this.c,(this.f.api||"https://f.fontdeck.com/s/css/js/")+ea(this.c)+"/"+b+".js",function(b){b&&a([])})):a([])};var Y=new oa(window);Y.a.c.custom=function(a,b){return new sa(b,a)};Y.a.c.fontdeck=function(a,b){return new Ha(b,a)};Y.a.c.monotype=function(a,b){return new ra(b,a)};Y.a.c.typekit=function(a,b){return new Ga(b,a)};Y.a.c.google=function(a,b){return new Ea(b,a)};var Z={load:p(Y.load,Y)};"function"===typeof define&&define.amd?define(function(){return Z}):"undefined"!==typeof module&&module.exports?module.exports=Z:(window.WebFont=Z,window.WebFontConfig&&Y.load(window.WebFontConfig));}());
</script>

<script>
//     Underscore.js 1.8.3
//     http://underscorejs.org
//     (c) 2009-2015 Jeremy Ashkenas, DocumentCloud and Investigative Reporters & Editors
//     Underscore may be freely distributed under the MIT license.
(function(){function n(n){function t(t,r,e,u,i,o){for(;i>=0&&o>i;i+=n){var a=u?u[i]:i;e=r(e,t[a],a,t)}return e}return function(r,e,u,i){e=b(e,i,4);var o=!k(r)&&m.keys(r),a=(o||r).length,c=n>0?0:a-1;return arguments.length<3&&(u=r[o?o[c]:c],c+=n),t(r,e,u,o,c,a)}}function t(n){return function(t,r,e){r=x(r,e);for(var u=O(t),i=n>0?0:u-1;i>=0&&u>i;i+=n)if(r(t[i],i,t))return i;return-1}}function r(n,t,r){return function(e,u,i){var o=0,a=O(e);if("number"==typeof i)n>0?o=i>=0?i:Math.max(i+a,o):a=i>=0?Math.min(i+1,a):i+a+1;else if(r&&i&&a)return i=r(e,u),e[i]===u?i:-1;if(u!==u)return i=t(l.call(e,o,a),m.isNaN),i>=0?i+o:-1;for(i=n>0?o:a-1;i>=0&&a>i;i+=n)if(e[i]===u)return i;return-1}}function e(n,t){var r=I.length,e=n.constructor,u=m.isFunction(e)&&e.prototype||a,i="constructor";for(m.has(n,i)&&!m.contains(t,i)&&t.push(i);r--;)i=I[r],i in n&&n[i]!==u[i]&&!m.contains(t,i)&&t.push(i)}var u=this,i=u._,o=Array.prototype,a=Object.prototype,c=Function.prototype,f=o.push,l=o.slice,s=a.toString,p=a.hasOwnProperty,h=Array.isArray,v=Object.keys,g=c.bind,y=Object.create,d=function(){},m=function(n){return n instanceof m?n:this instanceof m?void(this._wrapped=n):new m(n)};"undefined"!=typeof exports?("undefined"!=typeof module&&module.exports&&(exports=module.exports=m),exports._=m):u._=m,m.VERSION="1.8.3";var b=function(n,t,r){if(t===void 0)return n;switch(null==r?3:r){case 1:return function(r){return n.call(t,r)};case 2:return function(r,e){return n.call(t,r,e)};case 3:return function(r,e,u){return n.call(t,r,e,u)};case 4:return function(r,e,u,i){return n.call(t,r,e,u,i)}}return function(){return n.apply(t,arguments)}},x=function(n,t,r){return null==n?m.identity:m.isFunction(n)?b(n,t,r):m.isObject(n)?m.matcher(n):m.property(n)};m.iteratee=function(n,t){return x(n,t,1/0)};var _=function(n,t){return function(r){var e=arguments.length;if(2>e||null==r)return r;for(var u=1;e>u;u++)for(var i=arguments[u],o=n(i),a=o.length,c=0;a>c;c++){var f=o[c];t&&r[f]!==void 0||(r[f]=i[f])}return r}},j=function(n){if(!m.isObject(n))return{};if(y)return y(n);d.prototype=n;var t=new d;return d.prototype=null,t},w=function(n){return function(t){return null==t?void 0:t[n]}},A=Math.pow(2,53)-1,O=w("length"),k=function(n){var t=O(n);return"number"==typeof t&&t>=0&&A>=t};m.each=m.forEach=function(n,t,r){t=b(t,r);var e,u;if(k(n))for(e=0,u=n.length;u>e;e++)t(n[e],e,n);else{var i=m.keys(n);for(e=0,u=i.length;u>e;e++)t(n[i[e]],i[e],n)}return n},m.map=m.collect=function(n,t,r){t=x(t,r);for(var e=!k(n)&&m.keys(n),u=(e||n).length,i=Array(u),o=0;u>o;o++){var a=e?e[o]:o;i[o]=t(n[a],a,n)}return i},m.reduce=m.foldl=m.inject=n(1),m.reduceRight=m.foldr=n(-1),m.find=m.detect=function(n,t,r){var e;return e=k(n)?m.findIndex(n,t,r):m.findKey(n,t,r),e!==void 0&&e!==-1?n[e]:void 0},m.filter=m.select=function(n,t,r){var e=[];return t=x(t,r),m.each(n,function(n,r,u){t(n,r,u)&&e.push(n)}),e},m.reject=function(n,t,r){return m.filter(n,m.negate(x(t)),r)},m.every=m.all=function(n,t,r){t=x(t,r);for(var e=!k(n)&&m.keys(n),u=(e||n).length,i=0;u>i;i++){var o=e?e[i]:i;if(!t(n[o],o,n))return!1}return!0},m.some=m.any=function(n,t,r){t=x(t,r);for(var e=!k(n)&&m.keys(n),u=(e||n).length,i=0;u>i;i++){var o=e?e[i]:i;if(t(n[o],o,n))return!0}return!1},m.contains=m.includes=m.include=function(n,t,r,e){return k(n)||(n=m.values(n)),("number"!=typeof r||e)&&(r=0),m.indexOf(n,t,r)>=0},m.invoke=function(n,t){var r=l.call(arguments,2),e=m.isFunction(t);return m.map(n,function(n){var u=e?t:n[t];return null==u?u:u.apply(n,r)})},m.pluck=function(n,t){return m.map(n,m.property(t))},m.where=function(n,t){return m.filter(n,m.matcher(t))},m.findWhere=function(n,t){return m.find(n,m.matcher(t))},m.max=function(n,t,r){var e,u,i=-1/0,o=-1/0;if(null==t&&null!=n){n=k(n)?n:m.values(n);for(var a=0,c=n.length;c>a;a++)e=n[a],e>i&&(i=e)}else t=x(t,r),m.each(n,function(n,r,e){u=t(n,r,e),(u>o||u===-1/0&&i===-1/0)&&(i=n,o=u)});return i},m.min=function(n,t,r){var e,u,i=1/0,o=1/0;if(null==t&&null!=n){n=k(n)?n:m.values(n);for(var a=0,c=n.length;c>a;a++)e=n[a],i>e&&(i=e)}else t=x(t,r),m.each(n,function(n,r,e){u=t(n,r,e),(o>u||1/0===u&&1/0===i)&&(i=n,o=u)});return i},m.shuffle=function(n){for(var t,r=k(n)?n:m.values(n),e=r.length,u=Array(e),i=0;e>i;i++)t=m.random(0,i),t!==i&&(u[i]=u[t]),u[t]=r[i];return u},m.sample=function(n,t,r){return null==t||r?(k(n)||(n=m.values(n)),n[m.random(n.length-1)]):m.shuffle(n).slice(0,Math.max(0,t))},m.sortBy=function(n,t,r){return t=x(t,r),m.pluck(m.map(n,function(n,r,e){return{value:n,index:r,criteria:t(n,r,e)}}).sort(function(n,t){var r=n.criteria,e=t.criteria;if(r!==e){if(r>e||r===void 0)return 1;if(e>r||e===void 0)return-1}return n.index-t.index}),"value")};var F=function(n){return function(t,r,e){var u={};return r=x(r,e),m.each(t,function(e,i){var o=r(e,i,t);n(u,e,o)}),u}};m.groupBy=F(function(n,t,r){m.has(n,r)?n[r].push(t):n[r]=[t]}),m.indexBy=F(function(n,t,r){n[r]=t}),m.countBy=F(function(n,t,r){m.has(n,r)?n[r]++:n[r]=1}),m.toArray=function(n){return n?m.isArray(n)?l.call(n):k(n)?m.map(n,m.identity):m.values(n):[]},m.size=function(n){return null==n?0:k(n)?n.length:m.keys(n).length},m.partition=function(n,t,r){t=x(t,r);var e=[],u=[];return m.each(n,function(n,r,i){(t(n,r,i)?e:u).push(n)}),[e,u]},m.first=m.head=m.take=function(n,t,r){return null==n?void 0:null==t||r?n[0]:m.initial(n,n.length-t)},m.initial=function(n,t,r){return l.call(n,0,Math.max(0,n.length-(null==t||r?1:t)))},m.last=function(n,t,r){return null==n?void 0:null==t||r?n[n.length-1]:m.rest(n,Math.max(0,n.length-t))},m.rest=m.tail=m.drop=function(n,t,r){return l.call(n,null==t||r?1:t)},m.compact=function(n){return m.filter(n,m.identity)};var S=function(n,t,r,e){for(var u=[],i=0,o=e||0,a=O(n);a>o;o++){var c=n[o];if(k(c)&&(m.isArray(c)||m.isArguments(c))){t||(c=S(c,t,r));var f=0,l=c.length;for(u.length+=l;l>f;)u[i++]=c[f++]}else r||(u[i++]=c)}return u};m.flatten=function(n,t){return S(n,t,!1)},m.without=function(n){return m.difference(n,l.call(arguments,1))},m.uniq=m.unique=function(n,t,r,e){m.isBoolean(t)||(e=r,r=t,t=!1),null!=r&&(r=x(r,e));for(var u=[],i=[],o=0,a=O(n);a>o;o++){var c=n[o],f=r?r(c,o,n):c;t?(o&&i===f||u.push(c),i=f):r?m.contains(i,f)||(i.push(f),u.push(c)):m.contains(u,c)||u.push(c)}return u},m.union=function(){return m.uniq(S(arguments,!0,!0))},m.intersection=function(n){for(var t=[],r=arguments.length,e=0,u=O(n);u>e;e++){var i=n[e];if(!m.contains(t,i)){for(var o=1;r>o&&m.contains(arguments[o],i);o++);o===r&&t.push(i)}}return t},m.difference=function(n){var t=S(arguments,!0,!0,1);return m.filter(n,function(n){return!m.contains(t,n)})},m.zip=function(){return m.unzip(arguments)},m.unzip=function(n){for(var t=n&&m.max(n,O).length||0,r=Array(t),e=0;t>e;e++)r[e]=m.pluck(n,e);return r},m.object=function(n,t){for(var r={},e=0,u=O(n);u>e;e++)t?r[n[e]]=t[e]:r[n[e][0]]=n[e][1];return r},m.findIndex=t(1),m.findLastIndex=t(-1),m.sortedIndex=function(n,t,r,e){r=x(r,e,1);for(var u=r(t),i=0,o=O(n);o>i;){var a=Math.floor((i+o)/2);r(n[a])<u?i=a+1:o=a}return i},m.indexOf=r(1,m.findIndex,m.sortedIndex),m.lastIndexOf=r(-1,m.findLastIndex),m.range=function(n,t,r){null==t&&(t=n||0,n=0),r=r||1;for(var e=Math.max(Math.ceil((t-n)/r),0),u=Array(e),i=0;e>i;i++,n+=r)u[i]=n;return u};var E=function(n,t,r,e,u){if(!(e instanceof t))return n.apply(r,u);var i=j(n.prototype),o=n.apply(i,u);return m.isObject(o)?o:i};m.bind=function(n,t){if(g&&n.bind===g)return g.apply(n,l.call(arguments,1));if(!m.isFunction(n))throw new TypeError("Bind must be called on a function");var r=l.call(arguments,2),e=function(){return E(n,e,t,this,r.concat(l.call(arguments)))};return e},m.partial=function(n){var t=l.call(arguments,1),r=function(){for(var e=0,u=t.length,i=Array(u),o=0;u>o;o++)i[o]=t[o]===m?arguments[e++]:t[o];for(;e<arguments.length;)i.push(arguments[e++]);return E(n,r,this,this,i)};return r},m.bindAll=function(n){var t,r,e=arguments.length;if(1>=e)throw new Error("bindAll must be passed function names");for(t=1;e>t;t++)r=arguments[t],n[r]=m.bind(n[r],n);return n},m.memoize=function(n,t){var r=function(e){var u=r.cache,i=""+(t?t.apply(this,arguments):e);return m.has(u,i)||(u[i]=n.apply(this,arguments)),u[i]};return r.cache={},r},m.delay=function(n,t){var r=l.call(arguments,2);return setTimeout(function(){return n.apply(null,r)},t)},m.defer=m.partial(m.delay,m,1),m.throttle=function(n,t,r){var e,u,i,o=null,a=0;r||(r={});var c=function(){a=r.leading===!1?0:m.now(),o=null,i=n.apply(e,u),o||(e=u=null)};return function(){var f=m.now();a||r.leading!==!1||(a=f);var l=t-(f-a);return e=this,u=arguments,0>=l||l>t?(o&&(clearTimeout(o),o=null),a=f,i=n.apply(e,u),o||(e=u=null)):o||r.trailing===!1||(o=setTimeout(c,l)),i}},m.debounce=function(n,t,r){var e,u,i,o,a,c=function(){var f=m.now()-o;t>f&&f>=0?e=setTimeout(c,t-f):(e=null,r||(a=n.apply(i,u),e||(i=u=null)))};return function(){i=this,u=arguments,o=m.now();var f=r&&!e;return e||(e=setTimeout(c,t)),f&&(a=n.apply(i,u),i=u=null),a}},m.wrap=function(n,t){return m.partial(t,n)},m.negate=function(n){return function(){return!n.apply(this,arguments)}},m.compose=function(){var n=arguments,t=n.length-1;return function(){for(var r=t,e=n[t].apply(this,arguments);r--;)e=n[r].call(this,e);return e}},m.after=function(n,t){return function(){return--n<1?t.apply(this,arguments):void 0}},m.before=function(n,t){var r;return function(){return--n>0&&(r=t.apply(this,arguments)),1>=n&&(t=null),r}},m.once=m.partial(m.before,2);var M=!{toString:null}.propertyIsEnumerable("toString"),I=["valueOf","isPrototypeOf","toString","propertyIsEnumerable","hasOwnProperty","toLocaleString"];m.keys=function(n){if(!m.isObject(n))return[];if(v)return v(n);var t=[];for(var r in n)m.has(n,r)&&t.push(r);return M&&e(n,t),t},m.allKeys=function(n){if(!m.isObject(n))return[];var t=[];for(var r in n)t.push(r);return M&&e(n,t),t},m.values=function(n){for(var t=m.keys(n),r=t.length,e=Array(r),u=0;r>u;u++)e[u]=n[t[u]];return e},m.mapObject=function(n,t,r){t=x(t,r);for(var e,u=m.keys(n),i=u.length,o={},a=0;i>a;a++)e=u[a],o[e]=t(n[e],e,n);return o},m.pairs=function(n){for(var t=m.keys(n),r=t.length,e=Array(r),u=0;r>u;u++)e[u]=[t[u],n[t[u]]];return e},m.invert=function(n){for(var t={},r=m.keys(n),e=0,u=r.length;u>e;e++)t[n[r[e]]]=r[e];return t},m.functions=m.methods=function(n){var t=[];for(var r in n)m.isFunction(n[r])&&t.push(r);return t.sort()},m.extend=_(m.allKeys),m.extendOwn=m.assign=_(m.keys),m.findKey=function(n,t,r){t=x(t,r);for(var e,u=m.keys(n),i=0,o=u.length;o>i;i++)if(e=u[i],t(n[e],e,n))return e},m.pick=function(n,t,r){var e,u,i={},o=n;if(null==o)return i;m.isFunction(t)?(u=m.allKeys(o),e=b(t,r)):(u=S(arguments,!1,!1,1),e=function(n,t,r){return t in r},o=Object(o));for(var a=0,c=u.length;c>a;a++){var f=u[a],l=o[f];e(l,f,o)&&(i[f]=l)}return i},m.omit=function(n,t,r){if(m.isFunction(t))t=m.negate(t);else{var e=m.map(S(arguments,!1,!1,1),String);t=function(n,t){return!m.contains(e,t)}}return m.pick(n,t,r)},m.defaults=_(m.allKeys,!0),m.create=function(n,t){var r=j(n);return t&&m.extendOwn(r,t),r},m.clone=function(n){return m.isObject(n)?m.isArray(n)?n.slice():m.extend({},n):n},m.tap=function(n,t){return t(n),n},m.isMatch=function(n,t){var r=m.keys(t),e=r.length;if(null==n)return!e;for(var u=Object(n),i=0;e>i;i++){var o=r[i];if(t[o]!==u[o]||!(o in u))return!1}return!0};var N=function(n,t,r,e){if(n===t)return 0!==n||1/n===1/t;if(null==n||null==t)return n===t;n instanceof m&&(n=n._wrapped),t instanceof m&&(t=t._wrapped);var u=s.call(n);if(u!==s.call(t))return!1;switch(u){case"[object RegExp]":case"[object String]":return""+n==""+t;case"[object Number]":return+n!==+n?+t!==+t:0===+n?1/+n===1/t:+n===+t;case"[object Date]":case"[object Boolean]":return+n===+t}var i="[object Array]"===u;if(!i){if("object"!=typeof n||"object"!=typeof t)return!1;var o=n.constructor,a=t.constructor;if(o!==a&&!(m.isFunction(o)&&o instanceof o&&m.isFunction(a)&&a instanceof a)&&"constructor"in n&&"constructor"in t)return!1}r=r||[],e=e||[];for(var c=r.length;c--;)if(r[c]===n)return e[c]===t;if(r.push(n),e.push(t),i){if(c=n.length,c!==t.length)return!1;for(;c--;)if(!N(n[c],t[c],r,e))return!1}else{var f,l=m.keys(n);if(c=l.length,m.keys(t).length!==c)return!1;for(;c--;)if(f=l[c],!m.has(t,f)||!N(n[f],t[f],r,e))return!1}return r.pop(),e.pop(),!0};m.isEqual=function(n,t){return N(n,t)},m.isEmpty=function(n){return null==n?!0:k(n)&&(m.isArray(n)||m.isString(n)||m.isArguments(n))?0===n.length:0===m.keys(n).length},m.isElement=function(n){return!(!n||1!==n.nodeType)},m.isArray=h||function(n){return"[object Array]"===s.call(n)},m.isObject=function(n){var t=typeof n;return"function"===t||"object"===t&&!!n},m.each(["Arguments","Function","String","Number","Date","RegExp","Error"],function(n){m["is"+n]=function(t){return s.call(t)==="[object "+n+"]"}}),m.isArguments(arguments)||(m.isArguments=function(n){return m.has(n,"callee")}),"function"!=typeof/./&&"object"!=typeof Int8Array&&(m.isFunction=function(n){return"function"==typeof n||!1}),m.isFinite=function(n){return isFinite(n)&&!isNaN(parseFloat(n))},m.isNaN=function(n){return m.isNumber(n)&&n!==+n},m.isBoolean=function(n){return n===!0||n===!1||"[object Boolean]"===s.call(n)},m.isNull=function(n){return null===n},m.isUndefined=function(n){return n===void 0},m.has=function(n,t){return null!=n&&p.call(n,t)},m.noConflict=function(){return u._=i,this},m.identity=function(n){return n},m.constant=function(n){return function(){return n}},m.noop=function(){},m.property=w,m.propertyOf=function(n){return null==n?function(){}:function(t){return n[t]}},m.matcher=m.matches=function(n){return n=m.extendOwn({},n),function(t){return m.isMatch(t,n)}},m.times=function(n,t,r){var e=Array(Math.max(0,n));t=b(t,r,1);for(var u=0;n>u;u++)e[u]=t(u);return e},m.random=function(n,t){return null==t&&(t=n,n=0),n+Math.floor(Math.random()*(t-n+1))},m.now=Date.now||function(){return(new Date).getTime()};var B={"&":"&amp;","<":"&lt;",">":"&gt;",'"':"&quot;","'":"&#x27;","`":"&#x60;"},T=m.invert(B),R=function(n){var t=function(t){return n[t]},r="(?:"+m.keys(n).join("|")+")",e=RegExp(r),u=RegExp(r,"g");return function(n){return n=null==n?"":""+n,e.test(n)?n.replace(u,t):n}};m.escape=R(B),m.unescape=R(T),m.result=function(n,t,r){var e=null==n?void 0:n[t];return e===void 0&&(e=r),m.isFunction(e)?e.call(n):e};var q=0;m.uniqueId=function(n){var t=++q+"";return n?n+t:t},m.templateSettings={evaluate:/<%([\s\S]+?)%>/g,interpolate:/<%=([\s\S]+?)%>/g,escape:/<%-([\s\S]+?)%>/g};var K=/(.)^/,z={"'":"'","\\":"\\","\r":"r","\n":"n","\u2028":"u2028","\u2029":"u2029"},D=/\\|'|\r|\n|\u2028|\u2029/g,L=function(n){return"\\"+z[n]};m.template=function(n,t,r){!t&&r&&(t=r),t=m.defaults({},t,m.templateSettings);var e=RegExp([(t.escape||K).source,(t.interpolate||K).source,(t.evaluate||K).source].join("|")+"|$","g"),u=0,i="__p+='";n.replace(e,function(t,r,e,o,a){return i+=n.slice(u,a).replace(D,L),u=a+t.length,r?i+="'+\n((__t=("+r+"))==null?'':_.escape(__t))+\n'":e?i+="'+\n((__t=("+e+"))==null?'':__t)+\n'":o&&(i+="';\n"+o+"\n__p+='"),t}),i+="';\n",t.variable||(i="with(obj||{}){\n"+i+"}\n"),i="var __t,__p='',__j=Array.prototype.join,"+"print=function(){__p+=__j.call(arguments,'');};\n"+i+"return __p;\n";try{var o=new Function(t.variable||"obj","_",i)}catch(a){throw a.source=i,a}var c=function(n){return o.call(this,n,m)},f=t.variable||"obj";return c.source="function("+f+"){\n"+i+"}",c},m.chain=function(n){var t=m(n);return t._chain=!0,t};var P=function(n,t){return n._chain?m(t).chain():t};m.mixin=function(n){m.each(m.functions(n),function(t){var r=m[t]=n[t];m.prototype[t]=function(){var n=[this._wrapped];return f.apply(n,arguments),P(this,r.apply(m,n))}})},m.mixin(m),m.each(["pop","push","reverse","shift","sort","splice","unshift"],function(n){var t=o[n];m.prototype[n]=function(){var r=this._wrapped;return t.apply(r,arguments),"shift"!==n&&"splice"!==n||0!==r.length||delete r[0],P(this,r)}}),m.each(["concat","join","slice"],function(n){var t=o[n];m.prototype[n]=function(){return P(this,t.apply(this._wrapped,arguments))}}),m.prototype.value=function(){return this._wrapped},m.prototype.valueOf=m.prototype.toJSON=m.prototype.value,m.prototype.toString=function(){return""+this._wrapped},"function"==typeof define&&define.amd&&define("underscore",[],function(){return m})}).call(this);
//# sourceMappingURL=underscore-min.map
</script>
<script>
/** js sequence diagrams 2.0.1
 *  https://bramp.github.io/js-sequence-diagrams/
 *  (c) 2012-2017 Andrew Brampton (bramp.net)
 *  @license Simplified BSD license.
 */
!function(){"use strict";function Diagram(){this.title=void 0,this.actors=[],this.signals=[]}function ParseError(message,hash){_.extend(this,hash),this.name="ParseError",this.message=message||""}function AssertException(message){this.message=message}function assert(exp,message){if(!exp)throw new AssertException(message)}function registerTheme(name,theme){Diagram.themes[name]=theme}function getCenterX(box){return box.x+box.width/2}function getCenterY(box){return box.y+box.height/2}function clamp(x,min,max){return x<min?min:x>max?max:x}function wobble(x1,y1,x2,y2){assert(_.all([x1,x2,y1,y2],_.isFinite),"x1,x2,y1,y2 must be numeric");var factor=Math.sqrt((x2-x1)*(x2-x1)+(y2-y1)*(y2-y1))/25,r1=clamp(Math.random(),.2,.8),r2=clamp(Math.random(),.2,.8),xfactor=Math.random()>.5?factor:-factor,yfactor=Math.random()>.5?factor:-factor,p1={x:(x2-x1)*r1+x1+xfactor,y:(y2-y1)*r1+y1+yfactor},p2={x:(x2-x1)*r2+x1-xfactor,y:(y2-y1)*r2+y1-yfactor};return"C"+p1.x.toFixed(1)+","+p1.y.toFixed(1)+" "+p2.x.toFixed(1)+","+p2.y.toFixed(1)+" "+x2.toFixed(1)+","+y2.toFixed(1)}function handRect(x,y,w,h){return assert(_.all([x,y,w,h],_.isFinite),"x, y, w, h must be numeric"),"M"+x+","+y+wobble(x,y,x+w,y)+wobble(x+w,y,x+w,y+h)+wobble(x+w,y+h,x,y+h)+wobble(x,y+h,x,y)}function handLine(x1,y1,x2,y2){return assert(_.all([x1,x2,y1,y2],_.isFinite),"x1,x2,y1,y2 must be numeric"),"M"+x1.toFixed(1)+","+y1.toFixed(1)+wobble(x1,y1,x2,y2)}Diagram.prototype.getActor=function(alias,name){alias=alias.trim();var i,actors=this.actors;for(i in actors)if(actors[i].alias==alias)return actors[i];return i=actors.push(new Diagram.Actor(alias,name||alias,actors.length)),actors[i-1]},Diagram.prototype.getActorWithAlias=function(input){input=input.trim();var alias,name,s=/([\s\S]+) as (\S+)$/im.exec(input);return s?(name=s[1].trim(),alias=s[2].trim()):name=alias=input,this.getActor(alias,name)},Diagram.prototype.setTitle=function(title){this.title=title},Diagram.prototype.addSignal=function(signal){this.signals.push(signal)},Diagram.Actor=function(alias,name,index){this.alias=alias,this.name=name,this.index=index},Diagram.Signal=function(actorA,signaltype,actorB,message){this.type="Signal",this.actorA=actorA,this.actorB=actorB,this.linetype=3&signaltype,this.arrowtype=signaltype>>2&3,this.message=message},Diagram.Signal.prototype.isSelf=function(){return this.actorA.index==this.actorB.index},Diagram.Note=function(actor,placement,message){if(this.type="Note",this.actor=actor,this.placement=placement,this.message=message,this.hasManyActors()&&actor[0]==actor[1])throw new Error("Note should be over two different actors")},Diagram.Note.prototype.hasManyActors=function(){return _.isArray(this.actor)},Diagram.unescape=function(s){return s.trim().replace(/^"(.*)"$/m,"$1").replace(/\\n/gm,"\n")},Diagram.LINETYPE={SOLID:0,DOTTED:1},Diagram.ARROWTYPE={FILLED:0,OPEN:1},Diagram.PLACEMENT={LEFTOF:0,RIGHTOF:1,OVER:2},"function"!=typeof Object.getPrototypeOf&&("object"==typeof"test".__proto__?Object.getPrototypeOf=function(object){return object.__proto__}:Object.getPrototypeOf=function(object){return object.constructor.prototype});var parser=function(){function Parser(){this.yy={}}var o=function(k,v,o,l){for(o=o||{},l=k.length;l--;o[k[l]]=v);return o},$V0=[5,8,9,13,15,24],$V1=[1,13],$V2=[1,17],$V3=[24,29,30],parser={trace:function(){},yy:{},symbols_:{error:2,start:3,document:4,EOF:5,line:6,statement:7,NL:8,participant:9,actor_alias:10,signal:11,note_statement:12,title:13,message:14,note:15,placement:16,actor:17,over:18,actor_pair:19,",":20,left_of:21,right_of:22,signaltype:23,ACTOR:24,linetype:25,arrowtype:26,LINE:27,DOTLINE:28,ARROW:29,OPENARROW:30,MESSAGE:31,$accept:0,$end:1},terminals_:{2:"error",5:"EOF",8:"NL",9:"participant",13:"title",15:"note",18:"over",20:",",21:"left_of",22:"right_of",24:"ACTOR",27:"LINE",28:"DOTLINE",29:"ARROW",30:"OPENARROW",31:"MESSAGE"},productions_:[0,[3,2],[4,0],[4,2],[6,1],[6,1],[7,2],[7,1],[7,1],[7,2],[12,4],[12,4],[19,1],[19,3],[16,1],[16,1],[11,4],[17,1],[10,1],[23,2],[23,1],[25,1],[25,1],[26,1],[26,1],[14,1]],performAction:function(yytext,yyleng,yylineno,yy,yystate,$$,_$){var $0=$$.length-1;switch(yystate){case 1:return yy.parser.yy;case 4:break;case 6:$$[$0];break;case 7:case 8:yy.parser.yy.addSignal($$[$0]);break;case 9:yy.parser.yy.setTitle($$[$0]);break;case 10:this.$=new Diagram.Note($$[$0-1],$$[$0-2],$$[$0]);break;case 11:this.$=new Diagram.Note($$[$0-1],Diagram.PLACEMENT.OVER,$$[$0]);break;case 12:case 20:this.$=$$[$0];break;case 13:this.$=[$$[$0-2],$$[$0]];break;case 14:this.$=Diagram.PLACEMENT.LEFTOF;break;case 15:this.$=Diagram.PLACEMENT.RIGHTOF;break;case 16:this.$=new Diagram.Signal($$[$0-3],$$[$0-2],$$[$0-1],$$[$0]);break;case 17:this.$=yy.parser.yy.getActor(Diagram.unescape($$[$0]));break;case 18:this.$=yy.parser.yy.getActorWithAlias(Diagram.unescape($$[$0]));break;case 19:this.$=$$[$0-1]|$$[$0]<<2;break;case 21:this.$=Diagram.LINETYPE.SOLID;break;case 22:this.$=Diagram.LINETYPE.DOTTED;break;case 23:this.$=Diagram.ARROWTYPE.FILLED;break;case 24:this.$=Diagram.ARROWTYPE.OPEN;break;case 25:this.$=Diagram.unescape($$[$0].substring(1))}},table:[o($V0,[2,2],{3:1,4:2}),{1:[3]},{5:[1,3],6:4,7:5,8:[1,6],9:[1,7],11:8,12:9,13:[1,10],15:[1,12],17:11,24:$V1},{1:[2,1]},o($V0,[2,3]),o($V0,[2,4]),o($V0,[2,5]),{10:14,24:[1,15]},o($V0,[2,7]),o($V0,[2,8]),{14:16,31:$V2},{23:18,25:19,27:[1,20],28:[1,21]},{16:22,18:[1,23],21:[1,24],22:[1,25]},o([20,27,28,31],[2,17]),o($V0,[2,6]),o($V0,[2,18]),o($V0,[2,9]),o($V0,[2,25]),{17:26,24:$V1},{24:[2,20],26:27,29:[1,28],30:[1,29]},o($V3,[2,21]),o($V3,[2,22]),{17:30,24:$V1},{17:32,19:31,24:$V1},{24:[2,14]},{24:[2,15]},{14:33,31:$V2},{24:[2,19]},{24:[2,23]},{24:[2,24]},{14:34,31:$V2},{14:35,31:$V2},{20:[1,36],31:[2,12]},o($V0,[2,16]),o($V0,[2,10]),o($V0,[2,11]),{17:37,24:$V1},{31:[2,13]}],defaultActions:{3:[2,1],24:[2,14],25:[2,15],27:[2,19],28:[2,23],29:[2,24],37:[2,13]},parseError:function(str,hash){if(!hash.recoverable)throw new Error(str);this.trace(str)},parse:function(input){function lex(){var token;return token=lexer.lex()||EOF,"number"!=typeof token&&(token=self.symbols_[token]||token),token}var self=this,stack=[0],vstack=[null],lstack=[],table=this.table,yytext="",yylineno=0,yyleng=0,recovering=0,TERROR=2,EOF=1,args=lstack.slice.call(arguments,1),lexer=Object.create(this.lexer),sharedState={yy:{}};for(var k in this.yy)Object.prototype.hasOwnProperty.call(this.yy,k)&&(sharedState.yy[k]=this.yy[k]);lexer.setInput(input,sharedState.yy),sharedState.yy.lexer=lexer,sharedState.yy.parser=this,"undefined"==typeof lexer.yylloc&&(lexer.yylloc={});var yyloc=lexer.yylloc;lstack.push(yyloc);var ranges=lexer.options&&lexer.options.ranges;"function"==typeof sharedState.yy.parseError?this.parseError=sharedState.yy.parseError:this.parseError=Object.getPrototypeOf(this).parseError;for(var symbol,preErrorSymbol,state,action,r,p,len,newState,expected,yyval={};;){if(state=stack[stack.length-1],this.defaultActions[state]?action=this.defaultActions[state]:(null!==symbol&&"undefined"!=typeof symbol||(symbol=lex()),action=table[state]&&table[state][symbol]),"undefined"==typeof action||!action.length||!action[0]){var errStr="";expected=[];for(p in table[state])this.terminals_[p]&&p>TERROR&&expected.push("'"+this.terminals_[p]+"'");errStr=lexer.showPosition?"Parse error on line "+(yylineno+1)+":\n"+lexer.showPosition()+"\nExpecting "+expected.join(", ")+", got '"+(this.terminals_[symbol]||symbol)+"'":"Parse error on line "+(yylineno+1)+": Unexpected "+(symbol==EOF?"end of input":"'"+(this.terminals_[symbol]||symbol)+"'"),this.parseError(errStr,{text:lexer.match,token:this.terminals_[symbol]||symbol,line:lexer.yylineno,loc:yyloc,expected:expected})}if(action[0]instanceof Array&&action.length>1)throw new Error("Parse Error: multiple actions possible at state: "+state+", token: "+symbol);switch(action[0]){case 1:stack.push(symbol),vstack.push(lexer.yytext),lstack.push(lexer.yylloc),stack.push(action[1]),symbol=null,preErrorSymbol?(symbol=preErrorSymbol,preErrorSymbol=null):(yyleng=lexer.yyleng,yytext=lexer.yytext,yylineno=lexer.yylineno,yyloc=lexer.yylloc,recovering>0&&recovering--);break;case 2:if(len=this.productions_[action[1]][1],yyval.$=vstack[vstack.length-len],yyval._$={first_line:lstack[lstack.length-(len||1)].first_line,last_line:lstack[lstack.length-1].last_line,first_column:lstack[lstack.length-(len||1)].first_column,last_column:lstack[lstack.length-1].last_column},ranges&&(yyval._$.range=[lstack[lstack.length-(len||1)].range[0],lstack[lstack.length-1].range[1]]),r=this.performAction.apply(yyval,[yytext,yyleng,yylineno,sharedState.yy,action[1],vstack,lstack].concat(args)),"undefined"!=typeof r)return r;len&&(stack=stack.slice(0,-1*len*2),vstack=vstack.slice(0,-1*len),lstack=lstack.slice(0,-1*len)),stack.push(this.productions_[action[1]][0]),vstack.push(yyval.$),lstack.push(yyval._$),newState=table[stack[stack.length-2]][stack[stack.length-1]],stack.push(newState);break;case 3:return!0}}return!0}},lexer=function(){var lexer={EOF:1,parseError:function(str,hash){if(!this.yy.parser)throw new Error(str);this.yy.parser.parseError(str,hash)},setInput:function(input,yy){return this.yy=yy||this.yy||{},this._input=input,this._more=this._backtrack=this.done=!1,this.yylineno=this.yyleng=0,this.yytext=this.matched=this.match="",this.conditionStack=["INITIAL"],this.yylloc={first_line:1,first_column:0,last_line:1,last_column:0},this.options.ranges&&(this.yylloc.range=[0,0]),this.offset=0,this},input:function(){var ch=this._input[0];this.yytext+=ch,this.yyleng++,this.offset++,this.match+=ch,this.matched+=ch;var lines=ch.match(/(?:\r\n?|\n).*/g);return lines?(this.yylineno++,this.yylloc.last_line++):this.yylloc.last_column++,this.options.ranges&&this.yylloc.range[1]++,this._input=this._input.slice(1),ch},unput:function(ch){var len=ch.length,lines=ch.split(/(?:\r\n?|\n)/g);this._input=ch+this._input,this.yytext=this.yytext.substr(0,this.yytext.length-len),this.offset-=len;var oldLines=this.match.split(/(?:\r\n?|\n)/g);this.match=this.match.substr(0,this.match.length-1),this.matched=this.matched.substr(0,this.matched.length-1),lines.length-1&&(this.yylineno-=lines.length-1);var r=this.yylloc.range;return this.yylloc={first_line:this.yylloc.first_line,last_line:this.yylineno+1,first_column:this.yylloc.first_column,last_column:lines?(lines.length===oldLines.length?this.yylloc.first_column:0)+oldLines[oldLines.length-lines.length].length-lines[0].length:this.yylloc.first_column-len},this.options.ranges&&(this.yylloc.range=[r[0],r[0]+this.yyleng-len]),this.yyleng=this.yytext.length,this},more:function(){return this._more=!0,this},reject:function(){return this.options.backtrack_lexer?(this._backtrack=!0,this):this.parseError("Lexical error on line "+(this.yylineno+1)+". You can only invoke reject() in the lexer when the lexer is of the backtracking persuasion (options.backtrack_lexer = true).\n"+this.showPosition(),{text:"",token:null,line:this.yylineno})},less:function(n){this.unput(this.match.slice(n))},pastInput:function(){var past=this.matched.substr(0,this.matched.length-this.match.length);return(past.length>20?"...":"")+past.substr(-20).replace(/\n/g,"")},upcomingInput:function(){var next=this.match;return next.length<20&&(next+=this._input.substr(0,20-next.length)),(next.substr(0,20)+(next.length>20?"...":"")).replace(/\n/g,"")},showPosition:function(){var pre=this.pastInput(),c=new Array(pre.length+1).join("-");return pre+this.upcomingInput()+"\n"+c+"^"},test_match:function(match,indexed_rule){var token,lines,backup;if(this.options.backtrack_lexer&&(backup={yylineno:this.yylineno,yylloc:{first_line:this.yylloc.first_line,last_line:this.last_line,first_column:this.yylloc.first_column,last_column:this.yylloc.last_column},yytext:this.yytext,match:this.match,matches:this.matches,matched:this.matched,yyleng:this.yyleng,offset:this.offset,_more:this._more,_input:this._input,yy:this.yy,conditionStack:this.conditionStack.slice(0),done:this.done},this.options.ranges&&(backup.yylloc.range=this.yylloc.range.slice(0))),lines=match[0].match(/(?:\r\n?|\n).*/g),lines&&(this.yylineno+=lines.length),this.yylloc={first_line:this.yylloc.last_line,last_line:this.yylineno+1,first_column:this.yylloc.last_column,last_column:lines?lines[lines.length-1].length-lines[lines.length-1].match(/\r?\n?/)[0].length:this.yylloc.last_column+match[0].length},this.yytext+=match[0],this.match+=match[0],this.matches=match,this.yyleng=this.yytext.length,this.options.ranges&&(this.yylloc.range=[this.offset,this.offset+=this.yyleng]),this._more=!1,this._backtrack=!1,this._input=this._input.slice(match[0].length),this.matched+=match[0],token=this.performAction.call(this,this.yy,this,indexed_rule,this.conditionStack[this.conditionStack.length-1]),this.done&&this._input&&(this.done=!1),token)return token;if(this._backtrack){for(var k in backup)this[k]=backup[k];return!1}return!1},next:function(){if(this.done)return this.EOF;this._input||(this.done=!0);var token,match,tempMatch,index;this._more||(this.yytext="",this.match="");for(var rules=this._currentRules(),i=0;i<rules.length;i++)if(tempMatch=this._input.match(this.rules[rules[i]]),tempMatch&&(!match||tempMatch[0].length>match[0].length)){if(match=tempMatch,index=i,this.options.backtrack_lexer){if(token=this.test_match(tempMatch,rules[i]),token!==!1)return token;if(this._backtrack){match=!1;continue}return!1}if(!this.options.flex)break}return match?(token=this.test_match(match,rules[index]),token!==!1&&token):""===this._input?this.EOF:this.parseError("Lexical error on line "+(this.yylineno+1)+". Unrecognized text.\n"+this.showPosition(),{text:"",token:null,line:this.yylineno})},lex:function(){var r=this.next();return r?r:this.lex()},begin:function(condition){this.conditionStack.push(condition)},popState:function(){var n=this.conditionStack.length-1;return n>0?this.conditionStack.pop():this.conditionStack[0]},_currentRules:function(){return this.conditionStack.length&&this.conditionStack[this.conditionStack.length-1]?this.conditions[this.conditionStack[this.conditionStack.length-1]].rules:this.conditions.INITIAL.rules},topState:function(n){return n=this.conditionStack.length-1-Math.abs(n||0),n>=0?this.conditionStack[n]:"INITIAL"},pushState:function(condition){this.begin(condition)},stateStackSize:function(){return this.conditionStack.length},options:{"case-insensitive":!0},performAction:function(yy,yy_,$avoiding_name_collisions,YY_START){switch($avoiding_name_collisions){case 0:return 8;case 1:break;case 2:break;case 3:return 9;case 4:return 21;case 5:return 22;case 6:return 18;case 7:return 15;case 8:return 13;case 9:return 20;case 10:return 24;case 11:return 24;case 12:return 28;case 13:return 27;case 14:return 30;case 15:return 29;case 16:return 31;case 17:return 5;case 18:return"INVALID"}},rules:[/^(?:[\r\n]+)/i,/^(?:\s+)/i,/^(?:#[^\r\n]*)/i,/^(?:participant\b)/i,/^(?:left of\b)/i,/^(?:right of\b)/i,/^(?:over\b)/i,/^(?:note\b)/i,/^(?:title\b)/i,/^(?:,)/i,/^(?:[^\->:,\r\n"]+)/i,/^(?:"[^"]+")/i,/^(?:--)/i,/^(?:-)/i,/^(?:>>)/i,/^(?:>)/i,/^(?:[^\r\n]+)/i,/^(?:$)/i,/^(?:.)/i],conditions:{INITIAL:{rules:[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18],inclusive:!0}}};return lexer}();return parser.lexer=lexer,Parser.prototype=parser,parser.Parser=Parser,new Parser}();"undefined"!=typeof require&&"undefined"!=typeof exports&&(exports.parser=parser,exports.Parser=parser.Parser,exports.parse=function(){return parser.parse.apply(parser,arguments)},exports.main=function(args){args[1]||(console.log("Usage: "+args[0]+" FILE"),process.exit(1));var source=require("fs").readFileSync(require("path").normalize(args[1]),"utf8");return exports.parser.parse(source)},"undefined"!=typeof module&&require.main===module&&exports.main(process.argv.slice(1))),ParseError.prototype=new Error,Diagram.ParseError=ParseError,Diagram.parse=function(input){parser.yy=new Diagram,parser.yy.parseError=function(message,hash){throw new ParseError(message,hash)};var diagram=parser.parse(input);return delete diagram.parseError,diagram};var DIAGRAM_MARGIN=10,ACTOR_MARGIN=10,ACTOR_PADDING=10,SIGNAL_MARGIN=5,SIGNAL_PADDING=5,NOTE_MARGIN=10,NOTE_PADDING=5,NOTE_OVERLAP=15,TITLE_MARGIN=0,TITLE_PADDING=5,SELF_SIGNAL_WIDTH=20,PLACEMENT=Diagram.PLACEMENT,LINETYPE=Diagram.LINETYPE,ARROWTYPE=Diagram.ARROWTYPE,ALIGN_LEFT=0,ALIGN_CENTER=1;AssertException.prototype.toString=function(){return"AssertException: "+this.message},String.prototype.trim||(String.prototype.trim=function(){return this.replace(/^\s+|\s+$/g,"")}),Diagram.themes={};var BaseTheme=function(diagram,options){this.init(diagram,options)};if(_.extend(BaseTheme.prototype,{init:function(diagram,options){this.diagram=diagram,this.actorsHeight_=0,this.signalsHeight_=0,this.title_=void 0},setupPaper:function(container){},draw:function(container){this.setupPaper(container),this.layout();var titleHeight=this.title_?this.title_.height:0,y=DIAGRAM_MARGIN+titleHeight;this.drawTitle(),this.drawActors(y),this.drawSignals(y+this.actorsHeight_)},layout:function(){function actorEnsureDistance(a,b,d){assert(a<b,"a must be less than or equal to b"),a<0?(b=actors[b],b.x=Math.max(d-b.width/2,b.x)):b>=actors.length?(a=actors[a],a.paddingRight=Math.max(d,a.paddingRight)):(a=actors[a],a.distances[b]=Math.max(d,a.distances[b]?a.distances[b]:0))}var diagram=this.diagram,font=this.font_,actors=diagram.actors,signals=diagram.signals;if(diagram.width=0,diagram.height=0,diagram.title){var title=this.title_={},bb=this.textBBox(diagram.title,font);title.textBB=bb,title.message=diagram.title,title.width=bb.width+2*(TITLE_PADDING+TITLE_MARGIN),title.height=bb.height+2*(TITLE_PADDING+TITLE_MARGIN),title.x=DIAGRAM_MARGIN,title.y=DIAGRAM_MARGIN,diagram.width+=title.width,diagram.height+=title.height}_.each(actors,function(a){var bb=this.textBBox(a.name,font);a.textBB=bb,a.x=0,a.y=0,a.width=bb.width+2*(ACTOR_PADDING+ACTOR_MARGIN),a.height=bb.height+2*(ACTOR_PADDING+ACTOR_MARGIN),a.distances=[],a.paddingRight=0,this.actorsHeight_=Math.max(a.height,this.actorsHeight_)},this),_.each(signals,function(s){var a,b,bb=this.textBBox(s.message,font);s.textBB=bb,s.width=bb.width,s.height=bb.height;var extraWidth=0;if("Signal"==s.type)s.width+=2*(SIGNAL_MARGIN+SIGNAL_PADDING),s.height+=2*(SIGNAL_MARGIN+SIGNAL_PADDING),s.isSelf()?(a=s.actorA.index,b=a+1,s.width+=SELF_SIGNAL_WIDTH):(a=Math.min(s.actorA.index,s.actorB.index),b=Math.max(s.actorA.index,s.actorB.index));else{if("Note"!=s.type)throw new Error("Unhandled signal type:"+s.type);if(s.width+=2*(NOTE_MARGIN+NOTE_PADDING),s.height+=2*(NOTE_MARGIN+NOTE_PADDING),extraWidth=2*ACTOR_MARGIN,s.placement==PLACEMENT.LEFTOF)b=s.actor.index,a=b-1;else if(s.placement==PLACEMENT.RIGHTOF)a=s.actor.index,b=a+1;else if(s.placement==PLACEMENT.OVER&&s.hasManyActors())a=Math.min(s.actor[0].index,s.actor[1].index),b=Math.max(s.actor[0].index,s.actor[1].index),extraWidth=-(2*NOTE_PADDING+2*NOTE_OVERLAP);else if(s.placement==PLACEMENT.OVER)return a=s.actor.index,actorEnsureDistance(a-1,a,s.width/2),actorEnsureDistance(a,a+1,s.width/2),void(this.signalsHeight_+=s.height)}actorEnsureDistance(a,b,s.width+extraWidth),this.signalsHeight_+=s.height},this);var actorsX=0;return _.each(actors,function(a){a.x=Math.max(actorsX,a.x),_.each(a.distances,function(distance,b){"undefined"!=typeof distance&&(b=actors[b],distance=Math.max(distance,a.width/2,b.width/2),b.x=Math.max(b.x,a.x+a.width/2+distance-b.width/2))}),actorsX=a.x+a.width+a.paddingRight},this),diagram.width=Math.max(actorsX,diagram.width),diagram.width+=2*DIAGRAM_MARGIN,diagram.height+=2*DIAGRAM_MARGIN+2*this.actorsHeight_+this.signalsHeight_,this},textBBox:function(text,font){},drawTitle:function(){var title=this.title_;title&&this.drawTextBox(title,title.message,TITLE_MARGIN,TITLE_PADDING,this.font_,ALIGN_LEFT)},drawActors:function(offsetY){var y=offsetY;_.each(this.diagram.actors,function(a){this.drawActor(a,y,this.actorsHeight_),this.drawActor(a,y+this.actorsHeight_+this.signalsHeight_,this.actorsHeight_);var aX=getCenterX(a);this.drawLine(aX,y+this.actorsHeight_-ACTOR_MARGIN,aX,y+this.actorsHeight_+ACTOR_MARGIN+this.signalsHeight_)},this)},drawActor:function(actor,offsetY,height){actor.y=offsetY,actor.height=height,this.drawTextBox(actor,actor.name,ACTOR_MARGIN,ACTOR_PADDING,this.font_,ALIGN_CENTER)},drawSignals:function(offsetY){var y=offsetY;_.each(this.diagram.signals,function(s){"Signal"==s.type?s.isSelf()?this.drawSelfSignal(s,y):this.drawSignal(s,y):"Note"==s.type&&this.drawNote(s,y),y+=s.height},this)},drawSelfSignal:function(signal,offsetY){assert(signal.isSelf(),"signal must be a self signal");var textBB=signal.textBB,aX=getCenterX(signal.actorA),x=aX+SELF_SIGNAL_WIDTH+SIGNAL_PADDING,y=offsetY+SIGNAL_PADDING+signal.height/2+textBB.y;this.drawText(x,y,signal.message,this.font_,ALIGN_LEFT);var y1=offsetY+SIGNAL_MARGIN+SIGNAL_PADDING,y2=y1+signal.height-2*SIGNAL_MARGIN-SIGNAL_PADDING;this.drawLine(aX,y1,aX+SELF_SIGNAL_WIDTH,y1,signal.linetype),this.drawLine(aX+SELF_SIGNAL_WIDTH,y1,aX+SELF_SIGNAL_WIDTH,y2,signal.linetype),this.drawLine(aX+SELF_SIGNAL_WIDTH,y2,aX,y2,signal.linetype,signal.arrowtype)},drawSignal:function(signal,offsetY){var aX=getCenterX(signal.actorA),bX=getCenterX(signal.actorB),x=(bX-aX)/2+aX,y=offsetY+SIGNAL_MARGIN+2*SIGNAL_PADDING;this.drawText(x,y,signal.message,this.font_,ALIGN_CENTER),y=offsetY+signal.height-SIGNAL_MARGIN-SIGNAL_PADDING,this.drawLine(aX,y,bX,y,signal.linetype,signal.arrowtype)},drawNote:function(note,offsetY){note.y=offsetY;var actorA=note.hasManyActors()?note.actor[0]:note.actor,aX=getCenterX(actorA);switch(note.placement){case PLACEMENT.RIGHTOF:note.x=aX+ACTOR_MARGIN;break;case PLACEMENT.LEFTOF:note.x=aX-ACTOR_MARGIN-note.width;break;case PLACEMENT.OVER:if(note.hasManyActors()){var bX=getCenterX(note.actor[1]),overlap=NOTE_OVERLAP+NOTE_PADDING;note.x=Math.min(aX,bX)-overlap,note.width=Math.max(aX,bX)+overlap-note.x}else note.x=aX-note.width/2;break;default:throw new Error("Unhandled note placement: "+note.placement)}return this.drawTextBox(note,note.message,NOTE_MARGIN,NOTE_PADDING,this.font_,ALIGN_LEFT)},drawTextBox:function(box,text,margin,padding,font,align){var x=box.x+margin,y=box.y+margin,w=box.width-2*margin,h=box.height-2*margin;return this.drawRect(x,y,w,h),align==ALIGN_CENTER?(x=getCenterX(box),y=getCenterY(box)):(x+=padding,y+=padding),this.drawText(x,y,text,font,align)}}),"undefined"!=typeof Snap){var xmlns="http://www.w3.org/2000/svg",LINE={stroke:"#000000","stroke-width":2,fill:"none"},RECT={stroke:"#000000","stroke-width":2,fill:"#fff"},LOADED_FONTS={},SnapTheme=function(diagram,options,resume){_.defaults(options,{"css-class":"simple","font-size":16,"font-family":"Andale Mono, monospace"}),this.init(diagram,options,resume)};_.extend(SnapTheme.prototype,BaseTheme.prototype,{init:function(diagram,options,resume){BaseTheme.prototype.init.call(this,diagram),this.paper_=void 0,this.cssClass_=options["css-class"]||void 0,this.font_={"font-size":options["font-size"],"font-family":options["font-family"]};var a=this.arrowTypes_={};a[ARROWTYPE.FILLED]="Block",a[ARROWTYPE.OPEN]="Open";var l=this.lineTypes_={};l[LINETYPE.SOLID]="",l[LINETYPE.DOTTED]="6,2";var that=this;this.waitForFont(function(){resume(that)})},waitForFont:function(callback){var fontFamily=this.font_["font-family"];if("undefined"==typeof WebFont)throw new Error("WebFont is required (https://github.com/typekit/webfontloader).");return LOADED_FONTS[fontFamily]?void callback():void WebFont.load({custom:{families:[fontFamily]},classes:!1,active:function(){LOADED_FONTS[fontFamily]=!0,callback()},inactive:function(){LOADED_FONTS[fontFamily]=!0,callback()}})},addDescription:function(svg,description){var desc=document.createElementNS(xmlns,"desc");desc.appendChild(document.createTextNode(description)),svg.appendChild(desc)},setupPaper:function(container){var svg=document.createElementNS(xmlns,"svg");container.appendChild(svg),this.addDescription(svg,this.diagram.title||""),this.paper_=Snap(svg),this.paper_.addClass("sequence"),this.cssClass_&&this.paper_.addClass(this.cssClass_),this.beginGroup();var a=this.arrowMarkers_={},arrow=this.paper_.path("M 0 0 L 5 2.5 L 0 5 z");a[ARROWTYPE.FILLED]=arrow.marker(0,0,5,5,5,2.5).attr({id:"markerArrowBlock"}),arrow=this.paper_.path("M 9.6,8 1.92,16 0,13.7 5.76,8 0,2.286 1.92,0 9.6,8 z"),a[ARROWTYPE.OPEN]=arrow.marker(0,0,9.6,16,9.6,8).attr({markerWidth:"4",id:"markerArrowOpen"})},layout:function(){BaseTheme.prototype.layout.call(this),this.paper_.attr({width:this.diagram.width+"px",height:this.diagram.height+"px"})},textBBox:function(text,font){var t=this.createText(text,font),bb=t.getBBox();return t.remove(),bb},pushToStack:function(element){return this._stack.push(element),element},beginGroup:function(){this._stack=[]},finishGroup:function(){var g=this.paper_.group.apply(this.paper_,this._stack);return this.beginGroup(),g},createText:function(text,font){text=_.invoke(text.split("\n"),"trim");var t=this.paper_.text(0,0,text);return t.attr(font||{}),text.length>1&&t.selectAll("tspan:nth-child(n+2)").attr({dy:"1.2em",x:0}),t},drawLine:function(x1,y1,x2,y2,linetype,arrowhead){var line=this.paper_.line(x1,y1,x2,y2).attr(LINE);return void 0!==linetype&&line.attr("strokeDasharray",this.lineTypes_[linetype]),void 0!==arrowhead&&line.attr("markerEnd",this.arrowMarkers_[arrowhead]),this.pushToStack(line)},drawRect:function(x,y,w,h){var rect=this.paper_.rect(x,y,w,h).attr(RECT);return this.pushToStack(rect)},drawText:function(x,y,text,font,align){var t=this.createText(text,font),bb=t.getBBox();return align==ALIGN_CENTER&&(x-=bb.width/2,y-=bb.height/2),t.attr({x:x-bb.x,y:y-bb.y}),t.selectAll("tspan").attr({x:x}),this.pushToStack(t),t},drawTitle:function(){return this.beginGroup(),BaseTheme.prototype.drawTitle.call(this),this.finishGroup().addClass("title")},drawActor:function(actor,offsetY,height){return this.beginGroup(),BaseTheme.prototype.drawActor.call(this,actor,offsetY,height),this.finishGroup().addClass("actor")},drawSignal:function(signal,offsetY){return this.beginGroup(),BaseTheme.prototype.drawSignal.call(this,signal,offsetY),this.finishGroup().addClass("signal")},drawSelfSignal:function(signal,offsetY){return this.beginGroup(),BaseTheme.prototype.drawSelfSignal.call(this,signal,offsetY),this.finishGroup().addClass("signal")},drawNote:function(note,offsetY){return this.beginGroup(),BaseTheme.prototype.drawNote.call(this,note,offsetY),this.finishGroup().addClass("note")}});var SnapHandTheme=function(diagram,options,resume){_.defaults(options,{"css-class":"hand","font-size":16,"font-family":"danielbd"}),this.init(diagram,options,resume)};_.extend(SnapHandTheme.prototype,SnapTheme.prototype,{drawLine:function(x1,y1,x2,y2,linetype,arrowhead){var line=this.paper_.path(handLine(x1,y1,x2,y2)).attr(LINE);return void 0!==linetype&&line.attr("strokeDasharray",this.lineTypes_[linetype]),void 0!==arrowhead&&line.attr("markerEnd",this.arrowMarkers_[arrowhead]),this.pushToStack(line)},drawRect:function(x,y,w,h){var rect=this.paper_.path(handRect(x,y,w,h)).attr(RECT);return this.pushToStack(rect)}}),registerTheme("snapSimple",SnapTheme),registerTheme("snapHand",SnapHandTheme)}if("undefined"!=typeof Raphael){var LINE={stroke:"#000000","stroke-width":2,fill:"none"},RECT={stroke:"#000000","stroke-width":2,fill:"#fff"};Raphael.fn.line=function(x1,y1,x2,y2){return assert(_.all([x1,x2,y1,y2],_.isFinite),"x1,x2,y1,y2 must be numeric"),this.path("M{0},{1} L{2},{3}",x1,y1,x2,y2)};var RaphaelTheme=function(diagram,options,resume){this.init(diagram,_.defaults(options,{"font-size":16,"font-family":"Andale Mono, monospace"}),resume)};_.extend(RaphaelTheme.prototype,BaseTheme.prototype,{init:function(diagram,options,resume){BaseTheme.prototype.init.call(this,diagram),this.paper_=void 0,this.font_={"font-size":options["font-size"],"font-family":options["font-family"]};var a=this.arrowTypes_={};a[ARROWTYPE.FILLED]="block",a[ARROWTYPE.OPEN]="open";var l=this.lineTypes_={};l[LINETYPE.SOLID]="",l[LINETYPE.DOTTED]="-",resume(this)},setupPaper:function(container){this.paper_=new Raphael(container,320,200),this.paper_.setStart()},draw:function(container){BaseTheme.prototype.draw.call(this,container),this.paper_.setFinish()},layout:function(){BaseTheme.prototype.layout.call(this),this.paper_.setSize(this.diagram.width,this.diagram.height)},cleanText:function(text){return text=_.invoke(text.split("\n"),"trim"),text.join("\n")},textBBox:function(text,font){text=this.cleanText(text),font=font||{};var p;font.obj_?p=this.paper_.print(0,0,text,font.obj_,font["font-size"]):(p=this.paper_.text(0,0,text),p.attr(font));var bb=p.getBBox();return p.remove(),bb},drawLine:function(x1,y1,x2,y2,linetype,arrowhead){var line=this.paper_.line(x1,y1,x2,y2).attr(LINE);return void 0!==arrowhead&&line.attr("arrow-end",this.arrowTypes_[arrowhead]+"-wide-long"),void 0!==arrowhead&&line.attr("stroke-dasharray",this.lineTypes_[linetype]),line},drawRect:function(x,y,w,h){return this.paper_.rect(x,y,w,h).attr(RECT)},drawText:function(x,y,text,font,align){text=this.cleanText(text),font=font||{},align=align||ALIGN_LEFT;var paper=this.paper_,bb=this.textBBox(text,font);align==ALIGN_CENTER&&(x-=bb.width/2,y-=bb.height/2);var t;return font.obj_?t=paper.print(x-bb.x,y-bb.y,text,font.obj_,font["font-size"]):(t=paper.text(x-bb.x-bb.width/2,y-bb.y,text),t.attr(font),t.attr({"text-anchor":"start"})),t}});var RaphaelHandTheme=function(diagram,options,resume){this.init(diagram,_.defaults(options,{"font-size":16,"font-family":"daniel"}),resume)};_.extend(RaphaelHandTheme.prototype,RaphaelTheme.prototype,{setupPaper:function(container){RaphaelTheme.prototype.setupPaper.call(this,container),this.font_.obj_=this.paper_.getFont("daniel")},drawLine:function(x1,y1,x2,y2,linetype,arrowhead){var line=this.paper_.path(handLine(x1,y1,x2,y2)).attr(LINE);return void 0!==arrowhead&&line.attr("arrow-end",this.arrowTypes_[arrowhead]+"-wide-long"),void 0!==arrowhead&&line.attr("stroke-dasharray",this.lineTypes_[linetype]),line},drawRect:function(x,y,w,h){return this.paper_.path(handRect(x,y,w,h)).attr(RECT)}}),registerTheme("raphaelSimple",RaphaelTheme),registerTheme("raphaelHand",RaphaelHandTheme)}if("undefined"!=typeof Raphael&&Raphael.registerFont({w:209,face:{"font-family":"Daniel","font-weight":700,"font-stretch":"normal","units-per-em":"360","panose-1":"2 11 8 0 0 0 0 0 0 0",ascent:"288",descent:"-72","x-height":"7",bbox:"-92.0373 -310.134 519 184.967","underline-thickness":"3.51562","underline-position":"-25.1367","unicode-range":"U+0009-U+F002"},glyphs:{" ":{w:179},"\t":{w:179},"\r":{w:179},"!":{d:"66,-306v9,3,18,11,19,24v-18,73,-20,111,-37,194v0,10,2,34,-12,34v-12,0,-18,-9,-18,-28v0,-85,23,-136,38,-214v1,-7,4,-10,10,-10xm25,-30v15,-1,28,34,5,35v-11,-1,-38,-36,-5,-35",w:115},'"':{d:"91,-214v-32,3,-25,-40,-20,-68v3,-16,7,-25,12,-27v35,13,14,56,8,95xm8,-231v4,-31,1,-40,18,-75v37,7,11,51,11,79v-3,3,-4,8,-5,13v-17,4,-16,-10,-24,-17",w:117},"#":{d:"271,-64v-30,26,-96,-7,-102,51v-6,2,-13,2,-24,-2v-2,-11,10,-21,2,-28v-14,5,-48,0,-48,22v0,23,-11,14,-29,10v-7,-6,6,-19,-1,-24r-32,4v-19,-8,-15,-24,5,-28r33,-6v4,0,24,-23,11,-27v-26,0,-63,14,-74,-10v3,-1,9,-17,16,-10v15,-8,81,4,89,-30v8,-14,16,-34,24,-38v23,9,24,38,5,49v37,24,55,-38,72,-43v19,10,20,23,-1,45v2,8,23,1,29,4v3,3,6,6,10,11v-14,13,-20,12,-45,12v-17,0,-16,17,-19,29v18,-7,49,3,67,-2v4,0,8,4,12,11xm161,-104v-30,-1,-44,10,-44,37v14,1,24,0,40,-5v0,-1,3,-10,8,-26v0,-4,-1,-6,-4,-6",w:285},$:{d:"164,-257v29,4,1,42,-3,50v5,5,38,13,41,24v8,4,6,15,-2,21v-18,3,-36,-17,-49,-17v-17,1,-31,40,-28,48v5,4,8,8,9,10v13,1,35,37,28,44v-10,21,-36,20,-65,28v-10,10,-12,40,-17,51v-9,-3,-28,1,-18,-17v0,-13,5,-24,-1,-35v-18,1,-59,-10,-42,-29v21,0,56,16,55,-16v5,-4,9,-18,9,-26v-14,-15,-55,-41,-53,-65v2,-33,56,-19,98,-26v10,-14,31,-43,38,-45xm93,-152v11,-10,15,-15,14,-29v-17,-3,-37,1,-43,6v10,12,20,19,29,23xm111,-103v-8,1,-11,12,-10,22v10,0,28,2,27,-8v0,-4,-13,-15,-17,-14",w:225},"%":{d:"181,-96v24,-7,67,-13,104,1v14,18,21,19,22,44v-13,43,-99,61,-146,36v-9,-9,-22,-11,-32,-29v0,-27,24,-53,52,-52xm139,-185v-9,68,-138,73,-131,-5v0,-3,3,-9,9,-17v13,1,27,1,17,-16v5,-39,63,0,93,-6v36,1,80,-9,102,11v15,32,12,32,-8,56v-16,21,-103,78,-152,125r-14,28v-23,11,-25,-7,-29,-20v34,-71,133,-98,171,-162v-13,-12,-52,-5,-61,1v0,1,1,3,3,5xm38,-190v0,34,55,29,70,8v0,-14,-20,-11,-32,-14v-14,-3,-24,-9,-40,-10v1,0,5,11,2,16xm172,-53v12,27,90,18,102,-5v-18,-7,-32,-10,-40,-10v-29,3,-57,-4,-62,15",
w:308},"&":{d:"145,-82v17,-8,47,-15,71,-26v13,2,25,12,9,23v-23,7,-40,16,-53,27r0,6v13,8,30,21,36,38v0,8,-4,12,-11,12v-19,0,-43,-39,-59,-44v-30,12,-65,29,-97,32v-32,3,-45,-41,-23,-63v21,-20,52,-26,70,-48v-4,-31,-12,-47,9,-73v13,-16,20,-29,23,-39v15,-15,32,-22,51,-22v30,9,62,64,32,96v-2,3,-47,42,-69,48v-15,8,-11,9,0,22v6,7,10,11,11,11xm114,-138v25,-13,62,-38,74,-62v0,-9,-10,-31,-20,-29v-28,7,-60,42,-60,75v0,10,2,15,6,16xm99,-91v-18,10,-54,18,-59,45v26,5,61,-12,77,-22v-1,-5,-13,-23,-18,-23",w:253},"'":{d:"36,-182v-36,7,-34,-61,-17,-80v15,1,21,19,21,20r-1,-1v0,0,-1,12,-5,35v1,5,3,17,2,26",w:63},"(":{d:"130,-306v13,2,23,43,-1,43v-49,43,-77,77,-90,148v5,49,27,67,64,101v4,14,5,6,2,19r-15,0v-35,-17,-79,-58,-79,-120v0,-58,66,-176,119,-191",w:120},")":{d:"108,-138v-2,73,-48,120,-98,153v-17,-5,-16,-20,-6,-31v52,-64,73,-62,74,-135v1,-42,-40,-98,-58,-128v0,-5,-1,-12,-2,-22v18,-18,25,0,42,27v25,39,50,66,48,136",w:120},"*":{d:"121,-271v15,-5,36,-8,40,9v-5,10,-31,19,-47,31v0,11,34,43,14,53v-18,8,-24,-24,-34,-20v-4,10,-4,19,-12,41v-25,7,-15,-30,-17,-47v-13,-1,-17,9,-46,30r-10,0v-20,-32,37,-43,54,-64v-10,-11,-36,-33,-16,-51v3,0,14,8,33,24v8,-10,26,-39,32,-42v14,7,15,23,9,36",w:177},"+":{d:"163,-64v-7,22,-65,2,-77,21v-2,10,-6,21,-11,35v-20,4,-21,-12,-19,-29v3,-23,-44,6,-39,-27v-8,-22,36,-8,49,-18v8,-13,6,-36,24,-40v19,-4,14,32,11,39v18,3,19,2,54,8v2,1,5,5,8,11",w:170},",":{d:"25,63v-26,21,-48,-2,-22,-24v14,-12,35,-40,35,-69v3,-2,3,-11,12,-9v35,17,5,88,-25,102",w:97},"-":{d:"57,-94v19,4,55,-5,54,17v-15,23,-54,20,-91,15v-4,2,-13,-10,-11,-16v-1,-22,28,-15,48,-16",w:124},".":{d:"40,-48v21,20,21,44,-4,44v-33,0,-26,-24,-10,-44r14,0",w:67},"/":{d:"21,20v-22,-45,21,-95,41,-126v38,-57,115,-158,193,-201v2,0,4,3,7,11v11,29,-15,34,-25,55v-81,56,-189,208,-197,261r-19,0",w:275},0:{d:"78,-237v70,-47,269,-41,270,59v0,34,-11,53,-29,76v-13,35,-30,32,-85,64v-6,2,-10,6,-7,8v-73,14,-98,38,-173,1v-7,-13,-52,-48,-46,-88v9,-57,27,-75,70,-120xm123,-38v100,0,202,-46,195,-153v-32,-55,-144,-73,-211,-35v-16,34,-68,54,-53,108v6,25,1,22,-3,39v6,24,41,41,72,41",w:353},1:{d:"39,-208v0,-14,6,-59,29,-39v3,4,6,13,10,24r-22,128r8,87v-4,6,-9,3,-16,2v-44,-38,-9,-137,-9,-202",w:93},2:{d:"88,-35v47,-10,119,-24,168,-9v0,12,-23,13,-35,16v1,1,3,1,5,1v-74,8,-118,23,-194,23v-14,0,-20,-13,-21,-28v55,-40,83,-61,123,-104v26,-13,65,-67,71,-102v-1,-9,-11,-16,-22,-16v-20,-1,-120,29,-156,49v-10,-2,-30,-20,-10,-28v50,-21,111,-51,178,-48v25,10,44,22,36,39v12,30,-19,64,-34,83v-39,48,-37,39,-115,109v0,5,-3,8,-8,11v4,3,8,4,14,4",w:265},3:{d:"188,-282v34,-10,74,25,47,51v-19,32,-55,50,-92,70v28,14,116,25,108,70v8,14,-49,40,-63,48v-29,9,-130,22,-168,42v-6,-5,-19,-7,-12,-22v56,-36,175,-21,210,-76v-9,-20,-88,-42,-97,-33v-20,-1,-41,2,-56,-7r5,-21v56,-25,103,-36,137,-78v1,-1,2,-5,4,-11v-15,-14,-56,7,-79,0v-10,9,-73,22,-92,31v-11,-4,-28,-23,-13,-30v50,-22,96,-26,154,-37v0,-1,8,3,7,3",w:260},4:{d:"79,-249v-7,17,-29,75,-33,96v0,6,3,8,8,8v43,-2,111,6,141,-6v17,-47,20,-100,63,-148v9,4,16,7,21,10v-17,31,-44,95,-51,141v7,4,24,-4,23,10v-1,16,-29,12,-31,23v-10,22,-9,69,-7,103v-3,2,-7,5,-10,9v-47,-11,-23,-74,-16,-114v0,-4,-2,-6,-7,-6v-65,2,-89,13,-162,4v-22,-22,-2,-53,5,-76v16,-15,17,-57,35,-70v6,-1,21,11,21,16",w:267},5:{d:"185,-272v30,7,45,-8,53,18v1,16,-17,18,-34,14v0,0,-95,-11,-129,1v-6,9,-24,33,-29,54v76,10,171,5,214,47v11,11,22,30,5,52v-14,12,-30,14,-34,27v-26,11,-141,63,-157,60v-16,-2,-25,-19,-4,-27v48,-18,128,-39,170,-86v4,-14,-65,-41,-85,-41r-92,0v-10,-4,-66,-1,-57,-23v0,-23,23,-51,35,-83v11,-28,133,-10,144,-13",w:284},6:{d:"70,-64v9,-51,63,-74,123,-71v43,2,109,3,111,41r-25,47v0,1,1,2,2,3v-5,0,-39,10,-41,20v-15,3,-22,4,-22,11v-39,1,-77,20,-119,13v-42,-7,-35,-9,-77,-46v-56,-118,94,-201,176,-229v7,0,21,8,20,15v-2,17,-23,15,-43,24v-69,31,-119,72,-134,145v-5,25,36,68,78,64v59,-6,128,-18,153,-61v-7,-14,-13,-9,-32,-21v-67,-15,-118,-5,-150,43r0,12v-13,4,-17,-3,-20,-10",w:310},7:{d:"37,-228v33,-14,173,-17,181,-19v28,-1,24,31,9,45v-17,15,-45,49,-59,69v-17,26,-55,67,-61,113v-10,13,-9,14,-14,20v-33,-13,-20,-25,-11,-53v16,-48,73,-115,109,-156v2,-7,5,-14,-10,-12v-26,4,-54,6,-76,13v-23,-5,-83,31,-94,-9v2,-8,18,-19,26,-11",w:245},8:{d:"57,-236v40,-50,166,-51,213,-10v22,28,10,63,-22,78r-35,17v8,5,54,24,53,44v-5,14,-4,33,-18,42v-13,13,-35,18,-44,34v-60,27,-190,49,-194,-42v7,-41,17,-54,59,-70r0,-4v-32,-9,-73,-62,-26,-85v4,0,8,-2,14,-4xm142,-160v24,-2,160,-31,99,-72v-28,-18,-108,-33,-146,-5v-16,12,-28,30,-33,59v24,12,37,20,80,18xm41,-62v30,65,189,6,199,-37v3,-14,-60,-30,-74,-30v-70,0,-118,10,-125,67",w:290},9:{d:"11,-192v15,-49,119,-61,161,-23v16,15,27,55,11,79v-20,62,-51,79,-96,118v-10,4,-45,27,-50,6v9,-15,66,-52,98,-99v-7,-7,-8,-3,-25,0v-49,-11,-96,-25,-99,-81xm145,-131v7,-5,13,-34,13,-41v-2,-51,-104,-38,-114,-6v-2,10,37,35,46,35v23,1,43,-1,55,12",w:198},":":{d:"39,-125v15,-8,40,-1,40,15v0,15,-6,22,-19,22v-13,0,-29,-21,-21,-37xm66,-17v-8,27,-51,19,-46,-8v-1,-6,8,-22,14,-20v29,0,30,6,32,28",w:95},";":{d:"56,-93v2,-30,37,-22,40,2v0,2,-1,7,-3,15v-13,8,-15,6,-27,4xm64,-44v11,-11,30,-4,32,14v-21,39,-63,71,-92,85v-5,0,-11,-2,-18,-8v11,-23,36,-36,50,-61v11,-7,19,-20,28,-30",w:107},"<":{d:"166,-202v12,0,29,15,24,29v0,4,-119,64,-120,73v15,21,89,64,91,86v2,29,-18,12,-30,15v-27,-29,-59,-54,-95,-75v-18,-10,-25,-13,-24,-41",w:176},"=":{d:"125,-121v18,7,55,-9,69,14v0,17,-45,26,-135,26v-18,0,-27,-7,-27,-21v-1,-37,60,-5,93,-19xm138,-71v20,0,48,-1,50,16v-13,24,-86,32,-131,29v-29,-2,-43,-10,-43,-24v-7,-23,36,-14,39,-17v27,6,57,-4,85,-4",w:196},">":{d:"4,-14v20,-48,77,-59,118,-94v-16,-19,-58,-52,-81,-75v-11,-7,-15,-38,-1,-40v33,16,83,71,121,105v26,23,-6,35,-41,53v-29,16,-56,28,-73,54v-21,15,-16,20,-34,15v-3,0,-9,-16,-9,-18",w:174},"?":{d:"105,-291v57,-13,107,-4,107,39v0,67,-136,85,-155,137v-1,6,10,23,-4,23v-23,1,-33,-35,-23,-57v31,-41,124,-60,149,-103v-8,-21,-72,-5,-88,-1v-23,6,-59,39,-71,8v0,0,-1,0,1,-17v10,-4,45,-20,84,-29xm80,-25v-6,4,-8,39,-24,22v-24,3,-22,-21,-13,-35v17,-7,29,5,37,13",w:216},"@":{d:"218,-207v23,8,42,14,47,37v44,68,-27,137,-87,85r1,0v0,2,-59,19,-61,17v-35,0,-42,-47,-17,-68r0,-4v-19,-1,-45,37,-49,40v-37,76,58,72,121,62v11,-2,34,-13,36,3v-14,31,-69,31,-114,33v-51,2,-99,-41,-80,-92v2,-30,22,-40,42,-63v35,-20,91,-53,161,-50xm217,-101v23,0,35,-19,35,-41v0,-43,-75,-41,-102,-19v36,3,55,16,62,41v-6,5,-6,19,5,19xm127,-110v8,5,51,-15,28,-16v-4,0,-25,4,-28,16",w:291},A:{d:"97,-81v-23,-10,-39,38,-52,60v-8,6,-8,6,-22,18v-22,-7,-23,-37,-4,-49v7,-8,11,-15,15,-23r-1,1v-14,-26,23,-29,31,-40v1,-1,15,-29,26,-36v17,-31,39,-58,54,-92v16,-20,20,-51,41,-66v29,5,34,62,45,92v9,64,21,103,49,155v-3,25,-44,11,-54,0v-34,-12,-97,-29,-128,-20xm107,-118v20,6,80,10,111,17v6,-7,-4,-15,-7,-24v-11,-28,-9,-92,-30,-117v-9,9,-19,44,-34,55v-9,23,-27,40,-40,69",w:294},B:{d:"256,-179v41,10,115,34,91,91v-6,3,-14,12,-19,20v-37,19,-50,34,-63,25v-9,10,-12,11,-34,13r3,-3v-4,-4,-12,-4,-18,0v0,0,2,2,5,4v-21,14,-26,6,-44,15v-4,0,-7,-2,-8,-5v-6,11,-20,-5,-18,11v-36,4,-91,35,-114,4v-7,-62,-10,-138,4,-199v-1,-19,-37,2,-37,-27v0,-8,2,-13,6,-15v68,-31,231,-92,311,-39v8,12,12,20,12,25v-8,42,-32,49,-77,80xm79,-160v72,-17,135,-39,184,-70v20,-13,31,-23,31,-27v1,-6,-30,-13,-38,-12v-54,0,-116,13,-186,41v11,21,1,48,9,68xm262,-43v0,-4,3,-6,-4,-5v0,1,1,2,4,5xm211,-140v-34,7,-94,24,-139,15v-6,20,-4,56,-4,82v0,29,43,1,56,2v48,-11,108,-25,154,-48v20,-10,32,-17,32,-25v0,-18,-33,-26,-99,-26xm195,-20v6,1,6,-2,5,-7v-3,2,-7,2,-5,7",w:364},C:{d:"51,-114v-12,75,96,76,166,71r145,-10v9,2,9,5,9,18v-37,18,-85,28,-109,22v-18,10,-47,10,-71,10v-29,0,-68,1,-105,-11v-6,-1,-10,-3,-10,-8v-33,-13,-48,-33,-66,-59v-19,-114,146,-150,224,-177v35,0,88,-31,99,7v-1,29,-49,14,-76,28v-55,8,-115,35,-175,71v-13,8,-23,21,-31,38",w:376},D:{d:"312,-78v-2,1,-3,7,-10,5v6,-3,10,-4,10,-5xm4,-252v2,-27,83,-38,106,-39v130,-7,267,1,291,109v0,0,-2,8,-3,25v-5,9,-4,28,-23,34v-4,4,-2,5,-7,0v-3,3,-15,7,-5,10v0,0,-10,14,-13,2v-11,1,-8,5,-20,14v1,2,7,3,9,1v-4,13,-22,13,-11,4v0,-3,1,-6,-3,-5v-40,29,-103,38,-141,65v10,6,22,-7,34,-3v-41,20,-127,44,-171,46v-21,1,-47,-33,-11,-39v15,-2,43,-6,56,-11v-16,-101,-5,-130,9,-207v2,0,4,-1,6,-3v-16,-17,-91,38,-103,-3xm297,-69v-7,3,-17,8,-25,7v1,1,3,2,5,2v-4,2,-11,5,-23,9v4,-11,30,-21,43,-18xm240,-51v10,0,12,2,0,6r0,-6xm220,-36v-1,-3,4,-6,6,-3v0,1,-2,1,-6,3xm125,-48v16,6,137,-46,155,-53v29,-18,101,-44,82,-93v-21,-53,-84,-61,-168,-67v-20,7,-50,3,-77,8v33,54,-12,132,8,205xm159,-22v-4,-1,-15,-5,-15,2v7,-1,12,-2,15,-2",w:381},E:{d:"45,-219v-19,-36,34,-41,63,-36v44,-10,133,-8,194,-15v3,2,38,11,52,15v-73,19,-171,21,-246,38v-9,11,-16,32,-20,61v35,11,133,-6,183,3v1,6,2,7,3,14v-46,24,-118,16,-193,27v-15,13,-22,52,-22,66v60,1,121,-20,188,-20v22,10,53,-7,74,5v16,29,-23,26,-43,32v-73,4,-139,13,-216,27r-52,-10v-4,-22,23,-69,26,-98v-3,0,-10,-15,-12,-24v20,-12,34,-23,35,-67v2,-1,5,-5,5,-7v0,-4,-14,-11,-19,-11",w:353},F:{d:"270,-258v13,2,59,6,48,34v-78,-3,-143,1,-212,22v-10,16,-21,43,-24,69r145,-9v8,3,29,-3,16,21v-14,-1,-59,13,-60,7v-12,13,-67,18,-108,21v-2,1,-4,3,-7,6v-2,23,-8,43,-7,69v1,28,-30,11,-40,5r10,-80r-26,-14v5,-10,10,-33,28,-25v21,-3,15,-46,26,-59v-1,-3,-32,-13,-28,-24v2,-22,45,-16,59,-30v47,4,99,-14,151,-9v5,-3,25,-3,29,-4",w:236},G:{d:"311,-168v53,0,94,57,74,110v-31,37,-71,34,-136,52v-13,-7,-41,10,-57,7v-73,-1,-122,-17,-162,-59v-49,-51,-24,-80,5,-130v35,-61,138,-93,214,-106v16,4,42,-1,40,21v-5,40,-39,2,-73,21v-76,19,-162,65,-177,142v28,103,237,76,312,29v2,-3,3,-7,3,-13v-10,-35,-37,-43,-87,-45v-16,-13,-53,-9,-78,1v-4,-3,-5,-7,-5,-11v17,-29,73,-17,108,-24v12,4,18,5,19,5",w:391},H:{d:"300,-268v18,12,19,32,4,51v-35,44,-34,140,-46,217v-1,5,-5,13,-11,12v-6,1,-19,-14,-18,-27r7,-106v-28,7,-76,22,-116,14v-18,2,-36,6,-55,3v-43,-8,-14,53,-33,75v-29,1,-26,-67,-21,-97v5,-31,28,-73,43,-98v2,2,7,3,14,3v13,33,-11,48,-13,78v61,4,118,2,176,2v8,0,13,-6,15,-20v4,-47,21,-87,54,-107",w:288},I:{d:"63,-266v34,10,-4,105,-8,128r-24,126v-2,2,-3,1,-9,6v-12,-10,-12,-15,-12,-47v0,-93,9,-156,28,-188v10,-17,19,-25,25,-25",w:79},J:{d:"235,-291v26,11,31,104,31,142v0,37,-2,95,-32,126v-33,34,-121,26,-167,1v-18,-11,-54,-29,-59,-59v0,-3,5,-15,16,-14v31,36,90,57,162,51v63,-30,56,-148,32,-226v-1,-16,11,-13,17,-21",w:282},K:{d:"212,-219v17,-5,80,-60,80,-19v0,9,-2,14,-5,16r-132,78v-34,23,-54,32,-21,50v39,21,74,23,124,41v5,2,7,5,7,9v-4,24,-55,15,-79,8v-67,-19,-98,-36,-116,-83v9,-24,38,-35,66,-61v7,-4,49,-30,76,-39xm47,-194v11,-20,11,-45,31,-55v2,2,4,3,6,0v29,39,-21,96,-18,128v-17,24,-15,62,-29,113v-4,3,-10,7,-19,11v-12,-13,-10,-28,-8,-53v3,-31,17,-79,37,-144",w:270},L:{d:"84,-43v58,0,179,-27,242,-4v3,17,-29,24,-40,26v-85,-4,-202,46,-268,3v-24,-16,-2,-33,-4,-57v26,-76,38,-108,86,-191v14,-7,26,-50,45,-32v6,22,5,31,-12,46v-20,39,-50,82,-67,142v-7,6,-19,46,-19,54v0,9,12,13,37,13",w:331},M:{d:"174,-236v-1,52,-11,92,-7,143v10,5,15,-12,22,-18v42,-55,90,-130,136,-174r15,-18v42,2,32,53,11,80v-12,58,-54,143,-34,210v0,3,-3,12,-9,10v-31,-5,-32,-57,-27,-92v4,-27,12,-58,25,-93v-5,-10,5,-19,6,-30v-46,44,-66,110,-129,172v-11,10,-18,15,-22,15v-34,6,-28,-103,-28,-152v-28,22,-65,119,-96,170v-9,15,-34,3,-31,-19v30,-64,91,-177,139,-229v12,-1,29,13,29,25",w:343},N:{d:"248,-20v-3,17,-37,18,-43,3v-24,-35,-53,-145,-80,-203v-32,40,-55,120,-92,174v-13,3,-26,-13,-27,-22r87,-171v4,-13,20,-57,42,-32v42,48,46,139,82,198v29,-45,46,-88,65,-153v12,-19,23,-42,38,-60v27,-1,14,18,4,44v-6,46,-32,68,-37,121v-15,29,-33,69,-39,101",w:307},O:{d:"240,-268v85,1,163,29,150,125v13,7,-12,18,-5,26v-23,63,-133,112,-228,124v-80,-16,-171,-56,-148,-153v11,-47,20,-43,53,-83v17,-9,39,-22,73,-29v45,-10,81,-10,105,-10xm363,-156v16,-51,-62,-85,-111,-79v-25,-11,-50,8,-81,0v-15,10,-70,16,-85,31v6,20,-27,24,-39,45v-42,75,40,128,115,128v56,0,209,-71,201,-125",w:383},P:{d:"70,-225v-7,-12,-36,16,-49,19v-4,0,-9,-5,-14,-17v21,-47,114,-55,172,-59v41,-3,132,33,99,87v-21,34,-72,59,-144,80v-2,16,-79,3,-74,46v3,25,-5,47,-10,68v-22,-1,-23,-29,-22,-56v2,-25,-20,-32,-8,-50v21,-5,10,-35,25,-57v6,-28,14,-48,25,-61xm71,-229v47,14,-2,50,-1,99v41,-3,113,-37,173,-76v5,-9,8,-14,8,-15v-28,-47,-125,-29,-180,-8",w:252},Q:{d:"374,-217v20,59,-11,127,-48,156r30,38v-1,6,-8,16,-14,9v-3,0,-19,-9,-47,-26v-72,35,-173,75,-236,12v-70,-40,-67,-213,26,-217r8,5v24,-20,72,-48,112,-38v21,-4,22,-1,50,-2v66,-2,94,20,119,63xm296,-88v13,5,61,-49,63,-84v4,-62,-54,-78,-119,-76v-14,-6,-49,5,-71,3v-42,16,-89,41,-93,94v-9,11,1,25,-7,38v-12,-19,-7,-67,-1,-88v-56,30,-37,137,19,155v27,17,92,19,119,0v12,-2,29,-9,52,-20v2,-2,3,-3,3,-6v-11,-12,-46,-27,-54,-56v0,-13,3,-19,9,-19v18,1,60,52,80,59",w:379},R:{d:"100,-275v96,-23,196,-10,208,78v-3,18,-17,52,-49,62v-14,20,-54,23,-79,40v-2,0,-14,2,-36,6v-40,8,-30,14,-3,33v37,27,52,30,118,55v16,6,31,23,12,27v-58,-2,-104,-29,-143,-61v-14,-3,-16,-15,-39,-27v-23,-19,-28,-12,-15,-38v63,-19,111,-15,163,-53v27,-20,43,-36,43,-49v0,-64,-120,-62,-173,-38v-9,4,-38,9,-40,18v-10,32,-16,70,-13,116v-10,21,-8,47,-6,75v2,31,-9,29,-27,22v-9,-55,5,-140,15,-190v-8,-6,-24,10,-24,-11v0,-34,16,-34,42,-55v2,-1,17,-4,46,-10",w:297},S:{d:"13,-3v-7,-3,-22,-18,-5,-22v68,-15,119,-32,154,-45v51,-19,39,-34,3,-53v-46,-25,-82,-30,-121,-64v-33,-29,-50,-35,-25,-58v37,-20,119,-29,181,-29v29,0,44,6,44,18v-9,26,-62,6,-104,14v-17,2,-72,6,-92,16v37,53,132,58,180,111v8,9,11,20,11,30v-4,17,-23,35,-42,34v-21,16,-17,1,-49,17v-14,7,-41,9,-56,20v-25,-3,-49,10,-79,11",w:234},T:{d:"141,-3v-36,-6,1,-49,-3,-79v10,-19,6,-35,15,-64r26,-85v-51,-9,-100,10,-141,14v-16,2,-30,-26,-11,-32v26,-8,143,-8,179,-19r12,6v67,-2,142,-1,200,-1v8,0,14,3,19,10v-18,16,-74,3,-103,14v-48,-4,-60,4,-113,7v-42,22,-36,130,-58,187v1,12,-9,44,-22,42",w:277},U:{d:"365,-262v13,56,-22,104,-36,141v-19,22,-30,38,-57,56v-4,18,-60,35,-78,50v-53,28,-142,0,-161,-34v-31,-56,-37,-108,-11,-164v17,-33,29,-50,48,-29v-2,2,-3,7,-4,13v-44,36,-38,149,7,174v30,26,55,19,102,4v56,-17,66,-34,120,-76v12,-24,56,-68,46,-122r0,-16v0,1,-1,3,-1,6v4,-13,11,-10,25,-3",w:368},V:{d:"246,-258v21,-22,31,-26,44,-8v1,1,-12,22,-28,35v-15,25,-41,38,-56,69v-13,15,-20,31,-28,57v-15,13,-11,29,-27,72v3,21,-5,24,-27,27v-33,-45,-54,-118,-84,-167v-5,-26,-18,-50,-25,-76v-3,-12,24,-8,29,-5v8,13,18,52,26,70r52,115v9,-2,4,-9,10,-21r25,-47v25,-44,46,-76,89,-121",w:234},W:{d:"31,-213v16,46,17,106,41,151v31,-35,49,-89,76,-127v30,-15,39,27,52,56v10,22,21,48,35,67v2,0,4,-1,5,-3v16,-28,50,-76,79,-121v14,-21,40,-63,64,-83r5,8v-30,58,-76,110,-97,173v-18,28,-25,37,-33,63v-11,1,-16,25,-30,15v-21,-31,-44,-89,-62,-131v0,-2,-1,-3,-5,-5v-17,11,-16,36,-31,50v-20,33,-20,84,-68,94v-24,-19,-23,-81,-39,-111v-1,-15,-29,-94,-10,-108v9,2,12,5,18,12",w:331},X:{d:"143,-183v43,-25,69,-36,126,-62v22,-10,86,-10,56,21v-51,3,-158,61,-154,64v10,15,41,30,50,52v27,17,46,60,70,82v9,14,-6,30,-24,20v-35,-43,-75,-100,-116,-132v-48,13,-100,47,-118,94v-1,49,-26,34,-27,4v-1,-26,13,-27,17,-48v22,-27,68,-55,90,-77v-9,-12,-60,-39,-79,-57v-6,-10,-6,-25,12,-25",w:312},Y:{d:"216,-240v19,-14,42,10,22,26v-54,66,-121,109,-156,197v-8,21,-11,15,-30,4v3,-37,27,-61,33,-76v12,-12,15,-19,32,-42v-8,-6,-40,5,-45,5v-48,-6,-69,-65,-56,-113v14,0,13,-1,24,7v2,33,12,75,42,73v36,-2,102,-57,134,-81",w:189},Z:{d:"60,-255v66,12,200,-34,240,21v-13,42,-63,62,-98,89v-19,15,-47,33,-82,55v-25,16,-47,32,-66,47v58,24,129,-6,208,-6v23,0,36,12,13,19v-33,2,-53,5,-86,10v-32,18,-88,15,-135,15v-9,-1,-55,-1,-48,-29v1,-24,30,-24,40,-41v64,-50,151,-86,208,-147v-38,-17,-155,12,-198,-4v0,0,-11,-33,4,-29",w:310},"[":{d:"72,-258r-15,250v30,4,55,-3,80,-6v7,-1,8,17,9,23v-28,15,-73,23,-121,21v-7,0,-10,-6,-10,-17v0,-60,25,-193,22,-288v0,-16,13,-20,33,-19v9,-3,34,-12,51,-12v16,0,15,16,19,29v-16,7,-48,10,-68,19",w:151},"\\":{d:"236,38v20,-18,-8,-74,-13,-90v-44,-78,-112,-190,-200,-253v-2,0,-5,4,-7,12v-11,31,13,36,24,58v74,61,174,219,180,273r16,0",w:257},"]":{d:"133,-258v-23,-13,-84,6,-85,-32v0,-10,5,-15,14,-15v0,0,30,2,90,7v10,1,15,13,15,36v2,7,-8,59,-13,112r-11,125v-9,48,9,90,-59,71v-20,-4,-39,-1,-59,-4v-5,-10,-25,-12,-14,-30v8,-3,61,-13,78,-8v14,1,8,-7,10,-17v15,-69,21,-166,34,-245",w:171},"^":{d:"68,-306v20,15,47,36,58,60v-1,4,0,7,-9,7v-26,0,-47,-38,-49,-32v-15,9,-41,50,-54,30v-2,-31,17,-23,33,-51v8,-9,15,-14,21,-14",w:135},_:{d:"11,15v-8,33,18,45,50,34r205,2r197,-5v11,-5,14,-9,7,-28v-95,-21,-258,-10,-376,-10v-25,0,-72,-3,-83,7",w:485},"`":{d:"75,-264v16,8,56,14,39,43v-30,-8,-65,-23,-105,-44v-1,-3,-3,-28,5,-25v16,5,44,17,61,26",w:129},a:{d:"124,-56v10,4,59,41,65,50v1,7,-6,17,-12,17r-60,-30v-22,2,-42,21,-65,19v-33,4,-68,-67,-15,-81v41,-27,96,-39,110,9v0,6,-4,12,-11,16v-33,-25,-67,-5,-88,12v10,16,61,-18,76,-12",w:196},b:{d:"80,-140v69,1,123,0,134,52v5,26,-71,71,-97,70v-11,11,-88,22,-94,22v-11,-3,-26,-18,-6,-24v19,-5,-2,-19,-1,-35v1,-18,11,-36,-5,-47v-6,-17,-6,-21,14,-32v6,-45,18,-89,28,-124v2,-7,8,-12,17,-15v5,3,10,11,16,28v-12,27,-13,63,-23,96v0,6,6,9,17,9xm87,-107v-40,-9,-31,31,-39,54v8,15,0,25,12,22v30,-8,60,-18,88,-32v39,-18,49,-33,-1,-42v-20,-4,-45,-7,-60,-2",w:217},c:{d:"128,-123v29,-7,37,29,12,33v-27,-4,-40,6,-79,25v-8,4,-13,11,-16,22v30,32,91,3,134,11v5,13,-8,26,-22,19v-51,25,-139,28,-150,-30v6,-50,69,-82,121,-80",w:194},d:{d:"224,-201v0,-35,-17,-111,24,-94v7,86,-2,119,0,197v-4,2,-8,21,-18,16v-62,-7,-154,-8,-185,29v6,17,28,26,51,26v16,0,100,-15,132,-18v7,5,-6,20,-10,22v-24,8,-122,42,-163,25v-32,-5,-62,-53,-36,-80v35,-37,118,-46,198,-43v1,-22,7,-49,7,-80",w:265},e:{d:"4,-57v0,-58,51,-71,110,-74v33,-1,45,16,59,35v1,14,2,39,-7,42v-24,-2,-73,13,-99,11v-2,2,-2,3,-2,3v0,3,12,8,37,15v21,0,69,9,31,22v-9,14,-34,6,-56,6v-27,-5,-73,-28,-73,-60xm123,-102v-22,2,-68,5,-65,26v24,-2,66,5,79,-6v-5,-13,-1,-13,-14,-20",w:182},f:{d:"6,-59v6,-29,53,-4,53,-43v0,-64,29,-118,84,-150v45,-25,167,-24,155,51v-1,2,-7,6,0,6r-10,2v-45,-58,-165,-39,-186,39v-7,26,-11,42,-9,62v44,8,95,-21,135,-7v-12,25,-39,21,-76,30v-19,5,-18,7,-54,19v-2,8,15,32,17,35v-6,25,-26,26,-40,-5r-15,-24v-41,10,-44,12,-54,-15",w:234},g:{d:"132,-97v30,27,21,75,30,117v-12,31,-11,66,-36,103v-32,46,-105,83,-167,39v-31,-21,-49,-29,-51,-75v-2,-37,77,-50,121,-57v37,-6,68,-10,95,-11v7,-6,3,-32,4,-46v0,0,-1,1,-1,2v0,-18,-5,-31,-14,-45v-44,5,-79,20,-94,-18v3,-54,73,-54,125,-50v12,7,12,13,4,25v-30,-11,-76,8,-90,20v23,3,50,-16,74,-4xm-34,121v60,53,168,1,159,-86v-47,-7,-93,24,-142,30v-12,7,-45,19,-42,29v0,10,8,19,25,27",w:188},h:{d:"100,-310v11,-2,10,19,11,20v-11,52,-40,133,-53,189v-6,30,-9,37,-9,47v27,0,113,-34,143,-34v42,0,31,47,39,79v0,4,-5,17,-16,16v4,2,11,3,4,6v-24,-1,-28,-34,-25,-64v-1,-1,-2,-3,-5,-5v-51,0,-110,38,-162,51v-9,1,-15,-15,-16,-23v17,-89,39,-141,71,-264v0,-9,6,-19,18,-18",w:251},i:{d:"62,-209v7,18,9,23,-5,38v-23,-6,-21,-18,-11,-36v2,0,8,-1,16,-2xm34,-7v-18,-21,-8,-73,-1,-106v7,-10,20,-8,23,6v-1,36,7,72,-2,104v-8,2,-8,0,-20,-4",w:80},j:{d:"88,-191v5,28,-18,40,-28,21v0,-20,12,-29,28,-21xm82,-99v28,-1,16,35,16,61v0,60,-19,150,-35,202v-12,8,-19,31,-35,16v-32,-7,-43,-19,-56,-44r2,-17v11,4,49,45,61,18v10,-55,27,-107,30,-171v0,-16,0,-59,17,-65",w:120},k:{d:"59,-66v33,26,114,37,155,62v8,-4,22,-2,19,-17v0,-4,-12,-11,-30,-24v-36,-25,-54,-22,-99,-33v14,-21,119,-13,103,-63r-16,-7r-123,47r25,-93v-3,-15,16,-49,18,-81v1,-15,-21,-14,-25,-3v-31,82,-49,168,-75,257v2,2,22,30,27,10v2,-5,4,-9,9,-11v4,-16,4,-15,12,-44",w:236},l:{d:"66,-300v21,-6,37,23,30,55v-10,51,-28,135,-28,208v0,11,6,36,-13,37v-29,-5,-30,-48,-25,-83r28,-177v-6,-17,1,-29,8,-40",w:102},m:{d:"348,-59v-2,21,0,57,3,73v-17,3,-30,-1,-32,-16v-8,-7,-5,-44,-13,-70v-35,3,-82,49,-111,70v-12,8,-40,4,-39,-15r2,-56v-1,-13,4,-28,-8,-29v-35,8,-79,72,-115,87v-6,2,-20,-18,-21,-22v1,-20,14,-105,39,-64r8,15v17,-14,72,-56,93,-54v27,3,49,40,43,80v24,-2,66,-55,124,-53v11,14,28,23,27,54",w:368},n:{d:"121,-136v37,6,62,54,62,111v0,32,-16,25,-31,17v-18,-30,-5,-45,-22,-85v-37,-13,-71,55,-92,65v-20,-3,-39,-39,-21,-62v2,-12,3,-15,11,-30v12,-8,20,11,29,12",w:194},o:{d:"108,-139v52,-24,104,18,104,63v0,59,-66,67,-114,83v-52,-2,-115,-50,-80,-105v23,-18,52,-35,90,-41xm45,-60v16,54,125,16,131,-23v-12,-59,-129,-8,-131,23",w:217},p:{d:"82,14v-10,12,-8,117,-24,142v-15,2,-19,0,-29,-13v0,-76,9,-113,22,-192v14,-27,35,-6,37,13v0,8,-3,21,-7,38v2,2,3,2,4,2v26,-9,116,-33,126,-72v-7,-17,-24,-33,-49,-31v-40,3,-116,13,-116,47v-5,7,-2,17,-16,20v-17,-12,-18,-20,-12,-38v8,-25,74,-61,110,-59v55,-15,113,15,118,70v-15,52,-84,79,-146,83v-5,0,-11,-4,-18,-10",w:251},q:{d:"144,-147v27,-8,89,-3,97,31v-9,29,-42,-4,-73,1v-32,6,-118,20,-111,49v0,7,13,13,21,13v21,0,78,-24,104,-34v2,0,9,8,22,21v1,1,1,2,1,5v-27,90,-22,70,-43,203v11,15,-15,54,-33,33v-6,-8,-10,-20,-3,-28v1,-72,5,-114,15,-172v-35,3,-35,10,-59,8v-41,-4,-98,-41,-56,-85v33,-34,59,-27,118,-45",w:248},r:{d:"242,-117v2,22,5,10,-14,23v-73,-7,-166,-23,-174,56v-8,6,-3,20,-8,36v-29,10,-40,-9,-33,-46v6,-31,7,-69,32,-55v58,-37,66,-42,175,-19v3,5,15,4,22,5",w:229},s:{d:"154,-151v19,1,27,24,13,32v-4,1,-22,4,-53,7v-16,8,-22,-2,-39,9v23,21,89,16,96,62v-13,24,-85,35,-124,42v-9,-3,-18,-3,-27,0v-6,-4,-21,-16,-8,-25v30,-6,83,-13,102,-24v-17,-16,-80,-33,-97,-48v-3,-2,-4,-7,-4,-15v-6,-6,3,-13,15,-18v22,-9,94,-23,126,-22",w:188},t:{d:"85,-150v10,-41,35,-126,65,-134v4,1,24,19,11,36v-17,22,-29,57,-36,104v26,8,50,-7,73,5v14,0,22,3,22,9v-1,19,-44,18,-57,23v-10,1,-46,0,-54,10v-10,24,-4,67,-20,98v-21,-3,-26,1,-26,-20v0,-9,2,-36,8,-81v-15,-13,-81,9,-77,-27v4,-38,71,6,91,-23",w:194},u:{d:"207,-136v-1,-2,11,-14,14,-13v6,0,10,7,10,22v-3,40,-23,56,-40,82v-13,19,-62,43,-93,43v-67,-2,-111,-75,-71,-133v26,-3,21,29,19,49v-1,27,26,44,57,42v41,-2,93,-55,104,-92",w:242},v:{d:"24,-127r52,71v42,-16,70,-54,124,-65v5,4,8,7,8,11v-8,19,-4,8,-33,32v0,1,-1,3,-1,5v-61,45,-93,68,-97,68v-40,-15,-50,-72,-68,-100v6,-14,10,-22,15,-22",w:214},w:{d:"15,-139v38,-2,27,57,45,86v30,2,67,-66,101,-78v26,6,36,69,60,78v47,-35,51,-54,119,-104v3,0,7,-2,15,-4v19,23,-9,28,-21,49v-33,28,-68,90,-107,109v-10,6,-52,-47,-72,-71v-20,17,-85,74,-97,73v-38,7,-41,-98,-52,-122v0,-1,3,-7,9,-16",w:325},x:{d:"95,-124v22,-13,78,-32,99,-31v16,0,23,6,23,18v0,22,-17,11,-49,21v-3,0,-45,20,-42,24v0,1,2,4,8,10v20,24,49,41,44,80v-35,3,-27,-9,-60,-44v-40,-43,-37,-26,-79,9v-1,1,-2,3,-3,8v-12,8,-28,10,-27,-11v-6,-8,45,-65,48,-65v-17,-21,-61,-52,-24,-68v9,0,48,37,62,49",w:223},y:{d:"44,-65v22,33,70,4,99,-8v5,-4,28,-15,41,-31r17,0v25,47,-26,70,-40,114v-5,4,-9,8,-10,21v-16,12,-11,33,-27,51v-5,18,-12,43,-23,71v-1,-1,-2,34,-18,29v-12,1,-22,-12,-22,-23v20,-70,24,-65,68,-177v-47,16,-111,8,-116,-39v-11,-13,-7,-62,8,-62v18,0,22,26,23,54",w:216},z:{d:"189,-43v9,-1,46,-6,41,12v0,7,-5,13,-15,14v-45,6,-148,24,-181,13v0,-3,-5,-8,-14,-15v5,-44,66,-46,90,-85v-15,-18,-84,21,-84,-14v0,-10,5,-17,14,-18v33,-3,79,-13,109,-3v4,-2,14,11,12,15v0,23,-26,51,-78,84v28,10,73,-3,106,-3",w:244},"{":{d:"94,-303v27,-9,90,-14,79,26v-20,17,-55,-5,-87,13v-4,1,-6,4,-6,8v33,42,31,44,7,85v-6,10,-13,16,-13,13v5,6,17,17,15,31r-33,78v7,35,28,49,57,63r49,0v7,42,-51,41,-86,20v-43,-13,-51,-51,-56,-89v-2,-25,25,-54,27,-71v-3,-4,-46,-5,-41,-21v2,-10,-3,-29,11,-25v2,0,51,-17,52,-38v4,-3,-25,-23,-25,-49v0,-41,8,-30,50,-44",w:179},"|":{d:"30,-308v26,5,14,50,15,80v5,78,-8,153,-3,225v-2,15,-1,31,-11,36v-8,-3,-25,-22,-25,-32r9,-183v0,-40,0,-78,1,-112v0,-4,9,-15,14,-14",w:63},"}":{d:"47,-298v34,-17,118,-18,112,36v6,25,-76,98,-69,103v4,16,39,7,44,28v7,34,-34,17,-37,39v8,29,49,83,23,123v-15,23,-43,26,-73,46v-34,8,-43,11,-49,-17v1,-15,30,-15,33,-20v24,-12,70,-27,55,-61v-14,-33,-37,-68,-19,-103v-46,-50,46,-100,60,-141v-10,-16,-68,6,-77,-12",w:143},"~":{d:"7,-254v2,-6,59,-50,67,-46v11,-1,35,19,46,26v5,0,27,-10,66,-31v21,8,-1,25,-7,38v-27,21,-48,31,-65,31v-24,-11,-37,-39,-65,-9v-7,7,-26,36,-42,11v3,-5,-3,-17,0,-20",w:199}," ":{w:179},"¡":{d:"86,-197v8,16,-7,41,-24,25v-11,-11,-4,-16,-3,-29v13,0,15,-2,27,4xm46,-107v4,-8,11,-16,23,-7v19,26,-5,57,-6,87v-7,0,-5,18,-9,28v0,14,-17,52,-11,70v-2,7,-15,28,-25,12v-4,-6,-15,-7,-6,-16v2,-39,14,-96,34,-174",w:95},"¢":{d:"105,-188v13,-12,14,-18,26,-15v7,23,7,15,-3,49v6,0,18,14,17,20v-3,5,-12,19,-26,13v-14,1,-14,5,-16,21v10,10,46,-13,38,18v-9,17,-23,16,-54,20v-17,16,-4,55,-29,60v-37,-10,19,-64,-24,-71v-20,-10,-37,-47,-6,-62v23,-20,73,-4,77,-53xm65,-101v4,-9,7,-8,3,-13v-14,4,-22,10,-3,13",w:154},"£":{d:"153,-170v3,22,62,0,49,39v-18,6,-31,12,-58,9v-12,-1,-17,30,-23,39v19,26,50,56,91,35v9,-2,27,-13,27,4v0,27,-27,39,-58,42v-32,-5,-59,-19,-78,-39v-6,1,-35,44,-57,39v-25,0,-37,-15,-37,-46v0,-41,43,-53,73,-50v4,1,12,-18,12,-21v-7,-15,-49,0,-44,-30v-2,-31,31,-16,60,-19v16,-30,25,-119,93,-113v16,2,75,16,50,44v-4,5,-7,7,-12,8v-18,-12,-32,-18,-41,-18v-35,-1,-38,52,-47,77xm43,-45v4,5,12,-2,11,-9v-1,2,-12,1,-11,9",w:242},"¤":{d:"308,-133r-200,16v-2,1,-6,4,-10,10v70,-2,144,-14,211,-8v3,0,8,4,13,8v-1,4,-3,9,-9,17v-57,11,-164,6,-219,25v26,32,112,25,173,25v9,0,35,2,35,19v0,9,-4,13,-12,14v-115,12,-146,23,-211,-19v-12,-4,-22,-9,-25,-27v-6,-29,-61,3,-43,-49v17,-1,36,7,42,-12v-32,7,-36,-39,-11,-40v29,14,63,-25,73,-30v52,-25,72,-44,142,-44v23,0,21,41,-1,39v-35,-3,-61,9,-102,31v2,2,5,4,8,4v18,-6,101,-9,115,-9v7,0,55,13,31,30",w:312},"€":{d:"308,-133r-200,16v-2,1,-6,4,-10,10v70,-2,144,-14,211,-8v3,0,8,4,13,8v-1,4,-3,9,-9,17v-57,11,-164,6,-219,25v26,32,112,25,173,25v9,0,35,2,35,19v0,9,-4,13,-12,14v-115,12,-146,23,-211,-19v-12,-4,-22,-9,-25,-27v-6,-29,-61,3,-43,-49v17,-1,36,7,42,-12v-32,7,-36,-39,-11,-40v29,14,63,-25,73,-30v52,-25,72,-44,142,-44v23,0,21,41,-1,39v-35,-3,-61,9,-102,31v2,2,5,4,8,4v18,-6,101,-9,115,-9v7,0,55,13,31,30",w:312},"¥":{d:"31,-248v30,-3,64,64,74,59v37,-22,77,-65,107,-82v20,-11,34,18,21,32v-28,19,-52,38,-70,57v-18,8,-40,21,-35,60v2,19,39,7,64,7v25,0,16,21,2,27v-36,16,-46,8,-68,18v6,11,101,-20,66,24v-21,11,-42,12,-75,20v-2,1,-5,6,-10,18v-8,3,-11,10,-24,8v-7,-17,-2,-18,-9,-26v-13,5,-39,3,-53,-2v-10,-17,-7,-27,0,-34v23,-1,45,1,64,-5v-11,-7,-28,-4,-64,-6v-13,-8,-15,-24,-6,-35v33,-2,102,9,76,-37v-14,-14,-33,-38,-60,-66v-10,-10,-8,-28,0,-37",w:219},"§":{d:"141,-115v12,10,29,36,28,56v-4,68,-129,69,-152,16v-1,-12,-10,-22,8,-23v17,3,47,21,67,23v16,1,40,-8,38,-21v-8,-49,-119,-30,-117,-85v1,-28,15,-45,-3,-64v-1,-53,55,-61,103,-62v15,-5,6,-5,20,-2v16,17,23,27,23,30v-1,26,-29,7,-45,7v-21,0,-51,2,-62,17v19,14,87,8,97,43v18,14,16,57,-5,65xm64,-147r57,17v10,-28,-22,-43,-47,-44v-25,-1,-35,19,-10,27",w:174},"¨":{d:"124,-259v0,9,-4,13,-12,13v-18,0,-22,-21,-17,-35v19,-1,30,1,29,22xm23,-285v7,2,30,9,29,18v1,10,-9,19,-18,19v-19,0,-28,-26,-11,-37",w:136},"©":{d:"102,-29v-74,5,-124,-84,-70,-140v22,-22,53,-35,97,-38v46,-4,88,49,74,100v0,44,-51,75,-101,78xm96,-66v42,-3,75,-23,75,-69v0,-23,-4,-38,-44,-38v-16,0,-33,6,-49,20v36,-4,55,-12,62,20v-5,16,-49,1,-50,21v10,15,53,-14,54,11v0,18,-14,27,-42,27v-22,1,-46,-11,-46,-31v0,-25,7,-39,20,-44v-1,-1,-2,-2,-3,-2v-51,22,-32,89,23,85",w:217},"ª":{d:"6,-265v1,-31,58,-53,80,-22v-11,14,25,28,25,36v-2,8,-15,12,-27,10v-22,-29,-68,19,-78,-24xm52,-281v-8,1,-24,10,-9,13v11,1,24,-10,9,-13",w:117},"«":{d:"191,-64v16,6,87,37,53,63v-39,-9,-71,-28,-107,-40v-14,-13,-13,-34,10,-47v27,-15,48,-55,84,-62v9,-2,21,10,21,18r-13,21v-16,5,-44,22,-51,41v0,4,1,6,3,6xm71,-65v17,6,87,35,55,62v-39,-8,-66,-27,-108,-40v-14,-13,-13,-36,10,-46v23,-18,50,-56,84,-63v9,-2,21,10,21,18r-13,22v-20,6,-32,17,-51,37v0,3,-1,11,2,10",w:265},"¬":{d:"141,-99v47,7,103,-3,149,6v14,24,18,15,10,39v-10,34,-7,31,-26,76v-4,6,-15,8,-16,21v-4,2,-4,1,-13,5v-22,-33,-4,-33,16,-104v-5,-9,-28,-4,-38,-6r-183,4v-14,0,-41,-29,-17,-36v31,-9,82,5,118,-5",w:315},"®":{d:"75,-194v78,-29,116,9,130,84v-2,42,-22,47,-57,67v-74,20,-161,-19,-129,-110v6,-18,29,-34,57,-40xm46,-86v51,36,84,21,129,-15v7,-15,0,-39,-10,-49v-13,-37,-49,-26,-86,-18v-28,7,-49,46,-33,82xm72,-123v-5,-43,68,-57,75,-14v-17,26,-18,17,3,32v2,25,-25,18,-45,7r-4,-4v-1,8,-3,20,-12,24v-10,-3,-21,-34,-17,-45xm112,-135v-10,-1,-20,13,-9,14v6,-6,9,-11,9,-14",w:217},"¯":{d:"63,-295v28,-7,73,10,105,7v11,1,6,8,5,19v-37,21,-72,11,-136,11v-23,0,-31,-14,-27,-36v12,-15,40,0,53,-1",w:183},"°":{d:"106,-268v0,36,-35,38,-51,46v-48,5,-60,-58,-25,-78v33,-11,76,-9,76,32xm38,-257v16,7,39,2,38,-17v-13,-9,-28,-1,-32,11v-5,3,-7,0,-6,6",w:114},"±":{d:"93,-163v-7,46,76,-4,46,47v-14,6,-27,13,-38,8v-24,2,-14,28,-28,44r-14,0v-7,-12,-5,-15,-7,-33v-12,-7,-41,-1,-37,-24v2,-11,23,-17,36,-14r28,-38v4,0,9,4,14,10xm113,-27v-12,18,-58,27,-85,24v-16,2,-22,-23,-13,-36v28,-7,85,-11,98,12",w:151},"´":{d:"52,-284v29,-11,50,-34,62,-14v3,12,-86,54,-94,56v-14,0,-16,-12,-12,-23v11,-5,25,-11,44,-19",w:120},"¶":{d:"121,-237v21,-9,44,-13,63,-1v-1,7,5,6,7,11r-4,190v-2,33,4,39,-15,40v-16,1,-10,-20,-10,-33r4,-161v0,-17,-1,-34,-16,-25v2,10,1,23,1,35v-9,46,-6,75,-15,156v-3,4,-7,5,-12,5v-17,-10,-3,-89,-10,-115v-43,14,-98,10,-101,-29v-4,-53,59,-63,104,-75v3,1,4,2,4,2xm95,-204v2,9,-30,50,1,50v35,0,23,-13,29,-43v0,-1,-2,-7,-4,-15v-12,-1,-14,2,-26,8",w:206},"¸":{d:"74,16v32,2,49,14,55,36v-3,7,-14,31,-29,33v-28,4,-57,11,-88,14v-19,-6,-13,-31,8,-33v20,-1,59,-5,73,-14v-17,-14,-68,8,-53,-37v9,-10,2,-28,24,-30v8,8,13,17,10,31",w:129},"º":{d:"13,-273v1,-31,56,-41,83,-18v36,8,14,48,-9,52v-35,6,-64,-5,-74,-34xm81,-269v-7,-7,-20,-11,-29,-6v5,13,13,11,29,6",w:128},"»":{d:"120,-129v9,-33,48,-10,64,5v9,20,86,52,50,86v-36,11,-66,31,-107,40v-6,-7,-9,-13,-9,-17v-2,-13,50,-46,63,-46v11,-18,-33,-42,-48,-47xm1,-128v10,-33,46,-8,64,6v8,19,86,50,51,85v-40,13,-69,30,-108,40v-6,-7,-8,-12,-8,-16v-2,-14,50,-46,63,-47v7,-13,-9,-20,-19,-30v-10,-9,-20,-15,-30,-17",w:252},"¿":{d:"181,-247v3,1,31,2,29,15v-4,22,-37,27,-41,4v1,-5,7,-20,12,-19xm161,-34v-45,-1,-105,19,-124,51v0,11,18,17,54,17v39,0,82,-13,112,4v-10,35,-58,31,-100,31v-47,0,-80,-10,-99,-31v-10,-56,22,-73,64,-90v8,-3,32,-9,74,-18v21,-15,7,-62,22,-92v-1,-5,-1,-11,4,-12v16,0,24,7,24,22v-8,30,-8,73,-17,111v-3,5,-7,7,-14,7",w:213},"À":{d:"161,-217v20,53,23,124,54,170v-2,20,-34,9,-42,0v-27,-12,-78,-18,-101,-18v-26,6,-29,51,-54,63v-18,-4,-19,-30,-3,-38v5,-9,15,-16,8,-29v1,-12,23,-9,26,-19v6,-10,11,-20,20,-27r70,-121v12,-4,16,4,22,19xm82,-91v17,3,62,7,86,13v-13,-33,-13,-80,-29,-109v-15,30,-38,63,-57,96xm150,-268v14,10,54,14,37,41v-28,-7,-62,-22,-100,-42v-2,-3,-2,-26,5,-23v16,4,42,17,58,24"},"Á":{d:"161,-217v20,53,23,124,54,170v-2,20,-34,9,-42,0v-27,-12,-78,-18,-101,-18v-26,6,-29,51,-54,63v-18,-4,-19,-30,-3,-38v5,-9,15,-16,8,-29v1,-12,23,-9,26,-19v6,-10,11,-20,20,-27r70,-121v12,-4,16,4,22,19xm82,-91v17,3,62,7,86,13v-13,-33,-13,-80,-29,-109v-15,30,-38,63,-57,96xm84,-250v31,-5,83,-53,100,-31v0,5,-11,15,-35,28v-16,5,-51,28,-53,25v-14,1,-16,-11,-12,-22"},"Â":{d:"161,-217v20,53,23,124,54,170v-2,20,-34,9,-42,0v-27,-12,-78,-18,-101,-18v-26,6,-29,51,-54,63v-18,-4,-19,-30,-3,-38v5,-9,15,-16,8,-29v1,-12,23,-9,26,-19v6,-10,11,-20,20,-27r70,-121v12,-4,16,4,22,19xm82,-91v17,3,62,7,86,13v-13,-33,-13,-80,-29,-109v-15,30,-38,63,-57,96xm202,-219v-27,-6,-40,-26,-61,-37v-21,7,-39,46,-65,23v-2,-4,-3,-10,-4,-14v19,-4,43,-32,61,-43v27,6,40,22,62,37v12,8,18,17,18,25v0,6,-3,9,-11,9"},"Ã":{d:"161,-217v20,53,23,124,54,170v-2,20,-34,9,-42,0v-27,-12,-78,-18,-101,-18v-26,6,-29,51,-54,63v-18,-4,-19,-30,-3,-38v5,-9,15,-16,8,-29v1,-12,23,-9,26,-19v6,-10,11,-20,20,-27r70,-121v12,-4,16,4,22,19xm82,-91v17,3,62,7,86,13v-13,-33,-13,-80,-29,-109v-15,30,-38,63,-57,96xm100,-285v26,-19,54,19,69,22v4,0,15,-5,34,-13v23,-9,22,-17,31,-12v3,11,-9,9,-7,21v-26,20,-46,30,-59,30v-3,3,-50,-26,-49,-29v-12,1,-31,35,-51,32v-3,-8,-5,-14,-5,-18v10,-9,16,-17,37,-33"},"Ä":{d:"161,-217v20,53,23,124,54,170v-2,20,-34,9,-42,0v-27,-12,-78,-18,-101,-18v-26,6,-29,51,-54,63v-18,-4,-19,-30,-3,-38v5,-9,15,-16,8,-29v1,-12,23,-9,26,-19v6,-10,11,-20,20,-27r70,-121v12,-4,16,4,22,19xm82,-91v17,3,62,7,86,13v-13,-33,-13,-80,-29,-109v-15,30,-38,63,-57,96xm187,-259v0,8,-4,13,-12,13v-18,0,-21,-20,-16,-34v18,-1,28,2,28,21xm90,-284v7,3,28,11,28,18v0,9,-9,18,-18,17v-17,0,-25,-24,-10,-35"},"Å":{d:"161,-217v20,53,23,124,54,170v-2,20,-34,9,-42,0v-27,-12,-78,-18,-101,-18v-26,6,-29,51,-54,63v-18,-4,-19,-30,-3,-38v5,-9,15,-16,8,-29v1,-12,23,-9,26,-19v6,-10,11,-20,20,-27r70,-121v12,-4,16,4,22,19xm82,-91v17,3,62,7,86,13v-13,-33,-13,-80,-29,-109v-15,30,-38,63,-57,96xm112,-239v-31,-17,-9,-61,29,-56v12,2,22,3,33,12v24,39,-30,62,-62,44xm119,-262v2,14,41,8,41,-4v0,-4,-8,-6,-24,-9v-10,-2,-17,10,-17,13"},"Æ":{d:"335,-259v0,30,-102,12,-122,34v10,21,2,79,16,100v24,-6,59,-13,86,-16v23,-2,32,21,13,26r-103,29v-3,22,-4,38,8,43v28,-5,60,-6,86,-14v5,-1,14,7,14,11v6,16,-90,40,-107,40v-29,0,-39,-19,-32,-46v-2,-4,0,-26,-9,-28v-29,2,-58,6,-88,6v-31,0,-40,74,-82,73v-18,-23,4,-37,12,-50v40,-65,112,-126,165,-207v20,-17,69,-11,112,-13v21,0,31,4,31,12xm123,-111v28,1,44,-2,67,-10v-4,-22,5,-49,-7,-65v-3,6,-65,61,-60,75",w:348},"Ç":{d:"48,-108v-12,70,90,71,159,67r138,-9v9,-1,7,9,7,17v-37,16,-80,27,-103,21v-14,9,-40,3,-67,9v-30,0,-64,1,-100,-10v-6,-1,-10,-4,-10,-8v-32,-12,-46,-31,-63,-56v-16,-61,47,-103,83,-121v82,-42,118,-45,200,-60v21,-4,36,34,11,37v-90,11,-148,31,-225,77v-12,8,-23,20,-30,36xm172,18v29,4,47,14,53,35v-2,7,-14,31,-27,31v-28,7,-55,9,-84,14v-18,-5,-13,-32,7,-32v21,0,55,-5,69,-13v-16,-14,-63,10,-50,-35v9,-10,1,-27,23,-29v7,8,11,16,9,29",
w:331},"È":{d:"49,-160v1,-4,-10,-9,-15,-8v-15,-35,32,-30,57,-31r142,-8v2,1,30,7,40,10v-52,16,-133,17,-190,30v-7,9,-12,24,-15,47v26,10,102,-6,141,3v1,3,1,6,2,10v-36,18,-92,12,-149,21v-11,9,-16,41,-16,51v55,-1,111,-21,168,-13v15,-8,48,1,31,18v-53,16,-130,13,-198,29r-39,-8v-4,-19,17,-53,20,-76v-1,0,-7,-11,-9,-18v18,-7,22,-28,30,-57xm184,-236v6,9,5,13,0,23v-28,-7,-62,-21,-100,-41v-3,-2,-3,-27,5,-23v34,11,60,25,95,41",w:252},"É":{d:"49,-160v1,-4,-10,-9,-15,-8v-15,-35,32,-30,57,-31r142,-8v2,1,30,7,40,10v-52,16,-133,17,-190,30v-7,9,-12,24,-15,47v26,10,102,-6,141,3v1,3,1,6,2,10v-36,18,-92,12,-149,21v-11,9,-16,41,-16,51v55,-1,111,-21,168,-13v15,-8,48,1,31,18v-53,16,-130,13,-198,29r-39,-8v-4,-19,17,-53,20,-76v-1,0,-7,-11,-9,-18v18,-7,22,-28,30,-57xm133,-248v27,-11,48,-32,59,-14v3,11,-79,52,-88,53v-14,1,-16,-11,-12,-21v10,-4,23,-11,41,-18",w:252},"Ê":{d:"49,-160v1,-4,-10,-9,-15,-8v-15,-35,32,-30,57,-31r142,-8v2,1,30,7,40,10v-52,16,-133,17,-190,30v-7,9,-12,24,-15,47v26,10,102,-6,141,3v1,3,1,6,2,10v-36,18,-92,12,-149,21v-11,9,-16,41,-16,51v55,-1,111,-21,168,-13v15,-8,48,1,31,18v-53,16,-130,13,-198,29r-39,-8v-4,-19,17,-53,20,-76v-1,0,-7,-11,-9,-18v18,-7,22,-28,30,-57xm199,-211v-27,-6,-39,-26,-60,-37v-21,7,-40,47,-65,22v-2,-7,-2,-7,-4,-13v18,-5,44,-31,61,-43v27,6,41,22,62,37v12,9,18,17,18,25v0,6,-4,9,-12,9",w:252},"Ë":{d:"49,-160v1,-4,-10,-9,-15,-8v-15,-35,32,-30,57,-31r142,-8v2,1,30,7,40,10v-52,16,-133,17,-190,30v-7,9,-12,24,-15,47v26,10,102,-6,141,3v1,3,1,6,2,10v-36,18,-92,12,-149,21v-11,9,-17,41,-17,51v55,0,112,-21,169,-13v15,-8,48,1,31,18v-53,16,-130,13,-198,29r-39,-8v-3,-21,17,-53,20,-76v-1,0,-7,-11,-9,-18v18,-7,22,-28,30,-57xm191,-236v0,8,-4,13,-12,13v-17,0,-19,-19,-16,-34v18,-1,29,1,28,21xm95,-261v7,3,29,9,28,18v0,7,-9,17,-18,17v-18,0,-26,-25,-10,-35",w:252},"Ì":{d:"33,-5v-9,-6,-9,-12,-9,-36v0,-71,8,-119,22,-144v8,-13,14,-20,19,-20v27,20,-11,87,-10,120r-15,76v-1,1,-4,2,-7,4xm72,-247v7,6,55,15,36,40v-28,-7,-61,-21,-99,-41v-3,-2,-3,-27,5,-23v18,3,41,17,58,24",w:111},"Í":{d:"26,-5v-9,-6,-9,-12,-9,-36v0,-71,7,-119,21,-144v8,-13,14,-20,19,-20v28,19,-7,89,-10,120v-2,21,-8,47,-14,76v-2,1,-2,0,-7,4xm6,-233v31,-6,83,-53,101,-31v2,11,-80,53,-89,53v-14,1,-14,-11,-12,-22",w:104},"Î":{d:"53,-9v-15,7,-16,-3,-16,-32v0,-71,7,-119,21,-144v8,-13,14,-20,19,-20v28,19,-7,89,-10,120v-2,21,-8,47,-14,76xm137,-209v-27,-6,-40,-26,-61,-37v-8,0,-9,4,-13,10v-11,13,-50,37,-56,0v18,-5,43,-32,61,-43v28,5,40,21,62,36v12,9,18,17,18,25v0,6,-4,9,-11,9",w:144},"Ï":{d:"33,-5v-9,-6,-9,-12,-9,-36v0,-71,8,-119,22,-144v8,-13,14,-20,19,-20v27,20,-11,87,-10,120r-15,76v-1,1,-4,2,-7,4xm111,-222v0,8,-4,12,-12,12v-18,0,-19,-19,-16,-33v18,-1,29,1,28,21xm15,-247v8,2,29,9,28,17v0,21,-37,24,-36,1v0,-7,2,-13,8,-18",w:110},"Ñ":{d:"224,-182v1,-17,15,-24,22,-38v20,0,13,10,3,33v-3,36,-25,52,-28,94v-10,24,-30,55,-29,82r-19,7v-32,-8,-36,-70,-58,-111v-2,-23,-7,-27,-19,-54v-28,36,-41,93,-71,133v-9,5,-20,-9,-20,-17r73,-149v9,-24,31,-5,36,7v19,41,31,98,53,139v22,-35,34,-69,50,-118v2,-3,3,-3,7,-8xm203,-257v22,-8,41,-24,65,-26v3,11,-8,9,-7,21v-26,20,-46,31,-59,31v-2,3,-49,-27,-49,-29v-11,0,-32,31,-46,32v-11,-2,-12,-21,-4,-23v4,-6,28,-30,48,-34v17,-4,43,28,52,28",w:219},"Ò":{d:"62,-184v78,-31,249,-50,238,74v-6,65,-102,105,-179,115v-77,-7,-152,-71,-101,-149v2,-5,24,-33,42,-40xm279,-120v14,-38,-47,-64,-85,-61v-20,-9,-41,7,-62,0v-11,7,-54,12,-66,24v0,20,-51,35,-38,66v-1,43,50,67,96,67v44,0,162,-55,155,-96xm161,-262v14,10,52,13,37,41v-28,-7,-62,-21,-100,-41v-3,-3,-3,-26,5,-24v16,5,42,17,58,24",w:273},"Ó":{d:"62,-184v78,-31,249,-50,238,74v-6,65,-102,105,-179,115v-77,-7,-152,-71,-101,-149v2,-5,24,-33,42,-40xm279,-120v14,-38,-47,-64,-85,-61v-20,-9,-41,7,-62,0v-11,7,-54,12,-66,24v0,20,-51,35,-38,66v-1,43,50,67,96,67v44,0,162,-55,155,-96xm142,-250v27,-11,47,-32,59,-14v2,11,-80,53,-89,53v-13,1,-15,-11,-12,-21v10,-5,24,-11,42,-18",w:273},"Ô":{d:"62,-184v78,-31,249,-50,238,74v-6,65,-102,105,-179,115v-77,-7,-152,-71,-101,-149v2,-5,24,-33,42,-40xm279,-120v14,-38,-47,-64,-85,-61v-20,-9,-41,7,-62,0v-11,7,-54,12,-66,24v0,20,-51,35,-38,66v-1,43,50,67,96,67v44,0,162,-55,155,-96xm157,-282v17,18,52,34,54,63v-24,12,-52,-36,-53,-29r-42,34v-23,-4,-6,-31,5,-34v1,1,27,-37,36,-34",w:273},"Õ":{d:"62,-184v78,-31,249,-50,238,74v-6,65,-102,105,-179,115v-77,-7,-152,-71,-101,-149v2,-5,24,-33,42,-40xm279,-120v14,-38,-47,-64,-85,-61v-20,-9,-41,7,-62,0v-11,7,-54,12,-66,24v0,20,-51,35,-38,66v-1,43,50,67,96,67v44,0,162,-55,155,-96xm116,-270v26,-19,54,19,69,22v4,0,15,-5,34,-13v23,-10,22,-16,31,-12v3,11,-8,9,-7,21v-45,28,-47,42,-88,16v-29,-19,-12,-20,-43,2v-8,5,-12,18,-23,15v-13,-3,-12,-20,-4,-23v4,-6,14,-15,31,-28",w:273},"Ö":{d:"62,-184v78,-31,249,-50,238,74v-6,65,-102,105,-179,115v-77,-7,-152,-71,-101,-149v2,-5,24,-33,42,-40xm279,-120v14,-38,-47,-64,-85,-61v-20,-9,-41,7,-62,0v-11,7,-54,12,-66,24v0,20,-51,35,-38,66v-1,43,50,67,96,67v44,0,162,-55,155,-96xm197,-229v0,8,-4,13,-12,13v-17,0,-19,-19,-16,-34v18,-1,29,1,28,21xm101,-254v7,3,28,9,27,18v1,8,-8,17,-17,17v-18,0,-26,-24,-10,-35",w:273},"Ø":{d:"76,-211v41,-13,100,-22,140,-3v26,-19,40,-29,44,-29v10,0,15,7,15,20v0,15,-23,23,-30,35v23,39,29,114,-21,139v-36,19,-102,35,-147,18v-14,-5,-29,29,-46,35v-25,-13,-19,-24,3,-56v-9,-17,-28,-27,-28,-60v0,-38,23,-72,70,-99xm107,-66v55,15,125,-12,123,-70v0,-16,-5,-25,-13,-29r-110,95r0,4xm39,-108v-1,3,17,31,22,27v8,-6,109,-90,123,-106v-15,-11,-43,1,-63,2v-33,10,-80,35,-82,77",w:270},"Ù":{d:"281,-202v6,67,-30,121,-71,152v-3,14,-47,26,-60,39v-41,20,-110,1,-125,-26v-24,-44,-28,-84,-8,-127v12,-26,23,-38,37,-22v-2,2,-3,5,-3,10v-34,26,-30,116,5,134v22,32,86,-1,109,-8v38,-28,104,-64,97,-149v2,-10,7,-8,19,-3xm151,-243v14,10,54,14,37,41v-28,-7,-61,-22,-99,-42v-3,-2,-4,-25,4,-23v16,5,42,17,58,24",w:262},"Ú":{d:"281,-202v6,67,-30,121,-71,152v-3,14,-47,26,-60,39v-41,20,-110,1,-125,-26v-24,-44,-28,-84,-8,-127v12,-26,23,-38,37,-22v-2,2,-3,5,-3,10v-34,26,-30,116,5,134v22,32,86,-1,109,-8v38,-28,104,-64,97,-149v2,-10,7,-8,19,-3xm194,-265v3,-1,11,4,11,6v3,12,-81,52,-89,54v-14,0,-13,-9,-12,-22",w:262},"Û":{d:"281,-202v6,67,-30,121,-71,152v-3,14,-47,26,-60,39v-41,20,-110,1,-125,-26v-24,-44,-28,-84,-8,-127v12,-26,23,-38,37,-22v-2,2,-3,5,-3,10v-34,26,-30,116,5,134v22,32,86,-1,109,-8v38,-28,104,-64,97,-149v2,-10,7,-8,19,-3xm150,-266v24,11,58,27,73,46v0,5,-3,6,-10,6v-28,2,-61,-30,-63,-25v-10,0,-57,40,-69,23v3,-10,-8,-15,8,-19v17,-1,34,-29,61,-31",w:262},"Ü":{d:"281,-202v6,67,-30,121,-71,152v-3,14,-47,26,-60,39v-41,20,-110,1,-125,-26v-24,-44,-28,-84,-8,-127v12,-26,23,-38,37,-22v-2,2,-3,5,-3,10v-34,26,-29,116,5,134v22,32,86,-1,109,-8v38,-28,104,-64,97,-149v2,-10,7,-8,19,-3xm197,-227v0,8,-4,13,-12,13v-18,0,-21,-20,-16,-34v18,-1,28,2,28,21xm101,-252v7,3,27,10,27,18v0,8,-9,18,-18,17v-18,-1,-24,-25,-9,-35",w:262},"ß":{d:"33,10v-29,4,-28,-32,-16,-70v18,-58,17,-137,56,-176v12,-24,46,-58,82,-43v20,8,47,24,47,54v0,30,-62,59,-67,90v33,23,56,33,63,63v-18,21,-22,36,-48,54v-24,17,-27,41,-53,16v-2,-19,7,-35,24,-42v15,-13,26,-22,34,-40v-13,-17,-78,-29,-56,-70v-3,-27,64,-54,66,-86v-8,-25,-41,-4,-52,8v-29,30,-47,83,-51,141v-17,25,-8,71,-29,101"},"à":{d:"118,-53v10,4,55,41,62,47v0,7,-5,16,-12,16r-57,-28v-20,3,-40,19,-61,18v-10,2,-43,-17,-42,-36v0,-14,7,-40,27,-41v39,-26,92,-36,104,9v0,6,-2,11,-9,15v-32,-24,-64,-6,-84,11v8,15,58,-17,72,-11xm99,-137v7,6,56,14,37,40v-28,-7,-62,-21,-100,-41v-2,-3,-2,-26,5,-23v16,4,42,17,58,24",w:173},"á":{d:"118,-53v10,4,55,41,62,47v0,7,-5,16,-12,16r-57,-28v-20,3,-40,19,-61,18v-10,2,-43,-17,-42,-36v0,-14,7,-40,27,-41v39,-26,92,-36,104,9v0,6,-2,11,-9,15v-32,-24,-64,-6,-84,11v8,15,58,-17,72,-11xm32,-117v24,-3,85,-55,101,-32v3,11,-80,53,-89,53v-13,2,-14,-10,-12,-21",w:173},"â":{d:"118,-53v10,4,55,41,62,47v0,7,-5,16,-12,16r-57,-28v-20,3,-40,19,-61,18v-10,2,-43,-17,-42,-36v0,-14,7,-40,27,-41v39,-26,92,-36,104,9v0,6,-2,11,-9,15v-32,-24,-64,-6,-84,11v8,15,58,-17,72,-11xm147,-97v-27,-6,-39,-26,-60,-37v-21,7,-38,46,-65,23v-2,-5,-3,-10,-4,-14v18,-4,43,-31,61,-42v28,5,40,21,62,36v12,8,18,17,18,25v0,6,-4,9,-12,9",w:173},"ã":{d:"118,-53v10,4,55,41,62,47v0,7,-5,16,-12,16r-57,-28v-20,3,-40,19,-61,18v-10,2,-43,-17,-42,-36v0,-14,7,-40,27,-41v39,-26,92,-36,104,9v0,6,-2,11,-9,15v-32,-24,-64,-6,-84,11v8,15,58,-17,72,-11xm114,-136v22,-8,41,-24,64,-26v3,11,-7,10,-7,21v-26,20,-45,30,-58,30v-3,3,-49,-26,-49,-28v-10,-1,-32,35,-51,31v-12,-32,8,-29,32,-51v24,-21,54,20,69,23",w:173},"ä":{d:"118,-53v10,4,55,41,62,47v0,7,-5,16,-12,16r-57,-28v-20,3,-40,19,-61,18v-32,5,-66,-64,-15,-77v39,-26,92,-36,104,9v0,6,-3,11,-9,15v-32,-24,-64,-6,-84,11v8,15,58,-17,72,-11xm142,-119v0,8,-4,13,-12,13v-18,0,-21,-20,-16,-34v18,-1,28,2,28,21xm46,-144v7,3,28,9,27,18v1,8,-9,18,-18,17v-18,-1,-25,-25,-9,-35",w:173},"å":{d:"118,-53v10,4,55,41,62,47v0,7,-5,16,-12,16r-57,-28v-20,3,-40,19,-61,18v-10,2,-43,-17,-42,-36v0,-14,7,-40,27,-41v39,-26,92,-36,104,9v0,6,-2,11,-9,15v-32,-24,-64,-6,-84,11v8,15,58,-17,72,-11xm54,-101v-37,-20,-9,-71,34,-65v13,1,25,3,38,13v27,45,-34,73,-72,52xm61,-128v4,20,48,7,49,-5v0,-5,-9,-7,-28,-10v-12,-2,-21,11,-21,15",w:173},"æ":{d:"145,-44r33,7v2,42,-59,29,-85,16v-6,7,-35,24,-48,15v-19,2,-35,-21,-33,-37v2,-24,5,-19,28,-36v-6,-8,-45,3,-33,-21v21,-22,58,-12,85,-1v6,-5,35,-28,45,-15v20,-4,36,17,36,35v0,23,-4,21,-28,37xm111,-72v12,3,49,-16,19,-17v-5,0,-20,12,-19,17xm74,-50v-14,-4,-48,16,-19,17v4,1,19,-14,19,-17",w:184},"ç":{d:"108,-118v30,-6,56,21,25,33v-24,-6,-39,5,-75,23v-7,4,-12,12,-15,22v31,28,86,3,128,9v3,28,-29,16,-44,28v-53,15,-106,10,-120,-37v0,-48,62,-70,101,-78xm92,18v23,4,45,12,48,32v-2,6,-12,28,-25,28v-24,6,-50,10,-77,13v-16,-4,-11,-28,7,-29v17,-1,51,-4,63,-12v-14,-15,-57,10,-46,-32v9,-8,0,-25,21,-26v6,6,12,14,9,26",w:171},"è":{d:"108,-124v42,-3,70,39,50,73v-22,-1,-70,12,-94,10v-1,1,-2,3,-2,3v0,3,12,7,35,14v18,0,64,7,30,21v-10,14,-31,6,-53,6v-26,-7,-70,-26,-70,-58v0,-54,48,-65,104,-69xm130,-78v-2,-35,-66,-13,-77,3v16,6,62,6,77,-3xm95,-166v7,6,54,14,37,40v-28,-7,-62,-21,-100,-41v-3,-3,-3,-26,5,-24v16,5,42,18,58,25",w:161},"é":{d:"108,-124v42,-3,70,39,50,73v-22,-1,-70,12,-94,10v-1,1,-2,3,-2,3v0,3,12,7,35,14v18,0,64,7,30,21v-10,14,-31,6,-53,6v-26,-7,-70,-26,-70,-58v0,-54,48,-65,104,-69xm130,-78v-2,-35,-66,-13,-77,3v16,6,62,6,77,-3xm76,-169v26,-11,48,-32,59,-14v3,10,-80,53,-89,53v-14,1,-14,-10,-12,-21v15,-7,16,-7,42,-18",w:161},"ê":{d:"108,-124v42,-3,70,39,50,73v-22,-1,-70,12,-94,10v-1,1,-2,3,-2,3v0,3,12,7,35,14v18,0,64,7,30,21v-10,14,-31,6,-53,6v-26,-7,-70,-26,-70,-58v0,-54,48,-65,104,-69xm130,-78v-2,-35,-66,-13,-77,3v16,6,62,6,77,-3xm145,-129v-27,-6,-39,-26,-60,-37v-8,0,-10,4,-14,10v-11,15,-51,34,-56,0v17,-4,44,-32,61,-43v28,5,41,21,63,36v12,8,17,17,17,25v0,6,-3,9,-11,9",w:161},"ë":{d:"108,-124v42,-3,70,39,50,73v-22,-1,-70,12,-94,10r-3,3v0,3,12,7,36,14v18,0,64,7,30,21v-10,14,-31,6,-53,6v-26,-7,-67,-27,-71,-58v7,-52,48,-65,105,-69xm130,-78v-2,-35,-66,-13,-77,3v16,6,62,6,77,-3xm140,-144v0,8,-4,12,-12,12v-18,0,-19,-19,-16,-33v18,-1,29,1,28,21xm44,-169v7,3,28,9,28,17v0,9,-9,18,-18,18v-18,0,-25,-24,-10,-35",w:161},"ì":{d:"57,-98v22,5,13,50,11,95v-7,1,-11,2,-20,-4v1,-7,-12,-18,-10,-24v4,-22,-2,-64,19,-67xm70,-139v14,10,54,14,37,41v-28,-7,-61,-22,-99,-42v-3,-2,-3,-25,5,-23v15,5,41,17,57,24",w:109},"í":{d:"59,-98v20,4,15,53,10,95v-6,1,-11,2,-19,-4v1,-7,-12,-18,-10,-24v4,-22,-4,-65,19,-67xm50,-139v27,-11,49,-32,59,-14v3,11,-80,53,-89,53v-14,1,-14,-12,-11,-22v15,-7,14,-6,41,-17",w:105},"î":{d:"72,-98v20,5,12,51,10,95v-6,2,-13,1,-20,-4v1,-8,-12,-18,-10,-24v4,-22,-3,-65,20,-67xm134,-94v-26,-7,-39,-25,-60,-37v-7,0,-9,4,-13,10v-14,15,-51,34,-56,-1v18,-4,45,-33,61,-43v27,6,40,22,62,37v12,8,18,17,18,25v0,6,-4,9,-12,9",w:143},"ï":{d:"55,-97v19,5,15,53,10,95v-17,5,-26,-14,-30,-28v6,-20,-3,-65,20,-67xm110,-118v0,8,-4,13,-12,13v-17,0,-19,-19,-16,-34v18,-1,29,1,28,21xm14,-143v6,3,28,8,28,17v0,9,-9,18,-18,18v-18,0,-25,-24,-10,-35",w:107},"ñ":{d:"115,-129v34,6,59,50,59,105v0,31,-15,24,-30,17v-15,-29,-5,-42,-20,-81v-35,-13,-68,52,-88,61v-20,-4,-38,-36,-19,-59v0,-12,3,-14,10,-28v11,-8,18,11,27,12xm117,-166v22,-7,41,-23,64,-26v3,11,-7,10,-7,21v-26,20,-45,30,-58,30v-3,3,-49,-26,-49,-28v-10,-1,-32,35,-51,31v-5,-12,-8,-16,0,-23v4,-6,28,-29,48,-33v17,-3,43,28,53,28",w:171},"ò":{d:"102,-132v50,-20,99,16,99,60v0,54,-60,64,-108,79v-50,-2,-110,-48,-76,-100v22,-17,49,-33,85,-39xm136,-104v-34,0,-91,27,-94,47v16,51,125,16,125,-22v0,-17,-10,-25,-31,-25xm115,-181v14,10,51,13,37,40v-28,-7,-62,-21,-100,-41v-3,-2,-3,-26,5,-23v16,5,42,17,58,24",w:191},"ó":{d:"102,-132v50,-20,99,16,99,60v0,54,-60,64,-108,79v-50,-2,-110,-48,-76,-100v22,-17,49,-33,85,-39xm136,-104v-34,0,-91,27,-94,47v16,51,125,16,125,-22v0,-17,-10,-25,-31,-25xm49,-154v24,-3,85,-55,101,-32v3,11,-80,53,-89,53v-14,0,-13,-8,-12,-21",w:191},"ô":{d:"102,-132v50,-20,99,16,99,60v0,54,-60,64,-108,79v-50,-2,-110,-48,-76,-100v22,-17,49,-33,85,-39xm136,-104v-34,0,-91,27,-94,47v16,51,125,16,125,-22v0,-17,-10,-25,-31,-25xm110,-177v-22,6,-38,45,-65,22v-2,-4,-3,-9,-4,-13v18,-4,43,-32,61,-43v27,6,40,21,62,36v12,9,18,17,18,25v1,11,-15,10,-23,7",w:191},"õ":{d:"102,-132v50,-20,99,16,99,60v0,54,-60,64,-108,79v-50,-2,-110,-48,-76,-100v22,-17,49,-33,85,-39xm136,-104v-34,0,-91,27,-94,47v16,51,125,16,125,-22v0,-17,-10,-25,-31,-25xm58,-199v26,-21,54,18,69,22v4,0,15,-5,34,-13v22,-9,21,-16,31,-13v3,11,-9,9,-7,22v-26,20,-46,30,-59,30v-2,4,-49,-28,-49,-29v-11,0,-32,31,-46,32v-12,-3,-13,-21,-4,-23v4,-6,14,-15,31,-28",w:191},"ö":{d:"102,-132v50,-20,99,16,99,60v0,54,-60,64,-108,79v-50,-2,-110,-48,-76,-100v22,-17,49,-33,85,-39xm136,-104v-34,0,-91,27,-94,47v16,51,125,16,125,-22v0,-17,-10,-25,-31,-25xm161,-160v0,8,-4,13,-12,13v-17,0,-19,-19,-16,-34v18,-1,29,1,28,21xm65,-185v7,3,28,9,28,18v0,7,-9,18,-18,17v-18,1,-25,-24,-10,-35",w:191},"÷":{d:"167,-158v-4,3,-7,9,-10,20v-23,4,-34,-8,-29,-31v14,-6,18,1,39,11xm78,-72v-53,11,-53,12,-69,-15v-1,-12,11,-17,22,-14v71,-13,151,-18,230,-24v11,1,21,16,23,28v-28,20,-90,11,-126,16v-36,5,-62,5,-80,9xm123,-40v19,-17,41,-1,41,17v0,13,-6,19,-17,19v-15,0,-29,-14,-24,-36",w:293},"ø":{d:"76,-136v17,7,33,-8,51,0v9,-6,21,-13,36,-21v23,22,-13,31,3,50v11,13,4,21,14,35v-4,5,-1,14,-4,23v-14,23,-45,41,-84,39v-12,2,-29,28,-41,38v-2,-11,-34,-10,-15,-30v3,-7,5,-11,5,-11v-15,-24,-60,-54,-22,-89v23,-21,25,-32,57,-34xm102,-54v18,1,50,-19,30,-32v-12,7,-22,18,-30,32xm85,-92v-14,3,-26,8,-38,17v2,20,17,13,26,0v6,-8,12,-13,12,-17",w:188},"ù":{d:"196,-129v-1,-4,12,-13,15,-13v6,0,8,7,8,21v0,24,-7,25,-13,45v-7,7,-14,21,-24,29v-9,24,-61,45,-89,45v-63,0,-105,-72,-67,-126v24,-3,19,27,18,46v-1,26,23,42,54,40v38,-3,88,-51,98,-87xm126,-166v7,6,56,14,37,40v-28,-7,-62,-22,-100,-42v-2,-3,-2,-26,5,-23v16,4,42,18,58,25",w:213},"ú":{d:"196,-129v-1,-4,12,-13,15,-13v6,0,8,7,8,21v0,24,-7,25,-13,45v-7,7,-14,21,-24,29v-9,24,-61,45,-89,45v-63,0,-105,-72,-67,-126v24,-3,19,27,18,46v-1,26,23,42,54,40v38,-3,88,-51,98,-87xm106,-174v26,-11,48,-32,59,-14v3,11,-81,53,-89,54v-13,1,-15,-12,-11,-22v15,-7,14,-7,41,-18",w:213},"û":{d:"196,-129v-1,-4,12,-13,15,-13v6,0,8,7,8,21v0,24,-7,25,-13,45v-7,7,-14,21,-24,29v-9,24,-61,45,-89,45v-63,0,-105,-72,-67,-126v24,-3,19,27,18,46v-1,26,23,42,54,40v38,-3,88,-51,98,-87xm172,-143v-27,-6,-39,-26,-60,-37v-8,0,-10,4,-14,10v-11,15,-49,35,-56,0v17,-4,44,-32,61,-43v27,6,41,21,63,36v12,9,17,17,17,25v0,6,-3,9,-11,9",w:213},"ü":{d:"196,-129v-1,-4,12,-13,15,-13v6,0,8,7,8,21v0,24,-7,25,-13,45v-7,7,-14,21,-24,29v-9,24,-61,45,-89,45v-63,0,-105,-72,-67,-126v24,-3,19,27,18,46v-1,26,23,42,54,40v38,-3,88,-51,98,-87xm168,-161v0,8,-3,13,-11,13v-17,0,-20,-19,-17,-34v18,-1,29,1,28,21xm72,-186v7,3,29,9,28,18v0,7,-9,18,-18,17v-18,1,-25,-24,-10,-35",w:213},"ÿ":{d:"118,85v-11,11,-11,38,-22,61v-2,-1,-2,31,-17,27v-11,0,-21,-10,-21,-22v20,-66,23,-61,64,-168v-22,1,-38,16,-58,4v-22,4,-51,-16,-51,-42v-11,-13,-7,-59,7,-58v16,1,21,24,22,51v21,33,66,5,94,-7v4,-3,26,-14,38,-29r17,0v23,44,-23,59,-34,102v-6,9,-13,9,-13,26v-15,6,-12,33,-27,48v0,2,1,4,1,7xm158,-136v0,8,-4,13,-12,13v-18,0,-21,-20,-16,-34v18,-1,29,1,28,21xm62,-161v7,3,28,9,27,18v1,8,-8,17,-17,17v-18,0,-26,-24,-10,-35",w:190},"ı":{d:"43,-103v21,4,16,56,11,100v-7,2,-11,1,-20,-5v0,-7,-13,-18,-11,-25v4,-23,-3,-68,20,-70",w:80},"Œ":{d:"247,-243v71,4,161,-7,245,-8v17,0,27,6,27,17v-8,27,-70,14,-104,23v-3,1,-52,0,-65,7r0,4v16,16,17,29,17,65v32,10,74,-14,99,16v-14,25,-76,17,-127,24v-17,18,-55,32,-75,51v85,0,128,-3,204,-11v15,-2,21,11,20,29v-78,24,-177,12,-270,24v-24,3,-24,-29,-48,-15v-46,7,-70,4,-105,-4v-19,-18,-42,-22,-52,-55v-10,-34,0,-47,12,-78v-18,-59,48,-78,105,-84v17,-18,103,-13,117,-5xm125,-45v76,-9,186,-43,209,-105v-26,-67,-137,-83,-217,-54v3,34,-45,25,-60,58v-41,48,5,108,68,101",w:492},"œ":{d:"185,-54v25,28,107,-17,104,33v-12,12,-60,14,-87,14v0,0,1,1,2,1v-11,1,-39,-9,-50,-17v-28,17,-75,32,-114,7v-22,-14,-34,-11,-34,-41v0,-36,33,-49,48,-75v29,-16,72,-3,95,11v12,-9,48,-27,59,-26v30,0,64,15,65,40v0,7,-6,20,-20,37v-29,1,-44,11,-68,16xm226,-106v-21,-7,-41,-2,-48,13v14,1,42,-7,48,-13xm132,-87v-21,-35,-94,11,-92,24v-2,14,43,21,61,21v25,0,36,-20,31,-45",w:295},"Ÿ":{d:"176,-189v35,20,-25,54,-39,72v-26,34,-57,57,-74,104v-10,15,-4,14,-23,3r0,-10v19,-44,27,-46,50,-81v-9,-5,-24,4,-34,4v-38,0,-54,-50,-44,-87v21,-5,18,19,22,35v4,18,15,27,29,27v41,0,60,-39,113,-67xm153,-222v0,8,-3,12,-11,12v-18,0,-21,-19,-16,-33v18,-1,28,2,27,21xm57,-247v8,2,29,9,28,17v0,21,-37,24,-36,1v0,-7,2,-13,8,-18",w:135},"ƒ":{d:"115,-262v-23,6,-39,63,-38,96v1,3,57,2,54,16v1,22,-45,15,-51,30v3,34,12,68,10,103v14,17,-18,53,-28,63v-48,8,-89,5,-95,-37v20,-5,77,21,83,-18v17,-29,-4,-61,0,-98v0,-5,-3,-10,-7,-17v-33,4,-43,-17,-25,-37v10,-4,27,5,27,-10v0,-43,15,-77,32,-109v12,-7,16,-22,38,-20v11,1,51,35,25,55v-9,1,-16,-17,-25,-17",w:145},"ˆ":{d:"144,-220v-29,0,-41,-27,-63,-39v-8,0,-11,5,-15,11v-17,12,-32,31,-54,13v-2,-5,-3,-9,-4,-14v20,-5,45,-33,64,-45v28,6,43,23,65,38v12,9,19,19,19,27v0,6,-4,9,-12,9",w:165},"ˇ":{d:"39,-286v33,46,63,-4,96,-16v6,0,9,6,9,19v0,24,-49,46,-77,46v-32,0,-52,-28,-59,-48v0,-25,23,-17,31,-1",w:153},"˘":{d:"65,-269v20,-11,45,-31,74,-36v20,30,-42,40,-59,66v-5,6,-11,8,-18,8v-8,-3,-45,-32,-51,-54v5,-24,14,-13,34,1",w:158},"˙":{d:"23,-302v15,-13,32,1,32,18v1,22,-36,29,-39,4v0,0,3,-7,7,-22",w:70},"˚":{d:"23,-225v-43,-24,-11,-85,41,-78v16,2,31,4,46,17v32,54,-41,86,-87,61xm33,-257v2,20,57,11,57,-6v0,-6,-11,-9,-33,-12v-14,-2,-24,13,-24,18",w:123},"˛":{d:"82,-5v-8,12,-16,55,-21,75v0,4,2,7,7,7v6,0,22,-7,50,-20v8,0,12,7,12,20v-2,22,-6,14,-27,30v-15,12,-26,16,-30,16v-47,-8,-59,-14,-56,-75v8,-27,12,-54,25,-77v19,-21,35,15,40,24",w:138},"˜":{d:"47,-300v26,-21,57,19,72,23v4,0,16,-5,36,-14v24,-10,22,-16,32,-13v3,12,-7,11,-7,23v-27,21,-48,32,-62,32v-3,2,-52,-27,-51,-31v-12,-2,-34,40,-54,33v-4,-13,-8,-18,1,-24v5,-7,16,-15,33,-29",w:186},"˝":{d:"91,-249v15,-11,38,-53,57,-29v0,9,0,14,-3,23v-2,3,-20,22,-54,55v-5,5,-10,8,-16,8v-17,2,-6,-22,-7,-31v-1,0,-2,0,-4,1v-17,21,-29,31,-50,27v-5,-18,-3,-15,3,-27v23,-27,40,-46,48,-59v7,-12,31,3,29,9v-1,14,-3,24,-13,31v4,4,9,-1,10,-8",w:151},"–":{d:"6,-66v-8,-72,79,-21,146,-39v37,-10,79,7,111,0v9,8,14,13,14,17v2,26,-72,13,-99,21v-83,4,-124,21,-172,1",w:282},"—":{d:"175,-106v86,-9,201,1,286,-1v11,6,13,11,6,30v-118,15,-246,10,-377,10v-25,0,-73,3,-82,-8r-2,-26v11,-13,32,-9,52,-7v38,3,84,-5,117,2",w:485},"‘":{d:"73,-262v-10,7,-41,39,-38,69v-15,13,-27,-16,-28,-28v-2,-20,51,-83,66,-83v20,0,25,41,0,42",w:95},"’":{d:"74,-300v13,31,-1,99,-44,101v-13,0,-19,-5,-19,-15v6,-10,31,-34,35,-59v2,-11,1,-32,11,-32v6,0,11,2,17,5",w:90},"‚":{d:"25,63v-26,21,-48,-2,-22,-24v14,-12,35,-40,35,-69v3,-2,3,-11,12,-9v35,17,5,88,-25,102",w:97},"“":{d:"66,-261v-21,5,-37,51,-22,77v0,4,-2,6,-7,6v-31,-9,-38,-62,-12,-94v12,-15,21,-28,31,-34v16,-1,19,24,22,34v10,-11,22,-32,43,-23v-2,8,4,16,5,19v-6,11,-51,53,-29,74v-12,21,-30,5,-33,-17v-6,-13,9,-28,2,-42",w:118},"”":{d:"120,-294v12,3,30,26,19,34v2,15,-40,70,-55,66v-40,-10,10,-51,14,-64v3,-3,8,-31,22,-36xm70,-306v14,3,26,34,16,49v-19,30,-31,45,-58,59v-12,-11,-33,-17,-7,-36v13,-19,36,-27,36,-59v0,-5,9,-13,13,-13",w:148},"„":{d:"25,63v-26,21,-48,-2,-22,-24v11,-9,36,-41,35,-69v3,-2,4,-12,12,-9v36,14,5,89,-25,102xm84,64v-24,20,-45,-1,-21,-24v21,-20,32,-35,35,-69v3,-2,3,-11,12,-9v36,17,9,86,-26,102",w:135},"†":{d:"22,-286v15,6,5,-20,19,-19v9,-3,15,21,17,22v6,1,12,3,20,6v3,10,5,16,-9,16v-34,-10,-6,51,-34,52v-20,-7,11,-47,-15,-49v-14,3,-25,-5,-17,-24v7,-2,14,-4,19,-4",w:77},"‡":{d:"102,-284v16,2,42,-2,33,18v-7,15,-42,1,-38,30v3,3,31,1,30,11v4,15,-29,19,-36,24v-2,18,-4,24,-16,29r-25,-26v-25,7,-53,3,-42,-25v4,-10,70,0,51,-22v-17,4,-41,12,-39,-15v-5,-16,39,-18,44,-20v4,-2,7,-10,10,-24v19,-3,23,6,28,20",w:145},"•":{d:"130,-114v0,47,-124,54,-120,-8r6,-31v44,-28,64,-34,104,0v8,6,10,20,10,39",w:139},"…":{d:"244,-24v-1,21,-38,32,-41,3v-2,-19,23,-22,34,-17v0,7,0,15,7,14xm113,-24v0,-22,28,-21,38,-8v5,34,-39,40,-38,8xm35,-2v-10,-2,-36,-17,-18,-29v-1,-15,17,-17,31,-6v7,17,6,33,-13,35",w:258},"‰":{d:"398,-131v58,-1,87,13,72,65v-1,30,-66,63,-99,65v-56,3,-99,-58,-62,-102v2,2,5,2,8,2v20,-16,51,-17,81,-30xm202,-279v33,0,94,-24,95,18v-7,31,-33,27,-54,55v-36,32,-71,74,-112,99v-18,18,-40,34,-51,58v-19,14,-25,37,-56,40v-17,2,-25,-29,-10,-40v15,-11,40,-37,52,-52r87,-72v-51,13,-100,6,-116,-27v1,-5,-6,-30,-9,-36v-3,-5,22,-41,27,-39v29,2,16,34,5,49v0,15,14,23,42,23v42,0,59,-31,28,-38v-17,-4,-53,3,-50,-23v0,-7,1,-12,4,-16v16,-9,36,4,49,5v0,0,23,-4,69,-4xm222,-118v33,-2,55,18,50,57v-29,36,-48,45,-96,50v-27,-5,-56,-17,-58,-51v13,-37,64,-43,104,-56xm335,-61v13,44,101,7,108,-31v-11,-3,-20,-4,-30,-4v-18,-1,-82,18,-78,35xm225,-244v-18,0,-29,-1,-46,3v7,15,6,28,0,43v15,-14,34,-30,46,-46xm164,-53v26,5,59,-10,76,-26v-17,-16,-49,2,-67,14v1,8,-8,6,-9,12",w:485},"‹":{d:"64,-107v9,17,86,17,87,43v0,11,-4,16,-13,16v-36,-11,-70,-22,-109,-31v-19,-4,-18,-14,-9,-36v59,-56,93,-84,101,-84v17,0,19,20,13,29",w:159},"›":{d:"41,-181v26,27,112,44,70,91r-82,60v-20,3,-25,-23,-13,-32r70,-51r-66,-46v-5,-6,-4,-28,5,-29v4,2,9,4,16,7",w:137},"⁄":{d:"193,-305v7,6,17,31,3,41v-10,7,-12,13,-21,25v-79,56,-190,209,-197,260r-18,0v-23,-19,9,-70,15,-85v52,-83,121,-179,218,-241",w:120},"™":{d:"213,-307v28,9,11,49,7,75v-1,4,-4,6,-11,6v-7,1,-11,-14,-11,-34v-14,-6,-34,34,-46,28v-2,0,-10,-9,-24,-27v-10,7,-3,36,-27,31v-15,-24,-3,-27,1,-48v-6,-7,-27,-1,-31,3v-3,14,-7,30,-11,51v-5,10,-29,9,-24,-12v-5,-8,1,-18,3,-35v-13,6,-33,2,-29,-18v20,-17,64,-17,100,-19v28,-1,29,30,45,39v11,-6,35,-32,58,-40",w:239},"∆":{d:"18,-1v-24,-30,8,-48,25,-71v14,-19,34,-28,40,-56v20,-35,29,-14,57,4v9,39,43,62,57,102v0,16,-34,17,-50,14v-28,2,-72,4,-129,7xm139,-47r-22,-52v-12,-5,-12,15,-24,27v-7,6,-14,16,-23,28v23,1,36,-1,69,-3",w:199},"∙":{d:"57,-77v6,18,-7,21,-19,23v-34,6,-25,-40,-9,-43v18,-3,29,8,28,20",w:67},"√":{d:"364,-218v43,-21,80,-51,104,-32v-3,19,-24,21,-44,40v-41,15,-78,53,-136,78r-137,98v-20,16,-79,66,-91,68v-3,1,-25,-11,-24,-13v-4,-28,-43,-61,-30,-85v26,-15,42,19,58,32r295,-188v0,1,2,2,5,2",w:474},"∞":{d:"322,-72v-4,22,-54,41,-76,41v-43,0,-83,-17,-114,-35v-46,19,-125,53,-128,-18v-1,-14,10,-22,13,-35v29,-10,62,-31,97,-4v37,28,47,5,75,-8v40,-19,73,-10,114,1v13,1,18,55,19,58xm228,-69v15,0,62,-12,61,-25v-19,-23,-89,-10,-105,11v0,2,1,4,2,4v28,6,42,10,42,10xm75,-102v-13,2,-41,4,-44,19v0,4,3,7,10,7v21,0,40,-6,54,-17v-9,-6,-16,-9,-20,-9",w:330},"∫":{d:"62,-151v-7,-70,20,-130,63,-150v28,1,39,10,70,23v20,8,6,33,-6,35v-29,-13,-45,-20,-49,-20v-20,-4,-45,51,-43,70v8,60,5,129,5,189v0,62,-27,93,-79,93v-37,-1,-71,-14,-63,-57v21,0,79,34,91,-2v16,-3,14,-64,21,-85v-2,-31,-1,-74,-10,-96",w:156},"≈":{d:"133,-112v21,15,48,-30,78,-17v3,3,5,7,5,9v-8,30,-47,45,-76,45v-19,0,-64,-48,-90,-21r-29,20v-6,-1,-17,-16,-15,-32v24,-17,70,-42,107,-21v4,4,10,9,20,17xm138,-57v28,2,48,-25,76,-26v13,30,-21,42,-40,53v-41,24,-77,-15,-114,-23v-15,14,-46,32,-49,-1v-3,-9,27,-28,54,-30",w:223},"≠":{d:"48,-130v29,11,49,-57,60,-50v25,6,7,27,-1,46v22,5,29,7,21,22v-18,2,-48,-1,-50,15v9,8,53,-7,54,10v-4,22,-46,20,-72,24v-7,13,-18,32,-34,57v-8,6,-15,-3,-13,-14v-1,-9,15,-39,14,-45v-30,5,-24,-17,-13,-25v12,-1,36,4,29,-13v-14,0,-47,6,-36,-12v0,-18,27,-13,41,-15",w:140},"≤":{d:"73,-109v10,15,87,16,87,42v0,11,-5,16,-13,16v-36,-11,-69,-24,-109,-31v-18,-8,-18,-13,-9,-36v59,-56,93,-83,101,-83v16,0,18,17,14,28v-27,24,-42,35,-71,64xm10,-29v35,-12,117,-26,148,-3v1,2,-5,19,-8,18r-124,15v-16,2,-26,-18,-16,-30",w:168},"≥":{d:"115,-174v20,7,53,36,20,57v-19,11,-91,68,-82,59v-18,3,-25,-22,-13,-31v15,-10,14,-10,70,-51r-50,-37v-5,-4,-5,-27,4,-28v16,7,40,17,51,31xm14,-32v33,-10,86,-14,127,-10v12,12,5,23,-11,27v-49,9,-82,13,-99,13v-22,0,-24,-16,-17,-30",w:163},"◊":{d:"76,-158v48,-8,64,11,100,36v28,19,-5,39,-22,54v-15,13,-40,32,-48,49v-17,5,-12,0,-27,-16v-6,-6,-86,-31,-68,-53r2,-9v27,-23,48,-44,63,-61xm93,-65v12,-2,35,-31,41,-38v-5,-10,-16,-14,-34,-24v-12,12,-36,29,-40,44v19,11,30,18,33,18",w:199}}}),"undefined"==typeof Raphael&&"undefined"==typeof Snap)throw new Error("Raphael or Snap.svg is required to be included.");if(_.isEmpty(Diagram.themes))throw new Error("No themes were registered. Please call registerTheme(...).");Diagram.themes.hand=Diagram.themes.snapHand||Diagram.themes.raphaelHand,Diagram.themes.simple=Diagram.themes.snapSimple||Diagram.themes.raphaelSimple,Diagram.prototype.drawSVG=function(container,options){var defaultOptions={theme:"hand"};if(options=_.defaults(options||{},defaultOptions),!(options.theme in Diagram.themes))throw new Error("Unsupported theme: "+options.theme);var div=_.isString(container)?document.getElementById(container):container;if(null===div||!div.tagName)throw new Error("Invalid container: "+container);var Theme=Diagram.themes[options.theme];new Theme(this,options,function(drawing){drawing.draw(div)})},"undefined"!=typeof jQuery&&!function($){$.fn.sequenceDiagram=function(options){return this.each(function(){var $this=$(this),diagram=Diagram.parse($this.text());$this.html(""),diagram.drawSVG(this,options)})}}(jQuery);var root="object"==typeof self&&self.self==self&&self||"object"==typeof global&&global.global==global&&global;"undefined"!=typeof exports?("undefined"!=typeof module&&module.exports&&(exports=module.exports=Diagram),exports.Diagram=Diagram):root.Diagram=Diagram}();
//# sourceMappingURL=sequence-diagram.js
</script>


<div style="page-break-after: always;"></div>

## lgui framework 使用说明

### 零、下载说明
> 在linux环境下执行 git clone https://github.com/d-power/LGUI3.git
> 如果直接下载了zip包, 在linux环境下执行 unzip LGUI3-master.zip
> 在windows环境下解压zip包，会导致软链接丢失，需要在linux环境下执行 ./build.sh 已重新链接。
> 在Windows下运行时需要用libs_win替换libs
> 在Linux机器上运行时需要用libs_arm替换libs
>

### 一、框架简介
* lgui framework全部使用lua语言实现，采用MVC设计思想
* lua是最适合嵌入式设备执行的动态语言，有支持热更新，无需重新编译，可动态配置等优点
* lgui framework参考了react和微信/支付宝小程序的部分设计思想
* lgui framework只专注于实现界面交互逻辑，具体的业务逻辑，需要开发者使用C语言实现
* lgui framework提供了与C库双向交互的方式
* lgui framework的实现就是围绕table的使用设计的

<div style="page-break-after: always;"></div>

### 二、目录结构
```c
.
├── README.md
├── app.lua
├── config
│   ├── env.lua
│   ├── event.lua
│   ├── language-ZH.lua
│   ├── router.lua
│   └── service.lua
├── libs
│   ├── lgui_dispatch.lua
│   ├── lgui_draw.lua
│   ├── lgui_parser.lua
│   ├── lgui_private.lua
│   └── lgui_public.lua
├── main.lua
├── pages
│   ├── home.lua
│   └── homeview.lua
├── resources
│   ├──
│   └──
├── service
│   ├──
│   └──
├── start.lua
├── utils
│   ├──
└── └──
```

<div style="page-break-after: always;"></div>

### 三、基本概念
#### (1) view
> 表示lgui中最基本的界面布局，是每张界面的必要元素，view文件放置于pages文件夹中
#### (2) ctrl
> 表示view中的每个控件，每个view是由多个ctrl组合而来
#### (3) controller
> 表示每个view对应的控制逻辑，controller文件放置于pages文件夹中
#### (4) service
> lua framework处理与C库交互事件与逻辑的模块，通常由开发者自行实现
#### (5) page
> 一个page表示一张独立界面，每个page中包含一个view和一个controller
#### (6) router
> page的索引，在config/router.lua中配置，当set_page时，需要传入page。若router中配置如下：
> ```lua
> local router =
> {
>     -- page(home)
>     home = "pages/home",
>     -- page(example)
>     example = "pages/setting/setting",
> }
> return router
> ```
> pages文件夹中应该存在以下文件：
> ```lua
> -- controller
> pages/home.lua
> -- view
> pages/homeview.lua
> -- controller
> pages/setting/setting.lua
> -- view
> pages/setting/settingview.lua
> ```
> 当需要切换为setting界面时，传入example，则lgui会自动加载pages/setting/settingview.lua和pages/setting/setting.lua
#### (7) app
> 由用户实现的自定义逻辑，即app.lua
#### (8) lgui entry
> main.lua是lgui框架的入口脚本，使用lua main.lua即可启动界面程序。与使用sh build.sh命令执行shell脚本同理
#### (9) lgui c library
> 由C语言实现的lgui绘图库，实际的绘图、刷新、控件管理，都是由这个c库完成的。lgui framework是基于lgui c library的封装
#### (10) lua table
> lua语言的核心数据结构，相当于c++的hash map或python的dict，即key-value表示的键值对，key和value都可以是任意类型（nil除外），一个典型的table可以表示为
> ```lua
> local t = {key1 = value1, key2 = value2}
> ```

<div style="page-break-after: always;"></div>

### 四、lgui framework文件说明
> main.lua : 程序入口，用户无需修改其中代码

> app.lua : 全局用户代码，app.lua内的参数和函数，可以由任意界面通过get_app()使用

> start.lua : 启动第一个home界面，加载app.lua后才会加载start.lua

> config/ : 存放配置文件

> config/env.lua : 用户环境配置，包含以下参数
> |参数名|参数类型|必填(Y/N)|说明|
> |--|--|--|--|
> |path|string|Y|lgui framework绝对路径|
> |cpath|string|Y|依赖c库的路径|
> |ttf|string|Y|ttf字库文件|
> |fb|string|Y|framebuffer设备节点|
> |rorate|number|N|是否旋转，0：不旋转，1：90度，2：180度，3：270度|
> |disp_flush_period|number|N|显示刷新频率(ms)，0表示默认(20)|
> |img_cache_num|number|N|图片缓存最大数量，0表示默认(24)|
> |img_cache_max_size|number|N|单张图片缓存的最大字节。默认大小为屏幕大小|
> |ttf_cache_num|number|N|界面字型的最大数量，0表示默认(64)|
> |touch_period|number|N|触摸屏取读频率(ms)，0表示默认(25)|
> |touch_longpress_period|number|N|触摸屏长按多久上报长按事件(ms)，0表示默认(500)|
> |key_period|number|N|按键取读频率(ms)，0表示默认(50)|
> |timer_period|number|N|timer上报频率(ms)，会触发service timer，0表示默认(关闭)|
> |background|string|Y|背景图片|
> |log_level|number|Y|打印等级|
> |log_title|table|Y|打印等级对应的title|
> |log_color|table|Y|打印等级对应的color|
> |shared_file|table|Y|需要预加载 shared 文件|
> |screensaver_time|table|Y|无触摸进入屏保的超时时间(s)。当触发屏保时，会触发service lgui_event_screensaver。0表示默认(关闭)。|

> config/event.lua : 框架事件列表，用户无需关注

> config/language-ZH.lua : 语言文件，命名规则为language-XX.lua，用户可以通过set_language("XX")函数改变语言

> config/router.lua : 路由文件，已在**基本概念 (6) router**中说明

> config/service.lua : 服务配置文件，配置C库传递给lgui framework的事件。其中，key表示service文件名，table内的字符串表示实际的事件名。实例如下：
> ```lua
> local service =
> {
>     timer = {"lgui_event_timer"},
> }
> return service
> ```
> 在service文件夹中，则应该存在service/timer.lua文件夹，内容如下：
> ```lua
> local timer =
> {
>     lgui_event_timer = function(x, y, z)
>     end,
> }
> return timer
> ```

> libs/ : lgui framework的核心调度库和函数库，用户无需关心

> pages/ : 界面文件，已在**基本概念 (6) router**中说明

> resources/ : 存放用户的资源文件，比如图片，字库等等

> service/ : 存放用户自定义的服务逻辑

> share/ : 共享ctrl目录，在view中可以载入共享控件，以减少多张界面布局重复时的代码量

<div style="page-break-after: always;"></div>

### 五、时序图
#### (1) lgui framework starting
```sequence {theme="simple"}
main.lua -> configs/ : load configure
main.lua -> liblgui3.so : load c library
main.lua -> libs/ : load framework core libs
libs/ -> app.lua : load app.lua
main.lua -> service : load service
main.lua -> start.lua : load custom start script
```

#### (2) page loading
```sequence {theme="simple"}
set_page -> onload : load next pages
onload -> parser : parser every ctrl
parser -> draw : call c library \n to draw every ctrl
draw -> onshow : finish drawing
```

#### (3) service callback
```flow
start=>start: main
end=>end: end
cond1=>condition: get event
cond2=>condition: find service
oper1=>operation: callback service
oper2=>operation: callback default event
start->cond1
cond1(yes)->cond2
cond2(no)->oper2
cond2(yes)->oper1
oper1->oper2
end->cond1
```
<br/><br/>

<div style="page-break-after: always;"></div>

### 六、lgui framework特性描述

#### 1、ctrl加载顺序
> 每个view中，按照数组索引顺序加载，即写在前面的ctrl，先加载，在下层，写在后面的ctrl，后加载，在上层。
> 例如：
> ```lua
> local view =
> {
>     {
>         type = "img",
>         ...
>     },
>     {
>         type = "btn",
>         ...
>     },
> }
> return view
> ```
> btn控件将在img控件上层绘图，若btn控件与img有重叠，则btn重叠部分会盖在img上。

#### 2、setdata特性
> view中，任意ctrl的任意属性（type除外），都可以被 **"{{}}"** 替换，在解析view时，会自动使用controller中data的对应成员替换。第一次加载view时，替换为用户实际指定属性。已加载过view，通过set_data(obj)接口改变data中某个成员的值时，lgui framework会自动寻找关联控件，并控制c library更新该控件。
> 例如：
> ```lua
> -- homeview.lua
> local view =
> {
>     {
>         type = "img",
>         position = {x = "{{pos_x}}", y = "{{pos_y}}"}
>         attr = {},
>     }
> }
> return view
> ```
> ```lua
> -- home.lua
> local controller =
> {
>     data =
>     {
>         pos_x = 10,
>         pos_y = 20,
>     },
>     onload = function() end,
>     onshow = function() end,
>     ondestroy = function() end,
> }
> return controller
> ```
> 加载view时，img控件的x值会被10替换，y值会被20替换
> 界面加载后，若用户想更改该控件位置，可以调用
> ```lua
> set_data({pos_x = 100, pos_y = 200})
> ```
> lua framework则会自动更新该控件的位置
> 其他属性同理

#### 3、view中ctrl事件关联controller
> view中的每个ctrl都可以关联到一个或多个controller函数（通过action.bind字段实现）
> 注：若ctrl type没有响应事件，则设置action.bind是无效的（比如img控件，是无响应的）
> 例如：
> ```lua
> -- homeview.lua
> local view =
> {
>     {
>         type = "btn",
>         position = {x = 0, y = 0}
>         attr = {res_release = "0.png", res_press = "1.png", res_disable = "2.png"},
>         action = {bind = {up = "btn_up", down = "btn_down", long = "btn_long"}}
>     }
> }
> return view
> ```
> ```lua
> -- home.lua
> local controller =
> {
>     data      = {},
>     onload    = function() end,
>     onshow    = function() end,
>     ondestroy = function() end,
> 
>     btn_up    = function()
>         log(3, "btn up")
>     end,
> 
>     btn_down  = function()
>         log(3, "btn down")
>     end,
> 
>     btn_long  = function()
>         log(3, "btn longpress")
>     end,
> }
> return controller
> ```
> 当用户针对btn产生不同触摸行为时，lgui framework会自动回调bind中对应的函数

#### 4、this特性
> this是一个全局变量（可以在任意位置使用），表示当前的controller。当希望获取当前controller的某个data时，可以直接使用this.data.xx，当希望使用当前controller中函数时，this.somefunc()。切换一张新界面时（例如page A切换到page B），首先回调A.destroy，紧接着this=B。此时this已经被替换为新的controller。
> <br/>**时序图如下：**
> ```sequence {theme="simple"}
> first page A -> set_page:
> Note over set_page: load page A
> Note over set_page: this = controller A
> Note over set_page: this.onload
> set_page -> c library: send every ctrl
> Note over c library: draw every ctrl
> c library -> first page A: onshow
> second page B -> set_page: switch to page B
> Note over set_page: load page B
> Note over set_page: this.destroy
> Note over set_page: this = controller B
> Note over set_page: this.onload
> set_page -> c library: send every ctrl
> Note over c library: draw every ctrl
> c library -> second page B: onshow
> ```

#### 5、热更新特性
> 由于每次view刷新，都是动态加载的，所以可以很容易做到热更新，例如当前处于home page，通过网络下载setting page并替换到router指定位置，在加载setting page时，即实际画替换后的界面。在此过程中，程序无需重启。

#### 6、lgui中的背景特性
> lgui3中，背景作为一个特殊控件存在，与每个page中的view相对独立，同时又是全局的根对象，即未指定父控件的ctrl，自动成为背景的子。

#### 7、ctrl position特性
> lgui3中，控件位置有两种设置方式，绝对位置和相对位置。
> 绝对位置即position.x / position.y
> 当position的align属性不为nil，则ctrl会被设置为相对位置，绝对位置的x / y会被忽略
> 相对位置的具体特性，参考**ctrl的父子特性**

#### 8、图片资源自动解析特性
> lgui3中，可以支持bmp、png、jpeg(jpg)三种图片资源格式，用户只需传递图片名即可，c library会自动解析图片格式。解析步骤分两步（1）判断文件后缀名（2）校验文件头。若用户的资源文件实际是jpg，但文件名后缀写为png，c library会跳过该图片，不会显示。

#### 9、ctrl的父子特性
> lgui3中，ctrl可以有父子或参考关系，当指定了name属性，则表示这个ctrl可以作为参考控件或父控件。
> * 当一个ctrl作为参考控件（ref ctrl），其他ctrl可以根据ref ctrl的位置，设置为相对位置（只作为位置参考，不作为父子）。当一个ctrl作为父控件时，该ctrl隐藏（或移动）时，关联的子控件，也会隐藏（或移动），子控件的显示范围在父控件之内。
> * 当一个ctrl，指定了父控件，未指定参考控件，则自动参考父控件的位置设置相对位置。
> * 当一个ctrl，指定了参考控件，未指定父控件，则该ctrl是背景的子，根据参考控件设置相对位置。
> * 当一个ctrl，即有参考控件，又有父控件，且参考控件与父控件不同时，控件位置跟随参考控件，变化跟随父控件。
> * 举例：
> ```lua
> -- homeview.lua
> local util_align = require "utils/align"
> local view =
> {
>     {
>         type        = "img",
>         -- 未指定参考控件，则参考背景，ALIGN_CENTER表示居中
>         -- 通常背景是全屏，所以该img控件会基于全屏幕居中显示
>         position    = {align = util_align.ALIGN_CENTER},
>         attr        = {res = "62.bmp"},
>         -- 指定name属性，表示这个img可以作为其他控件的父控件或参考控件
>         name        = "ctrl_0"
>     },
>     {
>         type        = "img",
>         -- ctrl_0是参考控件，参考ctrl_0的位置，居中显示
>         position    = {ref = "ctrl_0", align = util_align.ALIGN_CENTER},
>         -- 这个控件的父控件是背景
>         attr        = {res = "0.bmp"},
>     },
>     {
>         type        = "img",
>         -- 未指定参考控件，则参考父控件的位置，居中显示
>         position    = {align = util_align.ALIGN_CENTER},
>         -- ctrl_0是该控件的父控件，且ctrl_0隐藏或移动时，会关联到这个控件
>         attr        = {res = "1.bmp", parent = "ctrl_0"},
>     },
> }
> return view
> ```

#### 10、service抢占默认事件特性
> 用户可以在service中，定义lgui framework的默认事件，则当lgui触发默认事件时，会优先获得该事件，待service执行完，lgui framework才会执行对应事件函数。
> 例如用户可以在service中自行实现lgui_event_longpress事件的接收函数，则当lgui_event_longpress事件触发时，service会先收到，先执行，待service执行完，lgui framework才会执行lgui_event_longpress的默认处理。

#### 11、文本重新着色特性
> 对于单行的文本，可以使用命令(\x1b)实现文本的重新着色。例如 "写一个\x1bff0000 红色\x1b文本"。 将文本“红色”重新着色为红色。除了拼接字符，框架还提供了函数 get_recolor_str 辅助拼接着色文本，详情查看函数说明。
> 请注意，文本重新着色只能在一行中进行，如果着色的文本中存在 ’\n‘ 或 使用 MODE_BREAK 模式导致换行，则新行的文本不会重新着色
> 目前能使用这一特性的控件：list、text

#### 12、common页面特性
> lgui3 中除了普通的页面，框架会虚拟common界面。虚拟的common界面会在普通界面的顶部。当普通界面切换时，common界面不会被删除。common界面的关闭时机由用户决定。
> common 界面主要用于多个界面存在的共性控件。共性控件可以在common中实现，这样就不用在每个界面重复实现共性控件的配置以及方法。例如：弹窗，顶部状态栏等等。
> 配置方法：common界面的配置方式与普通界面一样。在config/router.lua中配置名字以及对应的文件路径。
> 支持同时添加多个common界面。已页面的名字区分。
> 全局参数 common 中存放common界面的controller。使用 common[name] 获取名字为 name 的common界面 controller。
> 使用函数 common_add 添加common页面。
> 使用函数 common_destroy 删除common界面。
> 使用函数 common_hidden 隐藏common界面。
> 使用函数 common_show 显示common界面。
> 使用函数 common_check 判断common界面是否存在。
> 函数的使用方法详情请看函数说明

#### 13、手势导航特性
> 从边缘向内滑动时, 会将手势导航事件发送到当前页面, 判断并执行 gesture 函数，并将方向以参数的形式返回。
> 当开启手势导航特性时, 左、右、下 边缘 20 像素内，点击事件被手势控件吸收，覆盖的控件不会被触发。
> 目前支持左滑(```"left"```)、右滑上滑(```"right"```)、上滑(```"up"```)。
> 默认不开启手势导航，颜色为透明。
> 使用函数 lgui_gesture_open() 开启手势导航。
> 使用函数 lgui_gesture_close() 关闭手势导航。
> 使用函数 lgui_gesture_set_color(color) 设置颜色。

<div style="page-break-after: always;"></div>

### 七、函数说明
<br/>

#### 1、lua framework API

<br/>

##### 1.1 log(level, ...)
**说明：** 打印函数
**参数：**
|参数名|参数类型|必填(Y/N)|说明|
|--|--|--|--|
|level|number|Y|打印等级|
|...|any|N|可变参数|
**返回：** nil

<br/>

##### 1.2 get_language_type()
**说明：** 获取当前语言类型
**参数：** nil
**返回：**
|类型|说明|
|--|--|
|string|语言类型描述|

<br/>

##### 1.3 set_language(lang)
**说明：** 设置语言
**参数：**
|参数名|参数类型|必填(Y/N)|说明|
|--|--|--|--|
|lang|string|Y|语种|
**返回：** nil

<br/>

##### 1.4 get_language_str(str)
**说明：** 根据指定字符串寻找当前语种对应的值。例如当前语种是EN，语言文件翻译关系为：测试 = test，则get_language_str("测试")，返回test
**参数：**
|参数名|参数类型|必填(Y/N)|说明|
|--|--|--|--|
|str|string|Y|翻译文件的key|
**返回：**
|类型|说明|
|--|--|
|string|翻译文件的value|

<br/>

##### 1.5 set_data(obj)
**说明：** 接收一个table对象，解析table中的key-value关系，当key是page.data中的成员时，page.data.key = value，且如果key关联了ctrl，则会自动更新相关的ctrl。
**参数：**
|参数名|参数类型|必填(Y/N)|说明|
|--|--|--|--|
|obj|table|Y|新的键值关系表|
**返回：** nil

<br/>

##### 1.6 set_page(page, msg)
**说明：** 更新界面
**参数：**
|参数名|参数类型|必填(Y/N)|说明|
|--|--|--|--|
|page|string|Y|跳转界面的page（router中的key）|
|msg|any|N|携带到下一个界面的msg|
**返回：** nil

<br/>

##### 1.7 get_app()
**说明：** 获取app对象
**参数：** nil
**返回：**
|类型|说明|
|--|--|
|table|app对象|

<br/>

##### 1.8 get_split(str, reps)
**说明：** 把一个str根据reps分片
**参数：** 
|参数名|参数类型|必填(Y/N)|说明|
|--|--|--|--|
|str|string|Y|需要分片的字符串|
|reps|string|Y|以reps做分割|
**返回：**
|类型|说明|
|--|--|
|table|分片后的集合|

<br/>

##### 1.9 get_language_tab(tab)
**说明：** 根据一个tab的value，获取当前语种的映射表。内部是对get_language_str的封装
**参数：** 
|参数名|参数类型|必填(Y/N)|说明|
|--|--|--|--|
|tab|table|Y|文字集合|
**返回：**
|类型|说明|
|--|--|
|table|语言映射集合|

<br/>

##### 1.10 set_background(image)
**说明：** 改变背景图片
**参数：** 
|参数名|参数类型|必填(Y/N)|说明|
|--|--|--|--|
|image|string|Y|图片文件|
**返回：** nil

<br/>

##### 1.11 get_now_page_name()
**说明：** 获取当前页面名字
**参数：** nil
**返回：**
|类型|说明|
|--|--|
|string|当前页面名字|

<br/>

##### 1.12 get_recolor_str(str, recolor, part)
**说明：** 获取重新着色文本, 返回拼接后的文本
**参数：** 
|参数名|参数类型|必填(Y/N)|说明|
|--|--|--|--|
|str|string|Y|原始文本|
|recolor| number |Y|重新着色的颜色|
|part|string|N|不填写时着色全部文本，填写时只着色填写的文本。注：part必须存在于str中|
**返回：**
|类型|说明|
|--|--|
|string|返回拼接后的文本|

<br/>

##### 1.13 common_add(name, msg)
**说明：** 添加common界面
**参数：** 
|参数名|参数类型|必填(Y/N)|说明|
|--|--|--|--|
|name|string|Y|common页面的名字|
|msg|table|N|携带到common界面的msg|
**返回：**

##### 1.14 common_destroy(name)
**说明：** 删除common界面
**参数：** 
|参数名|参数类型|必填(Y/N)|说明|
|--|--|--|--|
|name|string|Y|common页面的名字|
**返回：**

##### 1.15 common_hidden(name)
**说明：** 隐藏common界面
**参数：** 
|参数名|参数类型|必填(Y/N)|说明|
|--|--|--|--|
|name|string|Y|common页面的名字|
**返回：**

##### 1.16 common_show(name)
**说明：** 显示common界面
**参数：** 
|参数名|参数类型|必填(Y/N)|说明|
|--|--|--|--|
|name|string|Y|common页面的名字|
**返回：**

##### 1.17 common_check(name)
**说明：** 检查common界面是否存在
**参数：** 
|参数名|参数类型|必填(Y/N)|说明|
|--|--|--|--|
|name|string|Y|common页面的名字|
**返回：**
|类型|说明|
|--|--|
|boolean|返回common界面是否存在|

##### 1.18 lgui_screensaver_reset()
**说明：** 重新计时屏保时间
**参数：** 
**返回：**

##### 1.19 lgui_gesture_open()
**说明：** 启动手势导航
**参数：** 
**返回：**

##### 1.20 lgui_gesture_close()
**说明：** 关闭手势导航
**参数：** 
**返回：**

##### 1.21 lgui_gesture_set_color(color)
**说明：** 设置手势导航滑动时显示动画色块的颜色
**参数：** 
|参数名|参数类型|必填(Y/N)|说明|
|--|--|--|--|
|color|number|Y|设置的颜色|
**返回：**

##### 1.22 lgui_gesture_set_part(part)
**说明：** 设置手势控件可触发的动作
**参数：** 
|参数名|参数类型|必填(Y/N)|说明|
|--|--|--|--|
|part|number|Y|可触发的动作(可取值参考 utils/gesture.lua)|

##### 1.23 set_screensaver_time(times)
**说明：** 重新设置屏保时间
**参数：** 
|参数名|参数类型|必填(Y/N)|说明|
|--|--|--|--|
|times|number|Y|设置的时长. 单位: s|
**返回：**

##### 1.24 get_type_by_index(index)
**说明：** 通过控件的index值获取控件类型
**参数：** 
|参数名|参数类型|必填(Y/N)|说明|
|--|--|--|--|
|index|number|Y|控件的index值|
**返回：**
|类型|说明|
|--|--|
|string|返回控件的类型。如："btn", "img"|

##### 1.25 lgui_touch_report_enable(enable)
**说明：** 是否开启坐标点上报。开启时将产生 lgui_event_touch 事件。
**参数：** 
|参数名|参数类型|必填(Y/N)|说明|
|--|--|--|--|
|enable|boolean|Y|true:开启 false 关闭|
**返回：**
无

***说明: 当开启坐标点上报时，将产生lgui_event_touch事件***
***参数：***
|参数名|参数类型|说明|
|--|--|--|
| x | string | x坐标 |
| y | string | y坐标 |
| state | string | 触摸状态 |


##### 1.26 lgui_timer_create(info)
**说明：** 创建自定义 timer
**参数：** 
|参数名|参数类型|必填(Y/N)|说明|
|--|--|--|--|
|info|table|Y|timer参数|
|info.name|string|Y|timer的名字，为timer的唯一标识符, 不能为空|
|info.exec_cb|function|Y|timer的执行函数|
|info.duration|string|Y|timer的周期时长|
|info.exec_count|string|Y|timer执行一定次数自动销毁, 为 nil 时，timer需用户自行销毁|
**返回：**
|类型|说明|
|--|--|
|boolean|true:success false:fail|

> 例如：
> ```lua
>
> -- param table 包含创建 timer 是传入的info数据。创建时可在info内部自定义成员
> local function onesec_timer(param)
>    print(param.name, os.date())
> end
> 
> lgui_timer_create({
>      name = "1sec_test",
>      exec_cb = onesec_timer,
>      duration = 200,
> })
> 


##### 1.27 lgui_timer_delete(name)
**说明：** 删除自定义 timer
**参数：** 
|参数名|参数类型|必填(Y/N)|说明|
|--|--|--|--|
|name|string|Y|timer的名字|
**返回：**
|类型|说明|
|--|--|
|boolean|true:success false:fail|

##### 1.28 lgui_timer_pause(name)
**说明：** 暂停自定义 timer
**参数：** 
|参数名|参数类型|必填(Y/N)|说明|
|--|--|--|--|
|name|string|Y|timer的名字|
**返回：**
|类型|说明|
|--|--|
|boolean|true:success false:fail|

##### 1.29 lgui_timer_reumse(name)
**说明：** 恢复自定义 timer
**参数：** 
|参数名|参数类型|必填(Y/N)|说明|
|--|--|--|--|
|name|string|Y|timer的名字|
**返回：**
|类型|说明|
|--|--|
|boolean|true:success false:fail|

<br/>

#### 2、c library API <lgui3.h>

<br/>

##### 2.1 LGUI_C_API bool lgui_send2lua(lgui_event_s *event);
**说明：** 发送事件给lua framework
**参数：** 
|参数名|参数方向|说明|
|--|--|--|
|event|in|事件结构|
**返回：**
|类型|说明|
|--|--|
|bool|成功返回true，失败返回false|

<br/>

##### 2.2 LGUI_C_API bool lgui_pairs_table(lua_State *L, lgui_table_map_s *c, int index);
**说明：** 迭代lua传递到C的table并根据映射表赋值给指定地址
**参数：** 
|参数名|参数方向|说明|
|--|--|--|
|L|in|lua状态机|
|c|in|lua table和C的映射表|
|index|in|table在L栈中的位置|
**返回：**
|类型|说明|
|--|--|
|bool|成功返回true，失败返回false|
**示例：**
> Lua
> ```lua
> local test_result = {math = 60, physics = 85}
> local test_student = {name = "zhangsan", age = 15, result = test_result}
> test_c_func(test_student)
> ```
> C
> ```c
> typedef struct
> {
>     int math;
>     int physics;
> } result;
> 
> typedef struct
> {
>     char *name;
>     int age;
>     result res;
> } student;
> 
> int test_c_func(lua_State* L)
> {
>     student stu;
>     // 对应lua中的test_result，因为test_result是table，所以单独做一个映射表
>     lgui_table_map_s result_map[] =
>     {
>         // 第一个参数是Lua的数据类型
>         // 第二个参数是Lua table中的key
>         // 第三个参数若找到对应的key，value赋值给指定的地址
>         {LUA_TNUMBER, (int)"math",    &stu.res.math},
>         {LUA_TNUMBER, (int)"physics", &stu.res.physics},
>         LGUI_TABLE_MAP_END,
>     };
>     // 对应lua中的test_student
>     lgui_table_map_s student_map[] =
>     {
>         // 此处的stu.name指向的内容会跟随lua的垃圾回收
>         // 若想持久化保存在C中，需自己另行拷贝
>         {LUA_TSTRING, (int)"name",    &stu.name},
>         {LUA_TNUMBER, (int)"age",     &stu.age},
>         // table类型，嵌入另一个映射表
>         {LUA_TTABLE,  (int)"result",  result_map},
>         LGUI_TABLE_MAP_END,
>     };
>     // 第三个参数是因为lua只传递了一个table参数，所以该table在栈顶，即-1
>     // lua调用C接口传递下来的参数，会顺序压栈，即第一个参数在栈底，最后一个参数在栈顶
>     lgui_pairs_table(L, student_map, -1);
> }
> ```

<br/>

##### 2.3 LGUI_C_API void lgui_push_table(lua_State *L, lgui_table_map_s *c);
**说明：** 根据映射表，把C的映射关系，打包成table传递给lua，即lgui_pairs_table的逆操作，打包后的table，在栈顶（-1位置）
**参数：**
|参数名|参数方向|说明|
|--|--|--|
|L|in|lua状态机|
|c|in|lua table和C的映射表|
**返回：** void

示例:
> C
> ```c
>  typedef struct
>  {
>      int     wifi_rssi;
>      char    *wifi_name;
>      bool    wifi_connect;
>  } push;
>
>  int test_push(lua_State *L)
>  {
>    push p;
>
>    p.wifi_name = "wifi1";
>    p.wifi_connect = false;
>    p.wifi_rssi = 80;
>
>    // 结构体3个成员+1个结尾
>    lgui_table_map_s *map = (lgui_table_map_s *)calloc(4 + 1, sizeof(lgui_table_map_s));
>
>    map[0].key = (int)"rssi";
>    map[0].value = (void*)&p.wifi_rssi;
>    map[0].value_type = LUA_TNUMBER;
>
>    map[1].key = (int)"name";
>    map[1].value = (void*)p.wifi_name;
>    map[1].value_type = LUA_TSTRING;
>
>    map[2].key = (int)"connect";
>    map[2].value = (void*)&p.wifi_connect;
>    map[2].value_type = LUA_TBOOLEAN;
>
>    lgui_table_map_s *map_t = (lgui_table_map_s *)calloc(1 + 1, sizeof(lgui_table_map_s));
>    map_t[0].key = (int)"t1";
>    map_t[0].value = (void*)"t1_value";
>    map_t[0].value_type = LUA_TSTRING;
>    map_t[1].value_type = LUA_TNONE;
>
>    map[3].key = (int)NULL;
>    map[3].value = (void*)map_t;
>    map[3].value_type = LUA_TTABLE;
>
>    map[4].value_type = LUA_TNONE;
>
>    // lua table 结构如下
>    // {{ t1 = "t1_value" } , name = "wifi1" , rssi = 80.0 , connect = false }
>
>    lgui_push_table(L, map);
>
>    free(map);
>
>    return 1;
> }
>```

##### 2.4 LGUI_C_API bool lgui_dispaly_deinit(void);
**说明：** 关闭LGUI3显示

##### 2.5 LGUI_C_API bool lgui_dispaly_reinit(void);
**说明：** 重新打开LGUI3显示

<div style="page-break-after: always;"></div>

### 八、控件说明
> lgui framework中，所有控件公共属性如下，控件详细描述中，只会列举不同的参数。
> 属性命缩写规则：
> c     = color
> act   = action
> w     = width
> h     = height
> src   = source
> dest  = destination
> clk   = click
> dis   = disable
> chk   = check
> rel   = release
> slt   = select
> def   = default
> ctrl  = control
> dir   = direction
> cnt   = count
> rpt   = report

|属性|类型|默认值|必填(Y/N)|说明|
|--|--|--|--|--|
|type|string||Y|控件类型，bar/btn/img ...|
|position|table||Y|控件位置|
|position.x|number|0|N|绝对位置的X值|
|position.y|number|0|N|绝对位置的Y值|
|position.align|number||N|相对位置，参考utils/align.lua，若指定了该参数，则绝对位置的x,y会被忽略|
|position.alignx|number|0|N|相对位置对齐后的X偏移|
|position.aligny|number|0|N|相对位置对齐后的Y偏移|
|position.ref|string||N|相对位置的参考控件，若不指定，则参考父控件，若不存在父控件，则参考背景|
|name|string||N|控件名字，需在当前view中唯一，其他控件用该名字关联参考控件或父控件|
|attr|table||Y|控件属性|
|attr.hidden|boolean|false|N|是否隐藏|
|attr.touchable|boolean|true|N|控件是否开启触摸事件, 默认开启|
|attr.parent|string||N|指定父控件|

#### 1、bar
**说明：** 加载进度线形控件，用户可以通过set_data改变控件展示的进度
**参数：**
|属性|类型|默认值|必填(Y/N)|说明|
|--|--|--|--|--|
|attr.w|number||Y|进度条宽度|
|attr.h|number||Y|进度条高度|
|attr.src|number|0|N|进度条的起始值|
|attr.dest|number|100|N|进度条的结束值|
|attr.value|number||Y|进度条的当前值|
|attr.time|number|0|N|value产生变化时，动画渐进效果的持续时间|
|attr.c|number||Y|进度条背景颜色|
|attr.c_act|number||Y|进度条颜色|
|attr.round|boolean|false|N|是否圆角|

**示例：**
> view
> ```lua
> local view =
> {
>     {
>         type = "bar",
>         position = {x = 10, y = 20},
>         attr = {w = 200, h = 10, value = "{{bar_value}}", animi = true, time = 200, color = 0xff00ff00, color_act = 0xffff00ff, round = true}
>     }
> }
> 
> return view
> ```
> controller
> ```lua
> local controller =
> {
>     data = {bar_value = 10},
>     onshow = function() end,
> }
> 
> return controller
> ```

#### 2、btn
**说明：** 图片按钮控件
|属性|类型|默认值|必填(Y/N)|说明|
|--|--|--|--|--|
|attr.state|number|0|N|btn的状态，参考utils/btn.lua|
|attr.w|number|0|N|按键的固定宽,设置之后图片将居中显示,超出的部分将会被裁剪|
|attr.h|number|0|N|按键的固定高,设置之后图片将居中显示,超出的部分将会被裁剪|
|attr.chk|boolean|false|N|是否作为check btn，比如开关，或btn有选中状态，需初始化state状态|
|attr.res_rel|string||Y|按钮释放时的图片. 作为check btn时，非check状态下释放时的图片|
|attr.res_clk|string||N|按钮按下时的图片. 作为check btn时，非check状态下按下时的图片|
|attr.res_long|string||N|按钮长按时的图片|
|attr.res_dis|string||N|按钮禁用时的图片. 作为check btn时，非check状态下禁用时的图片|
|attr.res_chk_rel|string||N|作为check btn时，check状态下释放时的图片|
|attr.res_chk_clk|string||N|作为check btn时，check状态下按下时的图片|
|attr.res_chk_dis|string||N|作为check btn时，check状态下禁用时的图片|
|action|table||N|控件动作|
|action.bind|table||N|动作绑定列表|
|action.bind.up|string||N|释放时，绑定controller中的函数名|
|action.bind.down|string||N|按下时，绑定controller中的函数名|
|action.bind.long|string||N|长按时，绑定controller中的函数名|

**示例：**
> view
> ```lua
> local view =
> {
>    {
>        type = "btn",
>        position = {align = utils_align.IN_TOP_MID, aligny = 100},
>        attr = {res_rel = "button-1.png", res_clk = "button-2png"},
>    },
> }
> 
> return view
> ```

#### 3、btnm
**说明：** 按键矩阵控件，通常用来构造键盘
|属性|类型|默认值|必填(Y/N)|说明|
|--|--|--|--|--|
|attr.w|number||Y|控件宽度|
|attr.h|number||Y|控件高度|
|attr.h_content|number||Y|文字高度|
|attr.c|number||Y|背景颜色|
|attr.c_def|number||Y|按键常态颜色|
|attr.c_clk|number||N|按键按下的颜色|
|attr.c_dis|number||N|按键禁用的颜色|
|attr.c_chk|number||N|按键选中颜色|
|attr.c_content|number||Y|文本默认颜色|
|attr.c_content_clk|number||N|文本按下时的颜色|
|attr.c_content_dis|number||N|文本禁用时的颜色|
|attr.c_content_chk|number||N|文本选中时的颜色|
|attr.radius|number|| N | 按键的圆角半径 |
|attr.map|table||Y|矩阵文本，以"\n"作为换行分隔，""空字符为结尾|
|attr.map_ctrl|table||Y|矩阵文本控制，参考utils/btnm.lua|
|action|table||N|控件动作|
|action.bind|table||N|动作绑定列表|
|action.bind.up|string||N|释放时，绑定controller中的函数名|
|action.bind.down|string||N|按下时，绑定controller中的函数名|
|action.bind.long|string||N|长按时，绑定controller中的函数名|
|action.bind.change|string||N|按键矩阵触发完成时，绑定controller中的函数名|

**示例：**
> view
> ```lua
> local view =
> {
>    {
>        type = "btnm",
>        position = {align = utils_align.IN_TOP_MID, alignx = 0, aligny = 150},
>        attr =
>        {
>            w = lcd_w - 100, h = lcd_h - 150, h_content = 35,
>            -- 背景，按键常态，按键按下，按键禁用，按键选中的颜色
>            c = 0xffffffff, c_def = 0xffe0e0e0, c_clk = 0xffbfbfbf, c_dis = 0xff808080, >c_chk = 0xff000080,
>            -- 文本，文本按下，文本禁用，文本选中的颜色
>            c_content = 0xffff0000, c_content_clk = 0xff000000, c_content_dis = >0xff000000, c_content_chk = 0xff00ff00,
>            map =
>            {
>                "1","2","3","\n",
>                "4","5","6","\n",
>                "7","8","9","\n",
>                "*","0","#",
>            },
>            map_ctrl =
>            {
>                -- 矩阵第一行属性：禁用，可选中，按键抬起报告+长按不报告
>                1 | utils_btnm.DIS, 1 | utils_btnm.CHK, 1 | utils_btnm.RPT_UP | >utils_btnm.NO_RPT_LONG,
>                -- 矩阵第二行属性：选中，长按不报告，正常
>                1 | utils_btnm.SLT, 1 | utils_btnm.NO_RPT_LONG, 1,
>                -- 矩阵第三行属性：正常
>                1, 1, 1,
>                -- 矩阵第四行属性：隐藏，正常，正常
>                1 | utils_btnm.HIDDEN, 3, 1,
>            },
>        },
>        action = {bind = {change = "btnm_action"}},
>    }
> }
> 
> return view
> ```

#### 4、checkbox
**说明：** 复选框控件
|属性|类型|默认值|必填(Y/N)|说明|
|--|--|--|--|--|
|attr.h|number||Y|字体高度|
|attr.dis|boolean|false|N|是否禁用复选框|
|attr.chk|boolean|false|N|选中状态|
|attr.round|boolean|false|N|是否为圆形|
|attr.c_def|number||N|未选中状态的颜色|
|attr.c_slt|number||N|选中状态的颜色|
|attr.c_clk|number||N|按下时的颜色|
|attr.c_dis|number||N|禁用时的颜色|
|attr.c_content|number||Y|文本颜色|
|attr.content|string||Y|文本内容|
|attr.res|string||Y|复选框选中时显示的图片路径|
|attr.res_rel|string||Y|复选框中未选中时显示的图片路径|
|action|table||N|控件动作|
|action.bind|table||N|动作绑定列表|
|action.bind.up|string||N|释放时，绑定controller中的函数名|
|action.bind.down|string||N|按下时，绑定controller中的函数名|
|action.bind.change|string||N|复选框状态切换时，绑定controller中的函数名|

**示例：**
> view
> ```lua
> local view =
> {
>    {
>        type = "checkbox",
>        position = {align = utils_align.IN_TOP_MID, alignx = 0, aligny = 150},
>        attr =
>        {
>            h = 50, dis = false, chk = false, res = "yes.png",
>            c_def = 0xff808080, c_slt = 0xffffffff, c_clk = 0xffff0000, c_dis = 0xffffffff,
>            c_content = 0xff123456, content = "中国",
>        },
>    },
> }
> 
> return view
> ```

#### 5、clock
**说明：** 时钟控件
|属性|类型|默认值|必填(Y/N)|说明|
|--|--|--|--|--|
|attr.w|number||Y|控件宽|
|attr.h|number||Y|控件高|
|attr.res_bg|number||N|表盘背景图片|
|attr.res_sec|number||N|秒钟图片|
|attr.res_min|number||N|分针图片|
|attr.res_hour| number ||N|时针图片|
|attr.align|number|0|N|时间文字在控件范围中的位置，参考utils/clock.lua|
|attr.c|number||Y|时间文字的颜色|
|attr.fmt|string||Y|时间格式，遵循C strftime函数中的format规则|

> 使用图片进行时钟绘画时，图片的旋转中心为图片的底部中心点。
> 当 fmt 属性与 res_xxx 一起设置时，显示 fmt 格式的数字时钟，不会显示图片时钟。两种不能共存。

**示例：**
> view
> ```lua
> local view =
> {
>    {
>        type = "checkbox",
>        position = {align = utils_align.IN_TOP_MID, alignx = 0, aligny = 150},
>        attr =
>        {
>            h = 50, dis = false, chk = false, res = "yes.png",
>            c_def = 0xff808080, c_slt = 0xffffffff, c_clk = 0xffff0000, c_dis = 0xffffffff,
>            c_content = 0xff123456, content = "中国",
>        },
>    },
> }
> 
> return view
> ```

#### 6、img
**说明：** 图片控件
|属性|类型|默认值|必填(Y/N)|说明|
|--|--|--|--|--|
|attr.w|number|0|N|图片宽度，若该宽度不等于图片原始宽度，则会自动缩放，<=0时不缩放|
|attr.h|number|0|N|图片高度，若该高度不等于图片原始高度，则会自动缩放，<=0时不缩放|
|attr.offset_x|number| 0 |N|图片x轴上偏移之后再显示, >0:向右偏移 <0:向左偏移|
|attr.offset_x|number| 0 |N|图片y轴上偏移之后再显示, >0:向下偏移 <0:向上偏移|
|attr.width|number| -1 |N|图片实际显示的宽度,小于图片宽度, 则切割显示, 小于0时, 不切割|
|attr.height|number| -1 |N|图片实际显示的高度,小于图片高度, 则切割显示，小于0时, 不切割|
|attr.res|string||Y|图片文件|

**示例：**
> view
> ```lua
> local view =
> {
>    {
>        type = "img",
>        position = {align = utils_align.IN_TOP_MID, alignx = -200, aligny = 150},
>        attr = {w = 120, h = 100,res = "62.png"}
>    },
> }
> 
> return view
> ```

#### 7、list
**说明：** 列表控件
|属性|类型|默认值|必填(Y/N)|说明|
|--|--|--|--|--|
|attr.w|number||Y|控件宽度|
|attr.h|number||Y|控件高度|
|attr.slidepos|number||Y|控件初始滑动位置|
|attr.mode|number||N|list 右边滚动条的模式|
|attr.radius|number||N|list 背景圆角半径|
|attr.radius_btn|number||N|list内部按键的圆角半径。|
|attr.select|number||N|list单选模式下,当前选中的选项.(取值从1开始)|
|attr.single|boolean||N|是否为单选模式 (true:单选 false:多选)|
|attr.h_line|number||Y|列表中，每一行的高度(滑动方位为纵向时生效,生效时必填)|
|attr.w_line|number||Y|列表中，每一行的宽度(滑动方位为横向时生效,生效时必填)|
|attr.dir|number|0|N|列表滑动的方向, 可设值参考 utils/list.lua 的定义 |
|attr.c|number||N|列表背景颜色|
|attr.c_def|number||N|每行作为一个按键时的颜色|
|attr.c_clk|number||N|按下时的颜色|
|attr.c_chk|number||N|选中时的颜色|
|attr.c_bar|number||N|页滚动条颜色|
|attr.c_edge|number||N|当列表到达最高或最低位置时,显示类似圆圈效果的颜色|
|attr.chk|boolean|false|N|是否开启选中模式|
|attr.keep|boolean|false|N|是否锁定列表，当set_data更新列表成员时，保存list当前位置不变|
|attr.map|table||Y||
|attr.map_ctrl|table||Y|根据n决定list中一行有多少个成员，即n==列|
|attr.map_ctrl[n].type|number||N|参考utils/list.lua|
|attr.map_ctrl[n].x|number||N|第n列位置的x值|
|attr.map_ctrl[n].y|number||N|第n列位置的y值|
|attr.map_ctrl[n].w|number||N|第n列的宽度|
|attr.map_ctrl[n].h|number||N|第n列的高度|
|attr.map_ctrl[n].content_height|number||N||
|attr.map_ctrl[n].content_algin|number||N||
|attr.map_ctrl[n].content_mode|number||N||
|attr.map_ctrl[n].color|number||N||
|action|table||N|控件动作|
|action.bind|table||N|动作绑定列表|
|action.bind.up|string||N|释放时，绑定controller中的函数名|
|action.bind.down|string||N|控件按键按下时，绑定controller中的函数名|
|action.bind.long|string||N|控件按键长按时，绑定controller中的函数名|
|action.bind.change|string||N|控件滑动时，绑定controller中的函数名|

**示例：**
> view
> ```lua
> local view =
> {
>     {
>         type = "",
>         position = {x = 0, y = 0},
>     }
> }
> 
> return view
> ```

#### 8、loading
**说明：** 加载进度圆形控件
|属性|类型|默认值|必填(Y/N)|说明|
|--|--|--|--|--|
|w|number||Y|控件宽度（外圆直径）|
|w_inner|number||Y|控件宽度（内圆直径）|
|src|number|0|Y|起始角度|
|dest|number|0|Y|结束角度|
|value|number|0|Y|当前角度|
|c|number||N|背景颜色|
|c_bg|number||N|进度条背景颜色|
|c_act|number||N|进度条填充颜色|

**示例：**
> view
> ```lua
> local view =
> {
>    {
>        type = "loading",
>        position = {align = utils_align.IN_TOP_MID, alignx = 0, aligny = 150},
>        attr = {w = 100, w_inner = 10, src = 0, dest = 360, value = 50, c = 0xff808080, c_bg = 0xff808080, c_act = 0xff00ee00},
>    }
> }
> 
> return view
> ```

#### 9、mark
**说明：** 蒙层控件
|属性|类型|默认值|必填(Y/N)|说明|
|--|--|--|--|--|
|w|number||Y|蒙层宽度|
|h|number||Y|蒙层高度|
|c|number||Y|蒙层颜色|
|radius|number||N|圆角半径|
|keep|number|false|N|是否保持当前配置的位置，而不是显示的最上面|
|action|table||N|控件动作|
|action.bind|table||N|动作绑定列表|
|action.bind.up|string||N|释放时，绑定controller中的函数名|
|action.bind.down|string||N|按下时，绑定controller中的函数名|
|action.bind.long|string||N|长按时，绑定controller中的函数名|

**示例：**
> view
> ```lua
> local view =
> {
>    {
>        type = "mark",
>        position = {align = utils_align.IN_TOP_MID},
>        attr = {w = get_lcd_hor_res(), h = get_lcd_ver_res(), c = 0x80808080},
>        action = {bind = {up = "mark_action"}},
>    },
> }
> 
> return view
> ```

#### 10、mbox
**说明：** 消息框控件
|属性|类型|默认值|必填(Y/N)|说明|
|--|--|--|--|--|
|attr.w|number||Y|控件宽度|
|attr.h|number||Y|控件高度|
|attr.h_title|number||Y|消息框标题文字高度|
|attr.h_body|number||Y|消息框正文文字高度|
|attr.h_btn|number||N|消息框按键高度|
|attr.h_content|number||N|消息框按键文字高度|
|attr.c_bg|number||N|消息框背景颜色|
|attr.c_title|number||N|消息框标题文字颜色|
|attr.c_body|number||N|消息框正文文字颜色|
|attr.c_content|number||N|消息框按键文字颜色|
|attr.c_btn_clk|number||N|消息框按键按下时的颜色|
|attr.c_btn_def|number||N|消息框按键抬起时的颜色|
|attr.time|number||N|消息框定时关闭时间|
|attr.title|number||N|消息框标题文本|
|attr.body|number||N|消息框正文文本|
|attr.content|table||N|消息框按键矩阵|
|action|table||N|控件动作|
|action.bind|table||N|动作绑定列表|
|action.bind.up|string||N|释放时，绑定controller中的函数名|
|action.bind.down|string||N|按下时，绑定controller中的函数名|
|action.bind.change|string||N|控件触发时，绑定controller中的函数名|

**示例：**
> view
> ```lua
> local view =
> {
>    {
>
>        type = "mbox",
>        position = {align = utils_align.IN_TOP_MID, alignx = 0, aligny = 150},
>        attr =
>        {
>            w = 400, h = 200, h_title = 20, h_body = 25, h_content = 30, h_btn = 60,
>            c_bg = 0xffffffff, c_title = 0xff000000, c_body = 0xff000000,
>            c_btn_clk = 0xff808080, c_btn_def = 0xffff0000, c_content = 0xff000000,
>            title = "mbox title", body = "mbox body", time = 2000,
>            content = {"OK", "CANCEL", },
>        },
>        action = {bind = {change = "mbox_action"}}
>    },
> }
> 
> return view
> ```

#### 11、text
**说明：** 文本控件
|属性|类型|默认值|必填(Y/N)|说明|
|--|--|--|--|--|
|attr.w|number||Y|控件宽度|
|attr.h|number||Y|文本高度|
|attr.height|number| -1 |Y|控件高度,不设置或小于0时，控件会根据文本高度自动调节控件高度|
|attr.content|string||Y|文本内容|
|attr.mode|number||N|文本模式，滚动/裁剪等等，参考utils/text.lua|
|attr.align|number||N|该控件范围内的文本对齐方式，参考utils/text.lua|
|attr.c|number||N|文本颜色|
|attr.c_bg|number||N|控件的背景颜色|
|attr.radius|number||N|控件的背景圆角半径|
|attr.dir|number||N|文本方向，参考utils/text.lua|



**示例：**
> view
> ```lua
> local view =
> {
>    {
>        type        = "text",
>        position    = {align = utils_align.IN_TOP_MID, alignx = -250, aligny = 150},
>        attr        = {content = "保持控件大小，超出部分显示省略号", w = 200, h = 30, color = 0xff00ff00, mode = utils_text.MODE_DOT},
>    },
> }
> 
> return view
> ```

#### 12、roller
**说明：** 滚动选择器控件
|属性|类型|默认值|必填(Y/N)|说明|
|--|--|--|--|--|
|attr.w|number||Y|控件宽度|
|attr.h|number||Y|控件高度|
|attr.content|string||N|文本集合，每行使用"\n"分隔|
|attr.c|number||N|背景颜色|
|attr.c_slt|number||N|选中行的背景颜色|
|attr.c_content|number||N|未选中行的文本颜色|
|attr.c_slt_content|number||N|选中行的文本颜色|
|attr.opt|number||N|选中行文字对应文本集合中的序号|
|attr.align|number||N|文本对齐方式，参考utils/roller.lua|
|attr.cnt|number||N|控件中显示文本的行数，当文本集合中的行数 > count时，滚动选择|
|attr.mode|number||N|控件模式，参考utils/roller.lua|
|action|table||N|控件动作|
|action.bind|table||N|动作绑定列表|
|action.bind.up|string||N|释放时，绑定controller中的函数名|
|action.bind.down|string||N|按下时，绑定controller中的函数名|
|action.bind.change|string||N|选项改变时，绑定controller中的函数名|

**示例：**
> view
> ```lua
> local view =
> {
>    {
>        type = "roller",
>        position = {align = utils_align.IN_TOP_MID, alignx = 0, aligny = 150},
>        attr = {
>                w = 300, h = 20, c = 0x80808080, c_slt = 0xFFFFFF00, c_content = 0xFF000000, c_slt_content = 0xFF0000FF,
>                opt = 0, align = utils_roller.ALIGN_CENTER, cnt = 5, mode = utils_roller.MODE_NORMAL,
>                content = "roller1\nroller2\nroller3\nroller4\nroller5\nroller6"},
>        action = {bind = {change = function(v, value) log(3, "select index: " .. value) end}}
>    },
> }
> 
> return view
> ```

#### 13、slider
**说明：** 滑块选择器控件
|属性|类型|默认值|必填(Y/N)|说明|
|--|--|--|--|--|
|attr.w|number||Y|控件宽度|
|attr.h|number||Y|控件高度|
|attr.c|number||N|控件背景颜色|
|attr.c_act|number||N|已选择区域颜色|
|attr.c_knob|number||N|滑块旋钮颜色|
|attr.round|boolean|false|N|是否圆角|
|attr.spin|boolean|false|N|是否只能使用滑动，不响应点击事件|
|attr.min|number||N|滑块控件的最小值|
|attr.max|number||N|滑块控件的最大值|
|attr.value|number||N|滑块控件的当前值|
|attr.left|number||N|双按钮模式有效|
|attr.radius|number||N|圆角半径|
|attr.mode|number||N|滑块选择器模式，参考utils/slider.lua|
|action|table||N|控件动作|
|action.bind|table||N|动作绑定列表|
|action.bind.up|string||N|释放时，绑定controller中的函数名|
|action.bind.down|string||N|按下时，绑定controller中的函数名|
|action.bind.change|string||N|滑块数值改变时，绑定controller中的函数名|

**示例：**
> view
> ```lua
> local view =
> {
>    {
>        type = "slider",
>        position = {align = utils_align.IN_TOP_MID, alignx = 0, aligny = 150},
>        attr = {w = 300, h = 20, c = 0x80808080, c_act = 0xFFFFFF00, c_knob = 0xFFFFFFFF, round = true,
>                spin = false, min = 0, max = 100, value = 50, mode = utils_slider.MODE_NORMAL},
>        action = {bind = {change = function(v, value) log(3, "now number: " .. value) set_data({slider_text = value}) end}}
>    },
> }
> 
> return view
> ```

#### 14、spinner
**说明：** 圆形旋转器控件
|属性|类型|默认值|必填(Y/N)|说明|
|--|--|--|--|--|
|attr.w|number||Y|外圈直径|
|attr.w_inner|number||Y|内圈直径|
|attr.angle|number||Y|角度|
|attr.c|number||Y|颜色|
|attr.c_bg|number||Y|背景颜色|
|attr.time|number||Y|旋转周期|
|attr.dir|number|0|N|旋转方向，参考utils/spinner.lua|
|attr.mode|number||N|控件模式，参考utils/spinner.lua|

**示例：**
> view
> ```lua
> local view =
> {
>    {
>        type = "spinner",
>        position = {align = utils_align.IN_TOP_MID, alignx = 0, aligny = 150},
>        attr = { w = 80, w_inner = 60, angle = 20, c = 0xFFFF00FF, time = 1000, c_bg = 0x80808080,
>                dir = utils_spinner.DIR_FORWARD, mode = utils_spinner.MODE_FILLSPIN}
>    },
> }
> 
> return view
> ```

#### 15、page
**说明：** 页控件
|属性|类型|默认值|必填(Y/N)|说明|
|--|--|--|--|--|
|attr.w|number||Y|控件宽度|
|attr.h|number||Y|控件高度|
|attr.c|number||N|页背景颜色|
|attr.c_bar|number||N|页滚动条颜色|
|attr.round|boolean||N|是否使用圆角|
|attr.radius|number||N|圆角半径|
|attr.slideposx| number|| N | 当前page滑动的位置x(一般为负数) |
|attr.slideposy| number|| N | 当前page滑动的位置y(一般为负数) |
|attr.inner| number||N|当使用layout时，控件与控件之间的间距|
|attr.flash|boolean|false|N|是否开启边缘动画|
|attr.layout|number||N|页布局，参考utils/page.lua|
|attr.mode|number||N|页模式，参考utils/page.lua|

**示例：**
> view
> ```lua
> local view =
> {
>    {
>        type        = "page",
>        position    = {align = utils_align.IN_TOP_MID, alignx = 0, aligny = 150},
>        attr        = {w = 600, h = 400, c = 0xFFFFFFFF, c_bar = 0x80808080, layout = utils_page.LAYOUT_COLUMN_MID, 
>                        mode = utils_page.MODE_AUTO},
>        name        = "page0"
>    },
>    {
>        type = "img",
>        position = {},
>        attr = {res = "gugong.jpg", w = 400, h = 300, parent = "page0"}
>    },
>    {
>        type        = "text",
>        position    = {align = utils_align.IN_TOP_MID, alignx = 0, aligny = 540},
>        attr        = {parent = "page0", w = 530, h = 30, color = 0xff00ff00, align = utils_text.ALIGN_LEFT, mode = utils_text.MODE_BREAK,
>                        content = "故宫又称紫禁城。中国古代讲究“天人合一”的规划理念，用天上的星辰与都城规划相对应，以突出政权的合法性和皇权的至高性。天帝居住在紫微宫，而人间皇帝自诩为受命于天的“天子”，其居所应象征紫微宫以与天帝对应，《后汉书》载“天有紫微宫，是上帝之所居也。王者立宫，象而为之”。紫微、紫垣、紫宫等便成了帝王宫殿的代称。由于封建皇宫在古代属于禁地，常人不能进入，故称为“紫禁”。明朝初期同外禁垣一起统称“皇城”，大约明朝中晚期，与外禁垣区分开来，即宫城叫“紫禁城”，外禁垣为“皇城”。", },
>    },
> }
> 
> return view
> ```

<!-- #### 16、picker
**说明：** 圆形选择器控件
|属性|类型|默认值|必填(Y/N)|说明|
|--|--|--|--|--|
|attr.mode|number||Y||
|attr.c|number||Y||

**示例：**
> view
> ```lua
> local view =
> {
>     {
>         type = "",
>         position = {x = 0, y = 0},
>     }
> }
> 
> return view
> ``` -->

#### 16、textarea
**说明：** 文本输入器控件
|属性|类型|默认值|必填(Y/N)|说明|
|--|--|--|--|--|
|attr.w|number||Y|控件宽度|
|attr.h|number||Y|控件高度|
|attr.h_content|number||Y|文本高度|
|attr.curor|number||Y|光标显示时间，0不显示光标|
|attr.pwd|number||N|大于0启用密码模式，该参数决定了明文显示时常，超过该时间后，密码将被隐藏|
|attr.max|number||N|文本最大长度|
|attr.single|boolean|false|N|是否仅显示一行|
|attr.align|number||N|文本对齐方式，参考utils/textarea.lua|
|attr.c_content|number||N|文本颜色|
|attr.c_preset|number||N|默认文本content_blank的颜色|
|attr.c_bar|number||N|滚动条的颜色|
|attr.c_cursor|number||N|光标颜色|
|attr.c|number||N|背景颜色|
|attr.content|string||N|文本内容|
|attr.content_blank|string||N|文本内容为空时，显示的默认文本|
|attr.content_filter|string||N|过滤字符，非content_filter将被忽略|
|action|table||N|控件动作|
|action.bind|table||N|动作绑定列表|
|action.bind.up|string||N|释放时，绑定controller中的函数名|
|action.bind.down|string||N|按下时，绑定controller中的函数名|
|action.bind.change|string||N|文本改变时，绑定controller中的函数名|

**示例：**
> view
> ```lua
> local view =
> {
>    {
>        type = "textarea",
>        position = {align = utils_align.IN_TOP_MID, alignx = -200, aligny = 150},
>        attr = {w = get_lcd_hor_res()/2, h_content = 30, curor = 1000, max = 6, align = 1, pwd = 500,
>                c_content = 0xFF000000, c = 0xFFFFFFFF, content = "123456",c_preset = 0xFF808080,
>                content_blank = "plase input password", single = true}, 
>        action      = {bind = {change = "ta_change"}}
>    },
> }
> 
> return view
> ```

#### 17、qrcode
**说明：** 二维码控件
|属性|类型|默认值|必填(Y/N)|说明|
|--|--|--|--|--|
|attr.ver|number||Y|二维码的版本|
|attr.w|number||Y|二维码像素之间的距离|
|attr.eclevel|number||Y|二维码容错等级(0-3)|
|attr.content|string||Y|二维码中的内容|

> 二维码图片的宽度为 ((ver - 1) * 4 + 21 + w * 2) * w 

**示例：**
> view
> ```lua
> local view =
> {
>    {
>        type = "qrcode",
>        position = {align = utils_align.IN_TOP_MID, alignx = 0, aligny = 150},
>        attr = {ver = 4, w = 5, content = "hello world"}
>    }
> }
> 
> return view
> ```

#### 18、tab
**说明：** 选项卡控件
|属性|类型|默认值|必填(Y/N)|说明|
|--|--|--|--|--|
|attr.w|number||Y|控件宽度|
|attr.h|number||Y|控件高度|
|attr.c_bar|number||N|页滚动条颜色|
|attr.anim_time|number|100|N|tab控件切换到下个tab所用的动画时间(ms)|
|attr.treshold|number|attr.w/16|N|tab控件滑动时切换到下个界面的阈值(指最少拖动treshold距离切换到下个tab)|
|attr.tab|number||N|当前显示的tab编号，从0开始|
|attr.mode|number||N|tab编号的显示位置，参考utils/tab.lua|

**示例：**
> view
> ```lua
> local view =
> {
>   {
>        type        = "tab",
>        position    = {align = utils_align.IN_TOP_MID, alignx = 0, aligny = 150},
>        attr        = {w = get_lcd_hor_res(), h = get_lcd_ver_res() - 150,},
>        action      = {bind = {up = "tab_up", down = "tab_down", change = "tab_act"}},
>        name        = "tab_bg"
>    },
>    {
>        type        = "tab",
>        position    = {},
>        attr        = {parent = "tab_bg"},
>        name        = "tab0"
>    },
>    {
>        type        = "tab",
>        position    = {},
>        attr        = {parent = "tab_bg"},
>        name        = "tab1"
>    },
>    {
>        type        = "img",
>        position    = {x = 100, y = 0},
>        attr        = {res = "62.png", w = 200, h = 200, parent = "tab0"},
>    },
>    {
>        type        = "img",
>        position    = {x = 100, y = 0},
>        attr        = {res = "62.png", w = 200, h = 200, parent = "tab1"},
>    },
> }
> 
> return view
> ```

#### 19、vdec
**说明：** 视频解码控件
|属性|类型|默认值|必填(Y/N)|说明|
|--|--|--|--|--|
|attr.w|number||Y|控件宽度|
|attr.h|number||Y|控件高度|

**示例：**
> view
> ```lua
> local view =
> {
>    {
>        type = "vdec",
>        position = {align = utils_align.IN_TOP_MID, alignx = 0, aligny = 150},
>        attr = {w = get_lcd_hor_res() / 2, h =get_lcd_ver_res() / 2}
>    }
> }
> 
> return view
> ```

#### 20、blank
**说明：** 空白控件，通常用来做任意位置响应
|属性|类型|默认值|必填(Y/N)|说明|
|--|--|--|--|--|
|attr.w|number||Y|控件宽度|
|attr.h|number||Y|控件高度|
|attr.c_rel|number||Y|按钮释放时的颜色,作为check btn时，非check状态下释放时的颜色|
|attr.c_clk|number||Y|按钮按下时的颜色. 作为check btn时，非check状态下按下时的颜色|
|attr.c_dis|number||Y|按钮禁用时的颜色. 作为check btn时，非check状态下禁用时的颜色|
|attr.c_chk_rel|number||Y|作为check btn时，check状态下释放时的颜色|
|attr.c_chk_clk|number||Y|作为check btn时，check状态下按下时的颜色|
|attr.c_chk_dis|number||Y|作为check btn时，check状态下禁用时的颜色|
|attr.radius|number||Y|圆角半径|
|attr.state|number||Y|btn的状态，参考utils/btn.lua|
|attr.chk|number||Y|是否作为check btn|
|attr.dis|boolean|false|N|是否禁用按键|
|action|table||N|控件动作|
|action.bind|table||N|动作绑定列表|
|action.bind.up|string||N|释放时，绑定controller中的函数名|
|action.bind.down|string||N|按下时，绑定controller中的函数名|
|action.bind.long|string||N|长按时，绑定controller中的函数名|

**注：** w, h属性的特殊值说明
|值|说明|
|--|--|
|-1|紧密包裹子控件,根据子控件的最大宽高显示|
|-2|根据父控件缩放大小,对齐父控件的边缘示|
|-3|先根据父控件缩放大小,对齐父控件的边缘, 如果子控件有对象超过则扩充大小|

**示例：**
> view
> ```lua
> local view =
> {
>    {
>        type = "blank",
>        position = {align = utils_align.IN_TOP_MID, alignx = 0, aligny = 220 + math.floor(get_lcd_ver_res() / 3)},
>        attr = {w = math.floor(get_lcd_hor_res() / 3), h =get_lcd_ver_res() / 3,},
>        action = {bind = {up = function() log(3, "blank2 up") end}}
>    },
> }
> 
> return view
> ```

#### 21、swiper
**说明：** 
|属性|类型|默认值|必填(Y/N)|说明|
|--|--|--|--|--|
|attr.w|number||Y|控件宽度|
|attr.h|number||Y|控件高度|
|attr.h_content|number||N|文本高度|
|attr.c|number||Y|文本颜色|
|attr.x_area|number||N|滚动区域x位置|
|attr.y_area|number||N|滚动区域y位置|
|attr.w_area|number||N|滚动区域宽|
|attr.h_area|number||N|滚动区域高|
|attr.type|number||N|控件类型|
|attr.mode|number||N|控件模式，参考utils/swiper.lua|
|attr.value|number||N|当前显示的编号|
|attr.cnt|number||N|显示个数|
|attr.slt|boolean|false|N|是否隐藏选中的选项|
|attr.map|table||Y||
|action|table||N|控件动作|
|action.bind|table||N|动作绑定列表|
|action.bind.up|string||N|释放时，绑定controller中的函数名|
|action.bind.down|string||N|按下时，绑定controller中的函数名|
|action.bind.change|string||N|选项改变时，绑定controller中的函数名|

**示例：**
> view
> ```lua
> local view =
> {
>    {
>        type        = "swiper",
>        position    = {align = utils_align.IN_TOP_MID, alignx = 0, aligny = 150},
>        attr        = {w = 1024, h = 450, x_area = 0, y_area = 100, w_area = 1024, h_area = 250, 
>                       type = utils_swiper.TYPE_IMG, value = 0, cnt = 5, slt = false,
>                       map = {
>                            "setting/WiFi-2.png",
>                            "setting/language-2.png",
>                            "setting/date-2.png",
>                            "setting/message-2.png",
>                            "setting/system-2.png",
>                            "setting/volue-2.png",
>                            "setting/delall-2.png",
>                            "setting/key-2.png",
>                            "setting/color-2.png",
>                            "setting/ring-2.png",
>                        }},
>    },
> }
> 
> return view
> ```

#### 22、shared
**说明：** 
|属性|类型|默认值|必填(Y/N)|说明|
|--|--|--|--|--|
|attr.file|number||Y|share 控件对应的lua文件名字|
|attr.func|number||Y|share lua文件中的函数名|
|attr.obj|number||N|对应函数的传参|

**示例：**
> view
> ```lua
> local view =
> {
>    {
>        type = "shared",
>        attr = {file = "shared1", func = "back"},
>    },
> }
> 
> return view
> ```

#### 23、chart
**说明：** 
|属性|类型|默认值|必填(Y/N)|说明|
|--|--|--|--|--|
|attr.w|number||Y|控件宽度|
|attr.h|number||Y|控件高度|
|attr.h_content|number||N|文本高度|
|attr.w_left|number||N|左边的空白宽度, 用于显示左边的刻度显示|
|attr.count|number||N|显示的点数|
|attr.x_options|number||N|x轴刻度显示模式|
|attr.y_options|number||N|y轴刻度显示模式|
|attr.grad|boolean||N|是否显示折线图下方的渐变色|
|attr.c_bg|number||N|背景颜色|
|attr.c_dotline|number||N|分割线的颜色|
|attr.c_content|number||N|文本颜色|
|attr.count|number||N|显示的点数|
|attr.y_min|number||N|y轴刻度的最小值|
|attr.y_max|number||N|y轴刻度的最大值|
|attr.mode|number||N|显示模式|
|attr.division|number||N|分割线的模式|
|attr.x_value|string||N|x轴刻度显示的文本|
|attr.y_value|string||N|x轴刻度显示的文本|
|attr.map|table||N|图表数据,第一个数据为颜色|

**示例：**
> view
> ```lua
> local view =
> {
>    {
>        type = "chart",
>        position = {align = utils_align.IN_TOP_MID, alignx = 0, aligny = 150},
>        attr = {w = 800, h = 400, h_content = 20, w_left = 50, count = 9, c_bg = 0x80808080, c_dotline = 0xFFFF00FF, c_content = 0xFF00FFFF,
>                x_options = utils_chart.SKIP_LAST, x_value = "1\n2\n3\n4\n5\n6\n7\n8\n9",
>                y_options = utils_chart.DRAW_LAST, y_min = 0, y_max = 100, y_value = "100\n90\n80\n70\n60\n50\n40\n30\n20\n10\n0",
>                mode = utils_chart.MODE_LINE, division = utils_chart.DIV_ALL,
>                map = {
>                       {0xFF434343, 10, 20, 30, 40, 50, 60, 70, 80, 90},
>                       {0xFFFFFF00, 90, 80, 70, 60, 50, 40, 30, 20, 10},
>                       {0xFF00FFFF, 12, 85, 54, 65, 23, 43, 25, 85, 23}
>                    }
>            }
>    }
> }
> 
> return view
> ```

#### 24、combobox
**说明：** 
|属性|类型|默认值|必填(Y/N)|说明|
|--|--|--|--|--|
|attr.w|number||Y|控件宽度|
|attr.h|number||Y|控件高度|
|attr.h_max|number||Y|选择列表的最大高度|
|attr.h_content|number||N|文本高度|
|attr.dir|number||N|选择列表的位置|
|attr.c|number||N|背景颜色|
|attr.c_slt|number||N|选中行的背景颜色|
|attr.c_bar|number||N|滚动条的颜色|
|attr.c_clk|number||N|按下时的颜色|
|attr.c_content|boolean||N|文本颜色|
|attr.opt|number||N|选中行文字对应文本集合中的序号|
|attr.content|number||N|文本集合，每行使用"\n"分隔|
|attr.res|number||N|另一侧的图片|
|action|table||N|控件动作|
|action.bind|table||N|动作绑定列表|
|action.bind.change|string||N|选项改变时，绑定controller中的函数名|

**示例：**
> view
> ```lua
> local view =
> {
>    {
>        type = "combobox",
>        position = {align = utils_align.IN_TOP_LEFT, alignx = 100, aligny = 150},
>        attr = {w = 200, h = 50, h_max = 400, h_content = 30, c_content = 0xFFFFFFFF, dir = utils_combobox.DIR_DOWN, 
>            c = 0xFF808080, c_slt = 0xff00ff00,c_bar = 0x00000000, c_clk = 0xff0000ff, res = "down.png",
>            content = "Apple\nBanana\nOrange\nMelon\nGrape\nRaspberry", opt = 3
>        },
>        action = {bind = {change = function(v, value, str) log(3, "select index: " .. value .." str:".. str) end}},
>    },
> }
> 
> return view
> ```

#### 25、drawer
**说明：** 
|属性|类型|默认值|必填(Y/N)|说明|
|--|--|--|--|--|
|attr.act_h|number||N|触发区域的高度|
|attr.show_h|number||N|当前显示的高度|
|attr.dir|number||N|滑动方向, 可取值参考 utils/drawer.lua|

> 注: 使用当前控件时, 屏幕上面30像素点的范围内不会触发其他控件


#### 26、aimg
**说明：** 
|属性|类型|默认值|必填(Y/N)|说明|
|--|--|--|--|--|
|attr.times|number| -1 |Y|循环次数, -1时无限循环|
|attr.interval|number||Y|切换图片的间隔|
|attr.map|table||Y|图片路径合集|
**示例：**
> view
> ```lua
> local = {
>    {
>        type = "aimg",
>        position = {align = utils_align.CENTER},
>        attr = {
>            times = -1,
>            interval = 100,
>            map = {
>                "aimg/aimg_1.png",
>                "aimg/aimg_2.png",
>                "aimg/aimg_3.png",
>                "aimg/aimg_4.png",
>                "aimg/aimg_5.png",
>                "aimg/aimg_6.png",
>                "aimg/aimg_7.png",
>                "aimg/aimg_8.png",
>            }
>        },
>    },
> }
>
> return view
>```