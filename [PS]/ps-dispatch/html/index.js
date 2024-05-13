(function(){const t=document.createElement("link").relList;if(t&&t.supports&&t.supports("modulepreload"))return;for(const i of document.querySelectorAll('link[rel="modulepreload"]'))l(i);new MutationObserver(i=>{for(const s of i)if(s.type==="childList")for(const r of s.addedNodes)r.tagName==="LINK"&&r.rel==="modulepreload"&&l(r)}).observe(document,{childList:!0,subtree:!0});function n(i){const s={};return i.integrity&&(s.integrity=i.integrity),i.referrerPolicy&&(s.referrerPolicy=i.referrerPolicy),i.crossOrigin==="use-credentials"?s.credentials="include":i.crossOrigin==="anonymous"?s.credentials="omit":s.credentials="same-origin",s}function l(i){if(i.ep)return;i.ep=!0;const s=n(i);fetch(i.href,s)}})();function q(){}const Vt=e=>e;function Ht(e,t){for(const n in t)e[n]=t[n];return e}function Et(e){return e()}function He(){return Object.create(null)}function Z(e){e.forEach(Et)}function De(e){return typeof e=="function"}function ie(e,t){return e!=e?t==t:e!==t||e&&typeof e=="object"||typeof e=="function"}function Yt(e){return Object.keys(e).length===0}function Nt(e,...t){if(e==null)return q;const n=e.subscribe(...t);return n.unsubscribe?()=>n.unsubscribe():n}function z(e,t,n){e.$$.on_destroy.push(Nt(t,n))}function Gt(e,t,n,l){if(e){const i=Dt(e,t,n,l);return e[0](i)}}function Dt(e,t,n,l){return e[1]&&l?Ht(n.ctx.slice(),e[1](l(t))):n.ctx}function zt(e,t,n,l){if(e[2]&&l){const i=e[2](l(n));if(t.dirty===void 0)return i;if(typeof i=="object"){const s=[],r=Math.max(t.dirty.length,i.length);for(let a=0;a<r;a+=1)s[a]=t.dirty[a]|i[a];return s}return t.dirty|i}return t.dirty}function Wt(e,t,n,l,i,s){if(i){const r=Dt(t,n,l,s);e.p(r,i)}}function qt(e){if(e.ctx.length>32){const t=[],n=e.ctx.length/32;for(let l=0;l<n;l++)t[l]=-1;return t}return-1}function Mt(e,t,n){return e.set(n),t}function Ye(e){const t=typeof e=="string"&&e.match(/^\s*(-?[\d.]+)([^\s]*)\s*$/);return t?[parseFloat(t[1]),t[2]||"px"]:[e,"px"]}const St=typeof window<"u";let Jt=St?()=>window.performance.now():()=>Date.now(),Oe=St?e=>requestAnimationFrame(e):q;const ae=new Set;function At(e){ae.forEach(t=>{t.c(e)||(ae.delete(t),t.f())}),ae.size!==0&&Oe(At)}function Kt(e){let t;return ae.size===0&&Oe(At),{promise:new Promise(n=>{ae.add(t={c:e,f:n})}),abort(){ae.delete(t)}}}function d(e,t){e.appendChild(t)}function It(e){if(!e)return document;const t=e.getRootNode?e.getRootNode():e.ownerDocument;return t&&t.host?t:e.ownerDocument}function Qt(e){const t=g("style");return Xt(It(e),t),t.sheet}function Xt(e,t){return d(e.head||e,t),t.sheet}function L(e,t,n){e.insertBefore(t,n||null)}function S(e){e.parentNode&&e.parentNode.removeChild(e)}function _e(e,t){for(let n=0;n<e.length;n+=1)e[n]&&e[n].d(t)}function g(e){return document.createElement(e)}function j(e){return document.createTextNode(e)}function M(){return j(" ")}function x(){return j("")}function Q(e,t,n,l){return e.addEventListener(t,n,l),()=>e.removeEventListener(t,n,l)}function _(e,t,n){n==null?e.removeAttribute(t):e.getAttribute(t)!==n&&e.setAttribute(t,n)}function Zt(e){return Array.from(e.childNodes)}function B(e,t){t=""+t,e.data!==t&&(e.data=t)}function J(e,t,n){e.classList[n?"add":"remove"](t)}function xt(e,t,{bubbles:n=!1,cancelable:l=!1}={}){const i=document.createEvent("CustomEvent");return i.initCustomEvent(e,n,l,t),i}const ke=new Map;let Ee=0;function en(e){let t=5381,n=e.length;for(;n--;)t=(t<<5)-t^e.charCodeAt(n);return t>>>0}function tn(e,t){const n={stylesheet:Qt(t),rules:{}};return ke.set(e,n),n}function Ge(e,t,n,l,i,s,r,a=0){const f=16.666/l;let o=`{
`;for(let $=0;$<=1;$+=f){const y=t+(n-t)*s($);o+=$*100+`%{${r(y,1-y)}}
`}const u=o+`100% {${r(n,1-n)}}
}`,c=`__svelte_${en(u)}_${a}`,m=It(e),{stylesheet:p,rules:b}=ke.get(m)||tn(m,e);b[c]||(b[c]=!0,p.insertRule(`@keyframes ${c} ${u}`,p.cssRules.length));const N=e.style.animation||"";return e.style.animation=`${N?`${N}, `:""}${c} ${l}ms linear ${i}ms 1 both`,Ee+=1,c}function nn(e,t){const n=(e.style.animation||"").split(", "),l=n.filter(t?s=>s.indexOf(t)<0:s=>s.indexOf("__svelte")===-1),i=n.length-l.length;i&&(e.style.animation=l.join(", "),Ee-=i,Ee||ln())}function ln(){Oe(()=>{Ee||(ke.forEach(e=>{const{ownerNode:t}=e.stylesheet;t&&S(t)}),ke.clear())})}let ge;function ve(e){ge=e}function Re(){if(!ge)throw new Error("Function called outside component initialization");return ge}function Me(e){Re().$$.on_mount.push(e)}function rn(e){Re().$$.after_update.push(e)}function Ct(e){Re().$$.on_destroy.push(e)}const oe=[],ze=[];let fe=[];const We=[],sn=Promise.resolve();let Ce=!1;function on(){Ce||(Ce=!0,sn.then(jt))}function te(e){fe.push(e)}const Ae=new Set;let re=0;function jt(){if(re!==0)return;const e=ge;do{try{for(;re<oe.length;){const t=oe[re];re++,ve(t),an(t.$$)}}catch(t){throw oe.length=0,re=0,t}for(ve(null),oe.length=0,re=0;ze.length;)ze.pop()();for(let t=0;t<fe.length;t+=1){const n=fe[t];Ae.has(n)||(Ae.add(n),n())}fe.length=0}while(oe.length);for(;We.length;)We.pop()();Ce=!1,Ae.clear(),ve(e)}function an(e){if(e.fragment!==null){e.update(),Z(e.before_update);const t=e.dirty;e.dirty=[-1],e.fragment&&e.fragment.p(e.ctx,t),e.after_update.forEach(te)}}function fn(e){const t=[],n=[];fe.forEach(l=>e.indexOf(l)===-1?t.push(l):n.push(l)),n.forEach(l=>l()),fe=t}let me;function cn(){return me||(me=Promise.resolve(),me.then(()=>{me=null})),me}function Ie(e,t,n){e.dispatchEvent(xt(`${t?"intro":"outro"}${n}`))}const $e=new Set;let X;function ne(){X={r:0,c:[],p:X}}function le(){X.r||Z(X.c),X=X.p}function F(e,t){e&&e.i&&($e.delete(e),e.i(t))}function V(e,t,n,l){if(e&&e.o){if($e.has(e))return;$e.add(e),X.c.push(()=>{$e.delete(e),l&&(n&&e.d(1),l())}),e.o(t)}else l&&l()}const un={duration:0};function ce(e,t,n,l){const i={direction:"both"};let s=t(e,n,i),r=l?0:1,a=null,f=null,o=null;function u(){o&&nn(e,o)}function c(p,b){const N=p.b-r;return b*=Math.abs(N),{a:r,b:p.b,d:N,duration:b,start:p.start,end:p.start+b,group:p.group}}function m(p){const{delay:b=0,duration:N=300,easing:$=Vt,tick:y=q,css:T}=s||un,E={start:Jt()+b,b:p};p||(E.group=X,X.r+=1),a||f?f=E:(T&&(u(),o=Ge(e,r,p,N,b,$,T)),p&&y(0,1),a=c(E,N),te(()=>Ie(e,p,"start")),Kt(w=>{if(f&&w>f.start&&(a=c(f,N),f=null,Ie(e,a.b,"start"),T&&(u(),o=Ge(e,r,a.b,a.duration,0,$,s.css))),a){if(w>=a.end)y(r=a.b,1-r),Ie(e,a.b,"end"),f||(a.b?u():--a.group.r||Z(a.group.c)),a=null;else if(w>=a.start){const U=w-a.start;r=a.a+a.d*$(U/a.duration),y(r,1-r)}}return!!(a||f)}))}return{run(p){De(s)?cn().then(()=>{s=s(i),m(p)}):m(p)},end(){u(),a=f=null}}}function dn(e,t){V(e,1,1,()=>{t.delete(e.key)})}function _n(e,t,n,l,i,s,r,a,f,o,u,c){let m=e.length,p=s.length,b=m;const N={};for(;b--;)N[e[b].key]=b;const $=[],y=new Map,T=new Map,E=[];for(b=p;b--;){const k=c(i,s,b),h=n(k);let v=r.get(h);v?l&&E.push(()=>v.p(k,t)):(v=o(h,k),v.c()),y.set(h,$[b]=v),h in N&&T.set(h,Math.abs(b-N[h]))}const w=new Set,U=new Set;function D(k){F(k,1),k.m(a,u),r.set(k.key,k),u=k.first,p--}for(;m&&p;){const k=$[p-1],h=e[m-1],v=k.key,I=h.key;k===h?(u=k.first,m--,p--):y.has(I)?!r.has(v)||w.has(v)?D(k):U.has(I)?m--:T.get(v)>T.get(I)?(U.add(v),D(k)):(w.add(I),m--):(f(h,r),m--)}for(;m--;){const k=e[m];y.has(k.key)||f(k,r)}for(;p;)D($[p-1]);return Z(E),$}function ye(e){e&&e.c()}function ue(e,t,n,l){const{fragment:i,after_update:s}=e.$$;i&&i.m(t,n),l||te(()=>{const r=e.$$.on_mount.map(Et).filter(De);e.$$.on_destroy?e.$$.on_destroy.push(...r):Z(r),e.$$.on_mount=[]}),s.forEach(te)}function de(e,t){const n=e.$$;n.fragment!==null&&(fn(n.after_update),Z(n.on_destroy),n.fragment&&n.fragment.d(t),n.on_destroy=n.fragment=null,n.ctx=[])}function pn(e,t){e.$$.dirty[0]===-1&&(oe.push(e),on(),e.$$.dirty.fill(0)),e.$$.dirty[t/31|0]|=1<<t%31}function pe(e,t,n,l,i,s,r,a=[-1]){const f=ge;ve(e);const o=e.$$={fragment:null,ctx:[],props:s,update:q,not_equal:i,bound:He(),on_mount:[],on_destroy:[],on_disconnect:[],before_update:[],after_update:[],context:new Map(t.context||(f?f.$$.context:[])),callbacks:He(),dirty:a,skip_bound:!1,root:t.target||f.$$.root};r&&r(o.root);let u=!1;if(o.ctx=n?n(e,t.props||{},(c,m,...p)=>{const b=p.length?p[0]:m;return o.ctx&&i(o.ctx[c],o.ctx[c]=b)&&(!o.skip_bound&&o.bound[c]&&o.bound[c](b),u&&pn(e,c)),m}):[],o.update(),u=!0,Z(o.before_update),o.fragment=l?l(o.ctx):!1,t.target){if(t.hydrate){const c=Zt(t.target);o.fragment&&o.fragment.l(c),c.forEach(S)}else o.fragment&&o.fragment.c();t.intro&&F(e.$$.fragment),ue(e,t.target,t.anchor,t.customElement),jt()}ve(f)}class he{$destroy(){de(this,1),this.$destroy=q}$on(t,n){if(!De(n))return q;const l=this.$$.callbacks[t]||(this.$$.callbacks[t]=[]);return l.push(n),()=>{const i=l.indexOf(n);i!==-1&&l.splice(i,1)}}$set(t){this.$$set&&!Yt(t)&&(this.$$.skip_bound=!0,this.$$set(t),this.$$.skip_bound=!1)}}function be(e,t){const n=l=>{const{action:i,data:s}=l.data;i===e&&t(s)};Me(()=>window.addEventListener("message",n)),Ct(()=>window.removeEventListener("message",n))}const se=[];function hn(e,t){return{subscribe:W(e,t).subscribe}}function W(e,t=q){let n;const l=new Set;function i(a){if(ie(e,a)&&(e=a,n)){const f=!se.length;for(const o of l)o[1](),se.push(o,e);if(f){for(let o=0;o<se.length;o+=2)se[o][0](se[o+1]);se.length=0}}}function s(a){i(a(e))}function r(a,f=q){const o=[a,f];return l.add(o),l.size===1&&(n=t(i)||q),a(e),()=>{l.delete(o),l.size===0&&n&&(n(),n=null)}}return{set:i,update:s,subscribe:r}}function mn(e,t,n){const l=!Array.isArray(e),i=l?[e]:e,s=t.length<2;return hn(n,r=>{let a=!1;const f=[];let o=0,u=q;const c=()=>{if(o)return;u();const p=t(l?f[0]:f,r);s?r(p):u=De(p)?p:q},m=i.map((p,b)=>Nt(p,N=>{f[b]=N,o&=~(1<<b),a&&c()},()=>{o|=1<<b}));return a=!0,c(),function(){Z(m),u(),a=!1}})}const ee=W(!1),Se=W(!1),je=W(""),Ue=W(null),Lt=W(null),Tt=W(""),qe=W(!1),Je=W(!1),Fe=W(null),Ot=W(!0),Rt=W(!0);function bn(e){Fe.update(t=>t.filter(n=>n.data.id!==e))}const Be=W(null),Pe=W(null),vn=mn([Be,Lt,Ue],([e,t,n])=>!e||t===null||!n?[]:e.slice(-t).filter(l=>l.message&&l.jobs.includes(n.job.type)).reverse());let Le=!1;Se.subscribe(e=>{Le=e});let Ut="";je.subscribe(e=>{Ut=e});async function K(e,t={},n){if(Le==!0&&n||Le==!0)return Promise.resolve(n||{});const l={method:"post",headers:{"Content-Type":"application/json; charset=UTF-8"},body:JSON.stringify(t)},i=window.GetParentResourceName?window.GetParentResourceName():Ut;return await(await fetch(`https://${i}/${e}`,l)).json()}function Ke(e){let t,n;const l=e[2].default,i=Gt(l,e,e[1],null);return{c(){t=g("main"),i&&i.c(),_(t,"class","svelte-a4h32x")},m(s,r){L(s,t,r),i&&i.m(t,null),n=!0},p(s,r){i&&i.p&&(!n||r&2)&&Wt(i,l,s,s[1],n?zt(l,s[1],r,null):qt(s[1]),null)},i(s){n||(F(i,s),n=!0)},o(s){V(i,s),n=!1},d(s){s&&S(t),i&&i.d(s)}}}function gn(e){let t,n,l=e[0]&&Ke(e);return{c(){l&&l.c(),t=x()},m(i,s){l&&l.m(i,s),L(i,t,s),n=!0},p(i,[s]){i[0]?l?(l.p(i,s),s&1&&F(l,1)):(l=Ke(i),l.c(),F(l,1),l.m(t.parentNode,t)):l&&(ne(),V(l,1,1,()=>{l=null}),le())},i(i){n||(F(l),n=!0)},o(i){V(l),n=!1},d(i){l&&l.d(i),i&&S(t)}}}function yn(e,t,n){let l,i;z(e,Se,f=>n(4,l=f)),z(e,ee,f=>n(0,i=f));let{$$slots:s={},$$scope:r}=t,a;return ee.subscribe(f=>{a=f}),be("setVisible",f=>{ee.set(f)}),Me(()=>{const f=o=>{a&&o.code==="Escape"&&(K("hideUI"),ee.set(!1)),!a&&o.code==="Escape"&&l&&(K("setVisible",!0),ee.set(!0))};return window.addEventListener("keydown",f),()=>window.removeEventListener("keydown",f)}),e.$$set=f=>{"$$scope"in f&&n(1,r=f.$$scope)},[i,r,s]}class wn extends he{constructor(t){super(),pe(this,t,yn,gn,ie,{})}}const $n=()=>!window.invokeNative,Te=(e,t=0)=>{if($n())for(const n of e)setTimeout(()=>{window.dispatchEvent(new MessageEvent("message",{data:{action:n.action,data:n.data}}))},t)};function Qe(e,t,n){const l=e.slice();return l[4]=t[n],l}function Xe(e,t,n){const l=e.slice();return l[7]=t[n],l}function Ze(e){let t,n=e[1],l=[];for(let i=0;i<n.length;i+=1)l[i]=et(Qe(e,n,i));return{c(){t=g("div");for(let i=0;i<l.length;i+=1)l[i].c();_(t,"class","w-fit h-fit bg-[#25303B] p-2")},m(i,s){L(i,t,s);for(let r=0;r<l.length;r+=1)l[r]&&l[r].m(t,null)},p(i,s){if(s&2){n=i[1];let r;for(r=0;r<n.length;r+=1){const a=Qe(i,n,r);l[r]?l[r].p(a,s):(l[r]=et(a),l[r].c(),l[r].m(t,null))}for(;r<l.length;r+=1)l[r].d(1);l.length=n.length}},d(i){i&&S(t),_e(l,i)}}}function xe(e){let t,n=e[7].name+"",l,i,s;function r(){return e[3](e[7])}return{c(){t=g("button"),l=j(n),_(t,"class","bg-[#0098A3] text-white p-2")},m(a,f){L(a,t,f),d(t,l),i||(s=Q(t,"click",r),i=!0)},p(a,f){e=a},d(a){a&&S(t),i=!1,s()}}}function et(e){let t,n,l=e[4].component+"",i,s,r,a=e[4].actions,f=[];for(let o=0;o<a.length;o+=1)f[o]=xe(Xe(e,a,o));return{c(){t=g("div"),n=g("p"),i=j(l),s=M();for(let o=0;o<f.length;o+=1)f[o].c();r=M(),_(n,"class","text-white mr-4"),_(t,"class","flex flex-row gap-2 items-center")},m(o,u){L(o,t,u),d(t,n),d(n,i),d(t,s);for(let c=0;c<f.length;c+=1)f[c]&&f[c].m(t,null);d(t,r)},p(o,u){if(u&2){a=o[4].actions;let c;for(c=0;c<a.length;c+=1){const m=Xe(o,a,c);f[c]?f[c].p(m,u):(f[c]=xe(m),f[c].c(),f[c].m(t,r))}for(;c<f.length;c+=1)f[c].d(1);f.length=a.length}},d(o){o&&S(t),_e(f,o)}}}function kn(e){let t,n,l,i,s,r=e[0]&&Ze(e);return{c(){t=g("div"),n=g("button"),n.textContent="Show",l=M(),r&&r.c(),_(n,"class","bg-[#232B33] text-white p-2 font-medium"),_(t,"class","absolute top-0 z-[1000]")},m(a,f){L(a,t,f),d(t,n),d(t,l),r&&r.m(t,null),i||(s=Q(n,"click",e[2]),i=!0)},p(a,[f]){a[0]?r?r.p(a,f):(r=Ze(a),r.c(),r.m(t,null)):r&&(r.d(1),r=null)},i:q,o:q,d(a){a&&S(t),r&&r.d(),i=!1,s()}}}function En(e,t,n){let l=!1;return[l,[{component:"Show",actions:[{name:"show",action:"setVisible",data:!0},{name:"hide",action:"setVisible",data:!1}]}],()=>{n(0,l=!l)},a=>{if(a.custom==!0){a.customFunction();return}Te([{action:a.action,data:a.data}])}]}class Nn extends he{constructor(t){super(),pe(this,t,En,kn,ie,{})}}function Dn(e,t,n){let l;z(e,ee,s=>n(0,l=s)),Te([{action:"setVisible",data:!0}]),Te([{action:"setBrowserMode",data:!0}]);function i(s){s.key==="="&&Mt(ee,l=!0,l)}return be("setBrowserMode",s=>{Se.set(s),console.log("browser mode enabled"),s?window.addEventListener("keydown",i):window.removeEventListener("keydown",i)}),be("newCall",s=>{Fe.update(r=>(r=r||[],r.push(s),r))}),be("setDispatchs",s=>{Be.set(s)}),be("setupUI",s=>{Ue.set(s.player),Pe.set(s.locales),Tt.set(s.keybind),Lt.set(s.maxCallList),Rt.set(s.shortCalls)}),[]}class Mn extends he{constructor(t){super(),pe(this,t,Dn,null,ie,{})}}function Ft(e){const t=e-1;return t*t*t+1}function Ne(e,{delay:t=0,duration:n=400,easing:l=Ft,x:i=0,y:s=0,opacity:r=0}={}){const a=getComputedStyle(e),f=+a.opacity,o=a.transform==="none"?"":a.transform,u=f*(1-r),[c,m]=Ye(i),[p,b]=Ye(s);return{delay:t,duration:n,easing:l,css:(N,$)=>`
			transform: ${o} translate(${(1-N)*c}${m}, ${(1-N)*p}${b});
			opacity: ${f-u*$}`}}function tt(e,{delay:t=0,duration:n=400,easing:l=Ft,axis:i="y"}={}){const s=getComputedStyle(e),r=+s.opacity,a=i==="y"?"height":"width",f=parseFloat(s[a]),o=i==="y"?["top","bottom"]:["left","right"],u=o.map(y=>`${y[0].toUpperCase()}${y.slice(1)}`),c=parseFloat(s[`padding${u[0]}`]),m=parseFloat(s[`padding${u[1]}`]),p=parseFloat(s[`margin${u[0]}`]),b=parseFloat(s[`margin${u[1]}`]),N=parseFloat(s[`border${u[0]}Width`]),$=parseFloat(s[`border${u[1]}Width`]);return{delay:t,duration:n,easing:l,css:y=>`overflow: hidden;opacity: ${Math.min(y*20,1)*r};${a}: ${y*f}px;padding-${o[0]}: ${y*c}px;padding-${o[1]}: ${y*m}px;margin-${o[0]}: ${y*p}px;margin-${o[1]}: ${y*b}px;border-${o[0]}-width: ${y*N}px;border-${o[1]}-width: ${y*$}px;`}}const Sn=["January","February","March","April","May","June","July","August","September","October","November","December"];function we(e,t=!1,n=!1){const l=e.getDate(),i=Sn[e.getMonth()],s=e.getFullYear(),r=e.getHours();let a=e.getMinutes();return a<10&&(a=`0${a}`),t?`${t} at ${r}:${a}`:n?`${l}. ${i} at ${r}:${a}`:`${l}. ${i} ${s}. at ${r}:${a}`}function Bt(e){if(!e)return"Unknown";let t;try{t=typeof e=="object"?e:new Date(e)}catch{return"Invalid date"}if(isNaN(t))return"Invalid date";const n=864e5,l=new Date,i=new Date(l-n),s=Math.round((l-t)/1e3),r=Math.round(s/60),a=l.toDateString()===t.toDateString(),f=i.toDateString()===t.toDateString(),o=l.getFullYear()===t.getFullYear();return s<5?"Akkurat nå":s<60?`${s} sekunder siden`:s<90?"Ett minutt siden":r<60?`${r} Minutter siden`:a?we(t,"I dag"):f?we(t,"I går"):o?we(t,!1,!0):we(t)}function nt(e,t,n){const l=e.slice();return l[21]=t[n],l}function lt(e,t,n){const l=e.slice();return l[24]=t[n],l}function it(e,t,n){const l=e.slice();return l[27]=t[n],l}function rt(e){let t,n,l=e[6],i=[];for(let r=0;r<l.length;r+=1)i[r]=_t(nt(e,l,r));const s=r=>V(i[r],1,1,()=>{i[r]=null});return{c(){for(let r=0;r<i.length;r+=1)i[r].c();t=x()},m(r,a){for(let f=0;f<i.length;f+=1)i[f]&&i[f].m(r,a);L(r,t,a),n=!0},p(r,a){if(a&18371){l=r[6];let f;for(f=0;f<l.length;f+=1){const o=nt(r,l,f);i[f]?(i[f].p(o,a),F(i[f],1)):(i[f]=_t(o),i[f].c(),F(i[f],1),i[f].m(t.parentNode,t))}for(ne(),f=l.length;f<i.length;f+=1)s(f);le()}},i(r){if(!n){for(let a=0;a<l.length;a+=1)F(i[a]);n=!0}},o(r){i=i.filter(Boolean);for(let a=0;a<i.length;a+=1)V(i[a]);n=!1},d(r){_e(i,r),r&&S(t)}}}function st(e){let t,n,l,i,s=e[27].label+"",r,a,f=e[27].value+"",o,u;return{c(){t=g("p"),n=g("i"),i=M(),r=j(s),a=j(": "),o=j(f),u=M(),_(n,"class",l=e[27].icon+" mr-[0.5vh]")},m(c,m){L(c,t,m),d(t,n),d(t,i),d(t,r),d(t,a),d(t,o),d(t,u)},p(c,m){m&64&&l!==(l=c[27].icon+" mr-[0.5vh]")&&_(n,"class",l),m&64&&s!==(s=c[27].label+"")&&B(r,s),m&64&&f!==(f=c[27].value+"")&&B(o,f)},d(c){c&&S(t)}}}function ot(e){let t,n=e[27].value&&st(e);return{c(){n&&n.c(),t=x()},m(l,i){n&&n.m(l,i),L(l,t,i)},p(l,i){l[27].value?n?n.p(l,i):(n=st(l),n.c(),n.m(t.parentNode,t)):n&&(n.d(1),n=null)},d(l){n&&n.d(l),l&&S(t)}}}function at(e){let t,n,l,i,s=e[21].units.length+"",r,a,f=e[7].units+"",o,u,c,m,p,b,N,$,y,T,E,w=e[21].units.length>0&&ft(e);function U(v,I){return I&320&&(p=null),p==null&&(p=!!Pt(v[21].units,v[8].citizenid)),p?In:An}let D=U(e,-1),k=D(e);function h(){return e[19](e[21])}return{c(){t=g("div"),w&&w.c(),n=M(),l=g("button"),i=g("p"),r=j(s),a=M(),o=j(f),c=M(),m=g("p"),k.c(),N=M(),_(i,"class",u="mx-[2vh] px-[2vh] py-[0.2vh] rounded-full "+(e[21].priority==1?" bg-accent_dark_red":"  bg-accent_dark_green")),_(m,"class","ml-[3vh]"),_(l,"class",b="w-full h-[5vh] "+(e[21].priority==1?" bg-priority_quaternary":" bg-accent_green")+" flex items-center font-medium"),_(t,"class","mb-[1vh]")},m(v,I){L(v,t,I),w&&w.m(t,null),d(t,n),d(t,l),d(l,i),d(i,r),d(i,a),d(i,o),d(l,c),d(l,m),k.m(m,null),d(t,N),y=!0,T||(E=Q(l,"click",h),T=!0)},p(v,I){e=v,e[21].units.length>0?w?w.p(e,I):(w=ft(e),w.c(),w.m(t,n)):w&&(w.d(1),w=null),(!y||I&64)&&s!==(s=e[21].units.length+"")&&B(r,s),(!y||I&128)&&f!==(f=e[7].units+"")&&B(o,f),(!y||I&64&&u!==(u="mx-[2vh] px-[2vh] py-[0.2vh] rounded-full "+(e[21].priority==1?" bg-accent_dark_red":"  bg-accent_dark_green")))&&_(i,"class",u),D===(D=U(e,I))&&k?k.p(e,I):(k.d(1),k=D(e),k&&(k.c(),k.m(m,null))),(!y||I&64&&b!==(b="w-full h-[5vh] "+(e[21].priority==1?" bg-priority_quaternary":" bg-accent_green")+" flex items-center font-medium"))&&_(l,"class",b)},i(v){y||(te(()=>{y&&($||($=ce(t,tt,{duration:300},!0)),$.run(1))}),y=!0)},o(v){$||($=ce(t,tt,{duration:300},!1)),$.run(0),y=!1},d(v){v&&S(t),w&&w.d(),k.d(),v&&$&&$.end(),T=!1,E()}}}function ft(e){let t,n,l=e[21].units.slice(0,e[1][e[21].id]?e[21].units.length:3),i=[];for(let r=0;r<l.length;r+=1)i[r]=ct(lt(e,l,r));let s=e[21].units.length>3&&ut(e);return{c(){t=g("div");for(let r=0;r<i.length;r+=1)i[r].c();n=M(),s&&s.c(),_(t,"class","flex flex-col gap-[0.2vh] mb-[1vh] bg-primary")},m(r,a){L(r,t,a);for(let f=0;f<i.length;f+=1)i[f]&&i[f].m(t,null);d(t,n),s&&s.m(t,null)},p(r,a){if(a&66){l=r[21].units.slice(0,r[1][r[21].id]?r[21].units.length:3);let f;for(f=0;f<l.length;f+=1){const o=lt(r,l,f);i[f]?i[f].p(o,a):(i[f]=ct(o),i[f].c(),i[f].m(t,n))}for(;f<i.length;f+=1)i[f].d(1);i.length=l.length}r[21].units.length>3?s?s.p(r,a):(s=ut(r),s.c(),s.m(t,null)):s&&(s.d(1),s=null)},d(r){r&&S(t),_e(i,r),s&&s.d()}}}function ct(e){let t,n,l=e[24].metadata.callsign+"",i,s,r,a,f=e[24].job.name+"",o,u,c,m,p=e[24].charinfo.firstname+"",b,N,$=e[24].charinfo.lastname+"",y,T;return{c(){t=g("div"),n=g("p"),i=j(l),r=M(),a=g("p"),o=j(f),c=M(),m=g("p"),b=j(p),N=M(),y=j($),_(n,"class",s="ml-[2vh] px-[1.4vh] py-[0.2vh] rounded-full "+(e[21].priority==1?"bg-priority_secondary":"bg-secondary")),_(a,"class",u="mx-[1vh] px-[1.5vh] py-[0.2vh] rounded-full uppercase "+(e[24].job.type=="leo"?"bg-[#004ca5] ":e[24].job.type=="ems"?"bg-[#e03535]":"bg-[#4b4b4b]")),_(m,"class","ml-[0.5vh]"),_(t,"class",T="w-full h-[5vh] flex "+(e[21].priority==1?"bg-priority_tertiary":"bg-tertiary")+" flex items-center font-medium")},m(E,w){L(E,t,w),d(t,n),d(n,i),d(t,r),d(t,a),d(a,o),d(t,c),d(t,m),d(m,b),d(m,N),d(m,y)},p(E,w){w&66&&l!==(l=E[24].metadata.callsign+"")&&B(i,l),w&64&&s!==(s="ml-[2vh] px-[1.4vh] py-[0.2vh] rounded-full "+(E[21].priority==1?"bg-priority_secondary":"bg-secondary"))&&_(n,"class",s),w&66&&f!==(f=E[24].job.name+"")&&B(o,f),w&66&&u!==(u="mx-[1vh] px-[1.5vh] py-[0.2vh] rounded-full uppercase "+(E[24].job.type=="leo"?"bg-[#004ca5] ":E[24].job.type=="ems"?"bg-[#e03535]":"bg-[#4b4b4b]"))&&_(a,"class",u),w&66&&p!==(p=E[24].charinfo.firstname+"")&&B(b,p),w&66&&$!==($=E[24].charinfo.lastname+"")&&B(y,$),w&64&&T!==(T="w-full h-[5vh] flex "+(E[21].priority==1?"bg-priority_tertiary":"bg-tertiary")+" flex items-center font-medium")&&_(t,"class",T)},d(E){E&&S(t)}}}function ut(e){let t,n=!e[1][e[21].id]&&dt(e);return{c(){n&&n.c(),t=x()},m(l,i){n&&n.m(l,i),L(l,t,i)},p(l,i){l[1][l[21].id]?n&&(n.d(1),n=null):n?n.p(l,i):(n=dt(l),n.c(),n.m(t.parentNode,t))},d(l){n&&n.d(l),l&&S(t)}}}function dt(e){let t,n,l,i=pt(e[21])+"",s,r,a=e[7].additionals+"",f,o,u,c;function m(){return e[18](e[21])}return{c(){t=g("button"),n=g("p"),l=j("+"),s=j(i),r=M(),f=j(a),_(n,"class","ml-[0.5vh]"),_(t,"class",o="w-full h-[5vh] flex items-center justify-center "+(e[21].priority==1?"bg-priority_tertiary":"bg-tertiary")+" flex items-center font-medium")},m(p,b){L(p,t,b),d(t,n),d(n,l),d(n,s),d(n,r),d(n,f),u||(c=Q(t,"click",m),u=!0)},p(p,b){e=p,b&64&&i!==(i=pt(e[21])+"")&&B(s,i),b&128&&a!==(a=e[7].additionals+"")&&B(f,a),b&64&&o!==(o="w-full h-[5vh] flex items-center justify-center "+(e[21].priority==1?"bg-priority_tertiary":"bg-tertiary")+" flex items-center font-medium")&&_(t,"class",o)},d(p){p&&S(t),u=!1,c()}}}function An(e){let t=e[7].dispatch_attach+"",n;return{c(){n=j(t)},m(l,i){L(l,n,i)},p(l,i){i&128&&t!==(t=l[7].dispatch_attach+"")&&B(n,t)},d(l){l&&S(n)}}}function In(e){let t=e[7].dispatch_detach+"",n;return{c(){n=j(t)},m(l,i){L(l,n,i)},p(l,i){i&128&&t!==(t=l[7].dispatch_detach+"")&&B(n,t)},d(l){l&&S(n)}}}function _t(e){let t,n,l,i,s=e[21].id+"",r,a,f,o=e[21].code+"",u,c,m,p,b=e[21].message+"",N,$,y,T,E,w,U,D,k,h,v,I,P,G=e[14](e[21]),O=[];for(let C=0;C<G.length;C+=1)O[C]=ot(it(e,G,C));function Y(){return e[17](e[21])}let A=e[0]===e[21].id&&at(e);return{c(){t=g("button"),n=g("div"),l=g("p"),i=j("#"),r=j(s),a=M(),f=g("p"),u=j(o),m=M(),p=g("p"),N=j(b),$=M(),y=g("i"),w=M(),U=g("div");for(let C=0;C<O.length;C+=1)O[C].c();k=M(),A&&A.c(),h=x(),_(l,"class","px-[2vh] py-[0.2vh] rounded-full bg-accent_green"),_(f,"class",c="px-[2vh] py-[0.2vh] rounded-full "+(e[21].priority==1?" bg-accent_red":"bg-accent_cyan")),_(p,"class","py-[0.2vh]"),_(y,"class",T=e[21].icon+" py-[0.2vh] ml-auto mr-[0.5vh] "+(e[21].priority==1?" text-accent_red":"text-accent_cyan")),_(n,"class",E="flex items-center gap-[1vh] p-[1vh] text-[1.5vh] "+(e[21].priority==1?" bg-priority_primary":" bg-primary")),_(U,"class","flex flex-col p-[1vh] gap-y-[0.4vh] text-[1.4vh] w-full text-start"),_(t,"class",D="w-full h-fit mb-[1vh] font-medium "+(e[21].priority==1?"bg-priority_secondary":"bg-secondary"))},m(C,R){L(C,t,R),d(t,n),d(n,l),d(l,i),d(l,r),d(n,a),d(n,f),d(f,u),d(n,m),d(n,p),d(p,N),d(n,$),d(n,y),d(t,w),d(t,U);for(let H=0;H<O.length;H+=1)O[H]&&O[H].m(U,null);L(C,k,R),A&&A.m(C,R),L(C,h,R),v=!0,I||(P=Q(t,"click",Y),I=!0)},p(C,R){if(e=C,(!v||R&64)&&s!==(s=e[21].id+"")&&B(r,s),(!v||R&64)&&o!==(o=e[21].code+"")&&B(u,o),(!v||R&64&&c!==(c="px-[2vh] py-[0.2vh] rounded-full "+(e[21].priority==1?" bg-accent_red":"bg-accent_cyan")))&&_(f,"class",c),(!v||R&64)&&b!==(b=e[21].message+"")&&B(N,b),(!v||R&64&&T!==(T=e[21].icon+" py-[0.2vh] ml-auto mr-[0.5vh] "+(e[21].priority==1?" text-accent_red":"text-accent_cyan")))&&_(y,"class",T),(!v||R&64&&E!==(E="flex items-center gap-[1vh] p-[1vh] text-[1.5vh] "+(e[21].priority==1?" bg-priority_primary":" bg-primary")))&&_(n,"class",E),R&16448){G=e[14](e[21]);let H;for(H=0;H<G.length;H+=1){const Ve=it(e,G,H);O[H]?O[H].p(Ve,R):(O[H]=ot(Ve),O[H].c(),O[H].m(U,null))}for(;H<O.length;H+=1)O[H].d(1);O.length=G.length}(!v||R&64&&D!==(D="w-full h-fit mb-[1vh] font-medium "+(e[21].priority==1?"bg-priority_secondary":"bg-secondary")))&&_(t,"class",D),e[0]===e[21].id?A?(A.p(e,R),R&65&&F(A,1)):(A=at(e),A.c(),F(A,1),A.m(h.parentNode,h)):A&&(ne(),V(A,1,1,()=>{A=null}),le())},i(C){v||(F(A),v=!0)},o(C){V(A),v=!1},d(C){C&&S(t),_e(O,C),C&&S(k),A&&A.d(C),C&&S(h),I=!1,P()}}}function Cn(e){let t,n,l,i,s,r,a,f,o,u,c,m,p,b,N,$,y,T,E,w,U,D,k,h,v=e[5]&&rt(e);return{c(){t=g("div"),n=g("div"),l=g("button"),l.innerHTML='<i class="fas fa-arrows-rotate text-[1.5vh]"></i>',i=M(),s=g("button"),r=g("i"),f=M(),o=g("button"),u=g("i"),m=M(),p=g("button"),p.innerHTML='<i class="fas fa-ban text-[1.5vh]"></i>',b=M(),N=g("button"),$=g("i"),T=M(),E=g("div"),v&&v.c(),_(l,"class","w-full h-[3vh] flex items-center justify-center bg-primary hover:bg-secondary"),_(r,"class",a="fas fa-volume-"+(e[4]?"xmark":"high")+" text-[1.5vh]"),_(s,"class","w-full h-[3vh] flex items-center justify-center bg-primary hover:bg-secondary"),_(u,"class",c="fas fa-"+(e[3]?"bell-slash":"bell")+" text-[1.5vh]"),_(o,"class","w-full h-[3vh] flex items-center justify-center bg-primary hover:bg-secondary"),_(p,"class","w-full h-[3vh] flex items-center justify-center bg-primary hover:bg-secondary"),_($,"class",y="fas fa-"+(e[2]?"hand-point-left":"hand-point-right")+" text-[1.5vh]"),_(N,"class","w-full h-[3vh] flex items-center justify-center bg-primary hover:bg-secondary"),_(n,"class","w-[3.2vh] h-[85%] flex flex-col gap-[1vh]"),J(n,"ml-[1vh]",!e[2]),J(n,"mr-[1vh]",e[2]),_(E,"class","w-[25%] h-[97%] overflow-auto pr-[0.5vh]"),J(E,"ml-[2vh]",!e[2]),J(E,"mr-[2vh]",e[2]),_(t,"class",w="w-screen h-screen flex items-center justify-end "+(e[2]?"flex-row":"flex-row-reverse"))},m(I,P){L(I,t,P),d(t,n),d(n,l),d(n,i),d(n,s),d(s,r),d(n,f),d(n,o),d(o,u),d(n,m),d(n,p),d(n,b),d(n,N),d(N,$),d(t,T),d(t,E),v&&v.m(E,null),D=!0,k||(h=[Q(l,"click",e[15]),Q(s,"click",e[12]),Q(o,"click",e[13]),Q(p,"click",e[16]),Q(N,"click",e[11])],k=!0)},p(I,[P]){e=I,(!D||P&16&&a!==(a="fas fa-volume-"+(e[4]?"xmark":"high")+" text-[1.5vh]"))&&_(r,"class",a),(!D||P&8&&c!==(c="fas fa-"+(e[3]?"bell-slash":"bell")+" text-[1.5vh]"))&&_(u,"class",c),(!D||P&4&&y!==(y="fas fa-"+(e[2]?"hand-point-left":"hand-point-right")+" text-[1.5vh]"))&&_($,"class",y),(!D||P&4)&&J(n,"ml-[1vh]",!e[2]),(!D||P&4)&&J(n,"mr-[1vh]",e[2]),e[5]?v?(v.p(e,P),P&32&&F(v,1)):(v=rt(e),v.c(),F(v,1),v.m(E,null)):v&&(ne(),V(v,1,1,()=>{v=null}),le()),(!D||P&4)&&J(E,"ml-[2vh]",!e[2]),(!D||P&4)&&J(E,"mr-[2vh]",e[2]),(!D||P&4&&w!==(w="w-screen h-screen flex items-center justify-end "+(e[2]?"flex-row":"flex-row-reverse")))&&_(t,"class",w)},i(I){D||(F(v),te(()=>{D&&(U||(U=ce(t,Ne,{x:e[2]?400:-400},!0)),U.run(1))}),D=!0)},o(I){V(v),U||(U=ce(t,Ne,{x:e[2]?400:-400},!1)),U.run(0),D=!1},d(I){I&&S(t),v&&v.d(),I&&U&&U.end(),k=!1,Z(h)}}}function Pt(e,t){for(let n=0;n<e.length;n++)if(e[n].citizenid===t)return!0;return!1}function pt(e){const n=e.units.length-3;return Math.max(0,n)}function jn(e,t,n){let l,i,s,r,a,f,o;z(e,Je,h=>n(3,i=h)),z(e,qe,h=>n(4,s=h)),z(e,Be,h=>n(5,r=h)),z(e,vn,h=>n(6,a=h)),z(e,Pe,h=>n(7,f=h)),z(e,Ue,h=>n(8,o=h));let u=null,c={},m;Me(()=>{m=Ot.subscribe(h=>{n(2,l=h)})}),Ct(()=>{m()});function p(h){u===h?n(0,u=null):n(0,u=h)}function b(h){n(1,c[h]=!c[h],c)}function N(){n(2,l=!l)}function $(){qe.update(h=>!h),K("toggleMute",{boolean:s})}function y(){Je.update(h=>!h),K("toggleAlerts",{boolean:i})}function T(h){return[{icon:"fas fa-clock",label:"Tid",value:Bt(h.time)},{icon:"fas fa-user",label:"Name",value:h.name},{icon:"fas fa-phone",label:"Number",value:h.number},{icon:"fas fa-comment",label:"Information",value:h.information},{icon:"fas fa-map-location-dot",label:"Gate",value:h.street},{icon:"fas fa-user",label:"Kjønn",value:h.gender},{icon:"fas fa-gun",label:"Automatic Gun Fire",value:h.automaticGunFire},{icon:"fas fa-gun",label:"Våpen",value:h.weapon},{icon:"fas fa-car",label:"Kjøretøy",value:h.vehicle},{icon:"fas fa-rectangle-list",label:"Skiltnummer",value:h.plate},{icon:"fas fa-droplet",label:"Farge",value:h.color},{icon:"fas fa-car",label:"Klasse",value:h.class},{icon:"fas fa-door-open",label:"Dører",value:h.doors},{icon:"fas fa-compass",label:"Retning",value:h.heading},{icon:"fas fa-user-group",label:"Units",value:h.units.length}]}const E=()=>{K("refreshAlerts")},w=()=>{K("clearBlips")},U=h=>p(h.id),D=h=>b(h.id),k=h=>{Pt(h.units,o.citizenid)?(K("detachUnit",h),K("refreshAlerts")):(K("attachUnit",h),K("refreshAlerts"))};return n(2,l=!1),[u,c,l,i,s,r,a,f,o,p,b,N,$,y,T,E,w,U,D,k]}class Ln extends he{constructor(t){super(),pe(this,t,jn,Cn,ie,{})}}function ht(e,t,n){const l=e.slice();return l[6]=t[n],l[8]=n,l}function mt(e,t,n){const l=e.slice();return l[9]=t[n],l}function bt(e){let t,n=e[3](e[6]),l=[];for(let i=0;i<n.length;i+=1)l[i]=gt(mt(e,n,i));return{c(){for(let i=0;i<l.length;i+=1)l[i].c();t=x()},m(i,s){for(let r=0;r<l.length;r+=1)l[r]&&l[r].m(i,s);L(i,t,s)},p(i,s){if(s&9){n=i[3](i[6]);let r;for(r=0;r<n.length;r+=1){const a=mt(i,n,r);l[r]?l[r].p(a,s):(l[r]=gt(a),l[r].c(),l[r].m(t.parentNode,t))}for(;r<l.length;r+=1)l[r].d(1);l.length=n.length}},d(i){_e(l,i),i&&S(t)}}}function vt(e){let t,n,l,i,s=e[9].label+"",r,a,f=e[9].value+"",o,u;return{c(){t=g("p"),n=g("i"),i=M(),r=j(s),a=j(": "),o=j(f),u=M(),_(n,"class",l=e[9].icon+" mr-[0.5vh]")},m(c,m){L(c,t,m),d(t,n),d(t,i),d(t,r),d(t,a),d(t,o),d(t,u)},p(c,m){m&1&&l!==(l=c[9].icon+" mr-[0.5vh]")&&_(n,"class",l),m&1&&s!==(s=c[9].label+"")&&B(r,s),m&1&&f!==(f=c[9].value+"")&&B(o,f)},d(c){c&&S(t)}}}function gt(e){let t,n=e[9].value&&vt(e);return{c(){n&&n.c(),t=x()},m(l,i){n&&n.m(l,i),L(l,t,i)},p(l,i){l[9].value?n?n.p(l,i):(n=vt(l),n.c(),n.m(t.parentNode,t)):n&&(n.d(1),n=null)},d(l){n&&n.d(l),l&&S(t)}}}function yt(e){let t,n,l,i,s;return{c(){t=g("p"),n=j("["),l=j(e[2]),i=j("] Svar"),_(t,"class",s="px-[1.5vh] py-[0.4vh] rounded-full text-[1.3vh] "+(e[6].data.priority==1?" bg-priority_primary":" bg-primary"))},m(r,a){L(r,t,a),d(t,n),d(t,l),d(t,i)},p(r,a){a&4&&B(l,r[2]),a&1&&s!==(s="px-[1.5vh] py-[0.4vh] rounded-full text-[1.3vh] "+(r[6].data.priority==1?" bg-priority_primary":" bg-primary"))&&_(t,"class",s)},d(r){r&&S(t)}}}function wt(e,t){let n,l,i,s,r=t[6].data.id+"",a,f,o,u=t[6].data.code+"",c,m,p,b,N=t[6].data.message+"",$,y,T,E,w,U,D,k,h,v,I,P,G,O,Y=t[6].data&&bt(t),A=t[8]===0&&yt(t);return{key:e,first:null,c(){n=g("div"),l=g("div"),i=g("p"),s=j("#"),a=j(r),f=M(),o=g("p"),c=j(u),p=M(),b=g("p"),$=j(N),y=M(),T=g("i"),U=M(),D=g("div"),k=g("div"),Y&&Y.c(),h=M(),v=g("div"),A&&A.c(),I=M(),_(i,"class","px-[2vh] py-[0.2vh] rounded-full bg-accent_green"),_(o,"class",m="px-[2vh] py-[0.2vh] rounded-full "+(t[6].data.priority==1?" bg-accent_red":"bg-accent_cyan")),_(b,"class","py-[0.2vh]"),_(T,"class",E=t[6].data.icon+" py-[0.2vh] ml-auto mr-[0.5vh] "+(t[6].data.priority==1?" text-accent_red":"text-accent_cyan")),_(l,"class",w="flex items-center gap-[1vh] p-[1vh] text-[1.5vh] "+(t[6].data.priority==1?" bg-priority_primary":" bg-primary")),_(k,"class","flex flex-col p-[1vh] gap-y-[0.4vh] text-[1.4vh] w-[70%]"),_(v,"class","w-[30%] flex items-end justify-center mb-[1vh]"),_(D,"class","flex"),_(n,"class",P="w-full h-fit my-[0.5vh] font-medium "+(t[6].data.priority==1?" bg-priority_secondary":" bg-secondary")),this.first=n},m(C,R){L(C,n,R),d(n,l),d(l,i),d(i,s),d(i,a),d(l,f),d(l,o),d(o,c),d(l,p),d(l,b),d(b,$),d(l,y),d(l,T),d(n,U),d(n,D),d(D,k),Y&&Y.m(k,null),d(D,h),d(D,v),A&&A.m(v,null),d(n,I),O=!0},p(C,R){t=C,(!O||R&1)&&r!==(r=t[6].data.id+"")&&B(a,r),(!O||R&1)&&u!==(u=t[6].data.code+"")&&B(c,u),(!O||R&1&&m!==(m="px-[2vh] py-[0.2vh] rounded-full "+(t[6].data.priority==1?" bg-accent_red":"bg-accent_cyan")))&&_(o,"class",m),(!O||R&1)&&N!==(N=t[6].data.message+"")&&B($,N),(!O||R&1&&E!==(E=t[6].data.icon+" py-[0.2vh] ml-auto mr-[0.5vh] "+(t[6].data.priority==1?" text-accent_red":"text-accent_cyan")))&&_(T,"class",E),(!O||R&1&&w!==(w="flex items-center gap-[1vh] p-[1vh] text-[1.5vh] "+(t[6].data.priority==1?" bg-priority_primary":" bg-primary")))&&_(l,"class",w),t[6].data?Y?Y.p(t,R):(Y=bt(t),Y.c(),Y.m(k,null)):Y&&(Y.d(1),Y=null),t[8]===0?A?A.p(t,R):(A=yt(t),A.c(),A.m(v,null)):A&&(A.d(1),A=null),(!O||R&1&&P!==(P="w-full h-fit my-[0.5vh] font-medium "+(t[6].data.priority==1?" bg-priority_secondary":" bg-secondary")))&&_(n,"class",P)},i(C){O||(te(()=>{O&&(G||(G=ce(n,Ne,{x:t[1]?400:-400},!0)),G.run(1))}),O=!0)},o(C){G||(G=ce(n,Ne,{x:t[1]?400:-400},!1)),G.run(0),O=!1},d(C){C&&S(n),Y&&Y.d(),A&&A.d(),C&&G&&G.end()}}}function Tn(e){let t,n,l=[],i=new Map,s,r,a=e[0].slice().reverse();const f=o=>o[6].data.id;for(let o=0;o<a.length;o+=1){let u=ht(e,a,o),c=f(u);i.set(c,l[o]=wt(c,u))}return{c(){t=g("div"),n=g("div");for(let o=0;o<l.length;o+=1)l[o].c();_(n,"class","w-[25%] h-[97%]"),J(n,"ml-[2vh]",!e[1]),J(n,"mr-[2vh]",e[1]),_(t,"class",s="w-screen h-screen flex justify-end "+(e[1]?"flex-row":"flex-row-reverse")+" items-end")},m(o,u){L(o,t,u),d(t,n);for(let c=0;c<l.length;c+=1)l[c]&&l[c].m(n,null);r=!0},p(o,[u]){u&15&&(a=o[0].slice().reverse(),ne(),l=_n(l,u,f,1,o,a,i,n,dn,wt,null,ht),le()),(!r||u&2)&&J(n,"ml-[2vh]",!o[1]),(!r||u&2)&&J(n,"mr-[2vh]",o[1]),(!r||u&2&&s!==(s="w-screen h-screen flex justify-end "+(o[1]?"flex-row":"flex-row-reverse")+" items-end"))&&_(t,"class",s)},i(o){if(!r){for(let u=0;u<a.length;u+=1)F(l[u]);r=!0}},o(o){for(let u=0;u<l.length;u+=1)V(l[u]);r=!1},d(o){o&&S(t);for(let u=0;u<l.length;u+=1)l[u].d()}}}function On(e,t,n){let l,i,s;z(e,Rt,o=>n(4,l=o)),z(e,Ot,o=>n(1,i=o)),z(e,Tt,o=>n(2,s=o));let r=[];Fe.subscribe(o=>{n(0,r=o||[])});function a(o){bn(o)}Me(()=>{r.forEach(o=>{const{data:u,timer:c}=o;setTimeout(()=>{a(u.id)},c)})}),rn(()=>{r.forEach(o=>{const{data:u,timer:c}=o;setTimeout(()=>{a(u.id)},c)})});function f(o){return l?[{label:"Call",value:o.data.message},{icon:"fas fa-comment",label:"Information",value:o.data.information}]:[{icon:"fas fa-clock",label:"Tid",value:Bt(o.data.time)},{icon:"fas fa-user",label:"Name",value:o.data.name},{icon:"fas fa-phone",label:"Number",value:o.data.number},{icon:"fas fa-comment",label:"Information",value:o.data.information},{icon:"fas fa-map-location-dot",label:"Gate",value:o.data.street},{icon:"fas fa-user",label:"Kjønn",value:o.data.gender},{icon:"fas fa-gun",label:"Automatic Gun Fire",value:o.data.automaticGunFire},{icon:"fas fa-gun",label:"Våpen",value:o.data.weapon},{icon:"fas fa-car",label:"Kjøretøy",value:o.data.vehicle},{icon:"fas fa-rectangle-list",label:"Skiltnummer",value:o.data.plate},{icon:"fas fa-droplet",label:"Farge",value:o.data.color},{icon:"fas fa-car",label:"Klasse",value:o.data.class},{icon:"fas fa-door-open",label:"Dører",value:o.data.doors},{icon:"fas fa-compass",label:"Retning",value:o.data.heading}]}return[r,i,s,f]}class Rn extends he{constructor(t){super(),pe(this,t,On,Tn,ie,{})}}function $t(e){let t,n,l,i;return t=new wn({props:{$$slots:{default:[Un]},$$scope:{ctx:e}}}),l=new Rn({}),{c(){ye(t.$$.fragment),n=M(),ye(l.$$.fragment)},m(s,r){ue(t,s,r),L(s,n,r),ue(l,s,r),i=!0},i(s){i||(F(t.$$.fragment,s),F(l.$$.fragment,s),i=!0)},o(s){V(t.$$.fragment,s),V(l.$$.fragment,s),i=!1},d(s){de(t,s),s&&S(n),de(l,s)}}}function Un(e){let t,n;return t=new Ln({}),{c(){ye(t.$$.fragment)},m(l,i){ue(t,l,i),n=!0},i(l){n||(F(t.$$.fragment,l),n=!0)},o(l){V(t.$$.fragment,l),n=!1},d(l){de(t,l)}}}function kt(e){let t,n,l,i;return t=new Nn({}),{c(){ye(t.$$.fragment),n=M(),l=g("body"),_(l,"class","bg-neutral-700")},m(s,r){ue(t,s,r),L(s,n,r),L(s,l,r),i=!0},i(s){i||(F(t.$$.fragment,s),i=!0)},o(s){V(t.$$.fragment,s),i=!1},d(s){de(t,s),s&&S(n),s&&S(l)}}}function Fn(e){let t,n,l,i,s,r=e[0]&&$t(e);n=new Mn({});let a=e[1]&&kt();return{c(){r&&r.c(),t=M(),ye(n.$$.fragment),l=M(),a&&a.c(),i=x()},m(f,o){r&&r.m(f,o),L(f,t,o),ue(n,f,o),L(f,l,o),a&&a.m(f,o),L(f,i,o),s=!0},p(f,[o]){f[0]?r?o&1&&F(r,1):(r=$t(f),r.c(),F(r,1),r.m(t.parentNode,t)):r&&(ne(),V(r,1,1,()=>{r=null}),le()),f[1]?a?o&2&&F(a,1):(a=kt(),a.c(),F(a,1),a.m(i.parentNode,i)):a&&(ne(),V(a,1,1,()=>{a=null}),le())},i(f){s||(F(r),F(n.$$.fragment,f),F(a),s=!0)},o(f){V(r),V(n.$$.fragment,f),V(a),s=!1},d(f){r&&r.d(f),f&&S(t),de(n,f),f&&S(l),a&&a.d(f),f&&S(i)}}}function Bn(e,t,n){let l,i,s;return z(e,je,r=>n(2,l=r)),z(e,Pe,r=>n(0,i=r)),z(e,Se,r=>n(1,s=r)),Mt(je,l="ps-dispatch",l),[i,s]}class Pn extends he{constructor(t){super(),pe(this,t,Bn,Fn,ie,{})}}new Pn({target:document.getElementById("app")});
