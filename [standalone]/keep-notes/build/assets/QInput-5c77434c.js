import{z as D,b as ae,B as te,C as ye,g as J,f as ke,r as j,u as p,D as xe,E as he,F as Ce,s as we,n as K,o as Me,a as Se,G as Re,h as b,H as Q,T as qe,I as Ve,J as Ae,K as ue}from"./index-2d3c0272.js";import{Q as ie,c as Fe}from"./QBtn-cf576227.js";import{a as _e,u as Be}from"./use-dark-60db826c.js";import{b as pe,r as Ee,h as W,c as $e}from"./Note-5ef67584.js";function Oe({validate:e,resetValidation:t,requiresQForm:u}){const i=ye(ke,!1);if(i!==!1){const{props:g,proxy:v}=J();Object.assign(v,{validate:e,resetValidation:t}),D(()=>g.disable,h=>{h===!0?(typeof t=="function"&&t(),i.unbindComponent(v)):i.bindComponent(v)}),ae(()=>{g.disable!==!0&&i.bindComponent(v)}),te(()=>{g.disable!==!0&&i.unbindComponent(v)})}else u===!0&&console.error("Parent QForm not found on useFormChild()!")}const se=/^#[0-9a-fA-F]{3}([0-9a-fA-F]{3})?$/,de=/^#[0-9a-fA-F]{4}([0-9a-fA-F]{4})?$/,fe=/^#([0-9a-fA-F]{3}|[0-9a-fA-F]{4}|[0-9a-fA-F]{6}|[0-9a-fA-F]{8})$/,G=/^rgb\(((0|[1-9][\d]?|1[\d]{0,2}|2[\d]?|2[0-4][\d]|25[0-5]),){2}(0|[1-9][\d]?|1[\d]{0,2}|2[\d]?|2[0-4][\d]|25[0-5])\)$/,X=/^rgba\(((0|[1-9][\d]?|1[\d]{0,2}|2[\d]?|2[0-4][\d]|25[0-5]),){2}(0|[1-9][\d]?|1[\d]{0,2}|2[\d]?|2[0-4][\d]|25[0-5]),(0|0\.[0-9]+[1-9]|0\.[1-9]+|1)\)$/,oe={date:e=>/^-?[\d]+\/[0-1]\d\/[0-3]\d$/.test(e),time:e=>/^([0-1]?\d|2[0-3]):[0-5]\d$/.test(e),fulltime:e=>/^([0-1]?\d|2[0-3]):[0-5]\d:[0-5]\d$/.test(e),timeOrFulltime:e=>/^([0-1]?\d|2[0-3]):[0-5]\d(:[0-5]\d)?$/.test(e),email:e=>/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(e),hexColor:e=>se.test(e),hexaColor:e=>de.test(e),hexOrHexaColor:e=>fe.test(e),rgbColor:e=>G.test(e),rgbaColor:e=>X.test(e),rgbOrRgbaColor:e=>G.test(e)||X.test(e),hexOrRgbColor:e=>se.test(e)||G.test(e),hexaOrRgbaColor:e=>de.test(e)||X.test(e),anyColor:e=>fe.test(e)||G.test(e)||X.test(e)},Te=[!0,!1,"ondemand"],Ie={modelValue:{},error:{type:Boolean,default:null},errorMessage:String,noErrorIcon:Boolean,rules:Array,reactiveRules:Boolean,lazyRules:{type:[Boolean,String],validator:e=>Te.includes(e)}};function Pe(e,t){const{props:u,proxy:i}=J(),g=j(!1),v=j(null),h=j(null);Oe({validate:_,resetValidation:R});let C=0,w;const F=p(()=>u.rules!==void 0&&u.rules!==null&&u.rules.length>0),M=p(()=>u.disable!==!0&&F.value===!0),y=p(()=>u.error===!0||g.value===!0),U=p(()=>typeof u.errorMessage=="string"&&u.errorMessage.length>0?u.errorMessage:v.value);D(()=>u.modelValue,()=>{Z()}),D(()=>u.reactiveRules,O=>{O===!0?w===void 0&&(w=D(()=>u.rules,()=>{Z(!0)})):w!==void 0&&(w(),w=void 0)},{immediate:!0}),D(e,O=>{O===!0?h.value===null&&(h.value=!1):h.value===!1&&(h.value=!0,M.value===!0&&u.lazyRules!=="ondemand"&&t.value===!1&&S())});function R(){C++,t.value=!1,h.value=null,g.value=!1,v.value=null,S.cancel()}function _(O=u.modelValue){if(M.value!==!0)return!0;const L=++C,N=t.value!==!0?()=>{h.value=!0}:()=>{},E=(o,r)=>{o===!0&&N(),g.value=o,v.value=r||null,t.value=!1},$=[];for(let o=0;o<u.rules.length;o++){const r=u.rules[o];let a;if(typeof r=="function"?a=r(O,oe):typeof r=="string"&&oe[r]!==void 0&&(a=oe[r](O)),a===!1||typeof a=="string")return E(!0,a),!1;a!==!0&&a!==void 0&&$.push(a)}return $.length===0?(E(!1),!0):(t.value=!0,Promise.all($).then(o=>{if(o===void 0||Array.isArray(o)===!1||o.length===0)return L===C&&E(!1),!0;const r=o.find(a=>a===!1||typeof a=="string");return L===C&&E(r!==void 0,r),r===void 0},o=>(L===C&&(console.error(o),E(!0)),!1)))}function Z(O){M.value===!0&&u.lazyRules!=="ondemand"&&(h.value===!0||u.lazyRules!==!0&&O!==!0)&&S()}const S=xe(_,0);return te(()=>{w!==void 0&&w(),S.cancel()}),Object.assign(i,{resetValidation:R,validate:_}),he(i,"hasError",()=>y.value),{isDirtyModel:h,hasRules:F,hasError:y,errorMessage:U,validate:_,resetValidation:R}}const ce=/^on[A-Z]/;function je(e,t){const u={listeners:j({}),attributes:j({})};function i(){const g={},v={};for(const h in e)h!=="class"&&h!=="style"&&ce.test(h)===!1&&(g[h]=e[h]);for(const h in t.props)ce.test(h)===!0&&(v[h]=t.props[h]);u.attributes.value=g,u.listeners.value=v}return Ce(i),i(),u}let le,Y=0;const B=new Array(256);for(let e=0;e<256;e++)B[e]=(e+256).toString(16).substring(1);const De=(()=>{const e=typeof crypto<"u"?crypto:typeof window<"u"?window.crypto||window.msCrypto:void 0;if(e!==void 0){if(e.randomBytes!==void 0)return e.randomBytes;if(e.getRandomValues!==void 0)return t=>{const u=new Uint8Array(t);return e.getRandomValues(u),u}}return t=>{const u=[];for(let i=t;i>0;i--)u.push(Math.floor(Math.random()*256));return u}})(),ve=4096;function ze(){(le===void 0||Y+16>ve)&&(Y=0,le=De(ve));const e=Array.prototype.slice.call(le,Y,Y+=16);return e[6]=e[6]&15|64,e[8]=e[8]&63|128,B[e[0]]+B[e[1]]+B[e[2]]+B[e[3]]+"-"+B[e[4]]+B[e[5]]+"-"+B[e[6]]+B[e[7]]+"-"+B[e[8]]+B[e[9]]+"-"+B[e[10]]+B[e[11]]+B[e[12]]+B[e[13]]+B[e[14]]+B[e[15]]}function ne(e){return e===void 0?`f_${ze()}`:e}function re(e){return e!=null&&(""+e).length>0}const Le={..._e,...Ie,label:String,stackLabel:Boolean,hint:String,hideHint:Boolean,prefix:String,suffix:String,labelColor:String,color:String,bgColor:String,filled:Boolean,outlined:Boolean,borderless:Boolean,standout:[Boolean,String],square:Boolean,loading:Boolean,labelSlot:Boolean,bottomSlots:Boolean,hideBottomSpace:Boolean,rounded:Boolean,dense:Boolean,itemAligned:Boolean,counter:Boolean,clearable:Boolean,clearIcon:String,disable:Boolean,readonly:Boolean,autofocus:Boolean,for:String,maxlength:[Number,String]},Ue=["update:modelValue","clear","focus","blur","popupShow","popupHide"];function Ze(){const{props:e,attrs:t,proxy:u,vnode:i}=J();return{isDark:Be(e,u.$q),editable:p(()=>e.disable!==!0&&e.readonly!==!0),innerLoading:j(!1),focused:j(!1),hasPopupOpen:!1,splitAttrs:je(t,i),targetUid:j(ne(e.for)),rootRef:j(null),targetRef:j(null),controlRef:j(null)}}function Ne(e){const{props:t,emit:u,slots:i,attrs:g,proxy:v}=J(),{$q:h}=v;let C;e.hasValue===void 0&&(e.hasValue=p(()=>re(t.modelValue))),e.emitValue===void 0&&(e.emitValue=l=>{u("update:modelValue",l)}),e.controlEvents===void 0&&(e.controlEvents={onFocusin:d,onFocusout:f}),Object.assign(e,{clearValue:s,onControlFocusin:d,onControlFocusout:f,focus:r}),e.computedCounter===void 0&&(e.computedCounter=p(()=>{if(t.counter!==!1){const l=typeof t.modelValue=="string"||typeof t.modelValue=="number"?(""+t.modelValue).length:Array.isArray(t.modelValue)===!0?t.modelValue.length:0,c=t.maxlength!==void 0?t.maxlength:t.maxValues;return l+(c!==void 0?" / "+c:"")}}));const{isDirtyModel:w,hasRules:F,hasError:M,errorMessage:y,resetValidation:U}=Pe(e.focused,e.innerLoading),R=e.floatingLabel!==void 0?p(()=>t.stackLabel===!0||e.focused.value===!0||e.floatingLabel.value===!0):p(()=>t.stackLabel===!0||e.focused.value===!0||e.hasValue.value===!0),_=p(()=>t.bottomSlots===!0||t.hint!==void 0||F.value===!0||t.counter===!0||t.error!==null),Z=p(()=>t.filled===!0?"filled":t.outlined===!0?"outlined":t.borderless===!0?"borderless":t.standout?"standout":"standard"),S=p(()=>`q-field row no-wrap items-start q-field--${Z.value}`+(e.fieldClass!==void 0?` ${e.fieldClass.value}`:"")+(t.rounded===!0?" q-field--rounded":"")+(t.square===!0?" q-field--square":"")+(R.value===!0?" q-field--float":"")+(L.value===!0?" q-field--labeled":"")+(t.dense===!0?" q-field--dense":"")+(t.itemAligned===!0?" q-field--item-aligned q-item-type":"")+(e.isDark.value===!0?" q-field--dark":"")+(e.getControl===void 0?" q-field--auto-height":"")+(e.focused.value===!0?" q-field--focused":"")+(M.value===!0?" q-field--error":"")+(M.value===!0||e.focused.value===!0?" q-field--highlighted":"")+(t.hideBottomSpace!==!0&&_.value===!0?" q-field--with-bottom":"")+(t.disable===!0?" q-field--disabled":t.readonly===!0?" q-field--readonly":"")),O=p(()=>"q-field__control relative-position row no-wrap"+(t.bgColor!==void 0?` bg-${t.bgColor}`:"")+(M.value===!0?" text-negative":typeof t.standout=="string"&&t.standout.length>0&&e.focused.value===!0?` ${t.standout}`:t.color!==void 0?` text-${t.color}`:"")),L=p(()=>t.labelSlot===!0||t.label!==void 0),N=p(()=>"q-field__label no-pointer-events absolute ellipsis"+(t.labelColor!==void 0&&M.value!==!0?` text-${t.labelColor}`:"")),E=p(()=>({id:e.targetUid.value,editable:e.editable.value,focused:e.focused.value,floatingLabel:R.value,modelValue:t.modelValue,emitValue:e.emitValue})),$=p(()=>{const l={for:e.targetUid.value};return t.disable===!0?l["aria-disabled"]="true":t.readonly===!0&&(l["aria-readonly"]="true"),l});D(()=>t.for,l=>{e.targetUid.value=ne(l)});function o(){const l=document.activeElement;let c=e.targetRef!==void 0&&e.targetRef.value;c&&(l===null||l.id!==e.targetUid.value)&&(c.hasAttribute("tabindex")===!0||(c=c.querySelector("[tabindex]")),c&&c!==l&&c.focus({preventScroll:!0}))}function r(){pe(o)}function a(){Ee(o);const l=document.activeElement;l!==null&&e.rootRef.value.contains(l)&&l.blur()}function d(l){clearTimeout(C),e.editable.value===!0&&e.focused.value===!1&&(e.focused.value=!0,u("focus",l))}function f(l,c){clearTimeout(C),C=setTimeout(()=>{document.hasFocus()===!0&&(e.hasPopupOpen===!0||e.controlRef===void 0||e.controlRef.value===null||e.controlRef.value.contains(document.activeElement)!==!1)||(e.focused.value===!0&&(e.focused.value=!1,u("blur",l)),c!==void 0&&c())})}function s(l){we(l),h.platform.is.mobile!==!0?(e.targetRef!==void 0&&e.targetRef.value||e.rootRef.value).focus():e.rootRef.value.contains(document.activeElement)===!0&&document.activeElement.blur(),t.type==="file"&&(e.inputRef.value.value=null),u("update:modelValue",null),u("clear",t.modelValue),K(()=>{U(),h.platform.is.mobile!==!0&&(w.value=!1)})}function k(){const l=[];return i.prepend!==void 0&&l.push(b("div",{class:"q-field__prepend q-field__marginal row no-wrap items-center",key:"prepend",onClick:Q},i.prepend())),l.push(b("div",{class:"q-field__control-container col relative-position row no-wrap q-anchor--skip"},m())),M.value===!0&&t.noErrorIcon===!1&&l.push(T("error",[b(ie,{name:h.iconSet.field.error,color:"negative"})])),t.loading===!0||e.innerLoading.value===!0?l.push(T("inner-loading-append",i.loading!==void 0?i.loading():[b(Fe,{color:t.color})])):t.clearable===!0&&e.hasValue.value===!0&&e.editable.value===!0&&l.push(T("inner-clearable-append",[b(ie,{class:"q-field__focusable-action",tag:"button",name:t.clearIcon||h.iconSet.field.clear,tabindex:0,type:"button","aria-hidden":null,role:null,onClick:s})])),i.append!==void 0&&l.push(b("div",{class:"q-field__append q-field__marginal row no-wrap items-center",key:"append",onClick:Q},i.append())),e.getInnerAppend!==void 0&&l.push(T("inner-append",e.getInnerAppend())),e.getControlChild!==void 0&&l.push(e.getControlChild()),l}function m(){const l=[];return t.prefix!==void 0&&t.prefix!==null&&l.push(b("div",{class:"q-field__prefix no-pointer-events row items-center"},t.prefix)),e.getShadowControl!==void 0&&e.hasShadow.value===!0&&l.push(e.getShadowControl()),e.getControl!==void 0?l.push(e.getControl()):i.rawControl!==void 0?l.push(i.rawControl()):i.control!==void 0&&l.push(b("div",{ref:e.targetRef,class:"q-field__native row",tabindex:-1,...e.splitAttrs.attributes.value,"data-autofocus":t.autofocus===!0||void 0},i.control(E.value))),L.value===!0&&l.push(b("div",{class:N.value},W(i.label,t.label))),t.suffix!==void 0&&t.suffix!==null&&l.push(b("div",{class:"q-field__suffix no-pointer-events row items-center"},t.suffix)),l.concat(W(i.default))}function x(){let l,c;M.value===!0?y.value!==null?(l=[b("div",{role:"alert"},y.value)],c=`q--slot-error-${y.value}`):(l=W(i.error),c="q--slot-error"):(t.hideHint!==!0||e.focused.value===!0)&&(t.hint!==void 0?(l=[b("div",t.hint)],c=`q--slot-hint-${t.hint}`):(l=W(i.hint),c="q--slot-hint"));const P=t.counter===!0||i.counter!==void 0;if(t.hideBottomSpace===!0&&P===!1&&l===void 0)return;const z=b("div",{key:c,class:"q-field__messages col"},l);return b("div",{class:"q-field__bottom row items-start q-field__bottom--"+(t.hideBottomSpace!==!0?"animated":"stale"),onClick:Q},[t.hideBottomSpace===!0?z:b(qe,{name:"q-transition--field-message"},()=>z),P===!0?b("div",{class:"q-field__counter"},i.counter!==void 0?i.counter():e.computedCounter.value):null])}function T(l,c){return c===null?null:b("div",{key:l,class:"q-field__append q-field__marginal row no-wrap items-center q-anchor--skip"},c)}let I=!1;return Me(()=>{I=!0}),Se(()=>{I===!0&&t.autofocus===!0&&v.focus()}),ae(()=>{Re.value===!0&&t.for===void 0&&(e.targetUid.value=ne()),t.autofocus===!0&&v.focus()}),te(()=>{clearTimeout(C)}),Object.assign(v,{focus:r,blur:a}),function(){const c=e.getControl===void 0&&i.control===void 0?{...e.splitAttrs.attributes.value,"data-autofocus":t.autofocus===!0||void 0,...$.value}:$.value;return b("label",{ref:e.rootRef,class:[S.value,g.class],style:g.style,...c},[i.before!==void 0?b("div",{class:"q-field__before q-field__marginal row no-wrap items-center",onClick:Q},i.before()):null,b("div",{class:"q-field__inner relative-position col self-stretch"},[b("div",{ref:e.controlRef,class:O.value,tabindex:-1,...e.controlEvents},k()),_.value===!0?x():null]),i.after!==void 0?b("div",{class:"q-field__after q-field__marginal row no-wrap items-center",onClick:Q},i.after()):null])}}const ge={date:"####/##/##",datetime:"####/##/## ##:##",time:"##:##",fulltime:"##:##:##",phone:"(###) ### - ####",card:"#### #### #### ####"},ee={"#":{pattern:"[\\d]",negate:"[^\\d]"},S:{pattern:"[a-zA-Z]",negate:"[^a-zA-Z]"},N:{pattern:"[0-9a-zA-Z]",negate:"[^0-9a-zA-Z]"},A:{pattern:"[a-zA-Z]",negate:"[^a-zA-Z]",transform:e=>e.toLocaleUpperCase()},a:{pattern:"[a-zA-Z]",negate:"[^a-zA-Z]",transform:e=>e.toLocaleLowerCase()},X:{pattern:"[0-9a-zA-Z]",negate:"[^0-9a-zA-Z]",transform:e=>e.toLocaleUpperCase()},x:{pattern:"[0-9a-zA-Z]",negate:"[^0-9a-zA-Z]",transform:e=>e.toLocaleLowerCase()}},be=Object.keys(ee);be.forEach(e=>{ee[e].regex=new RegExp(ee[e].pattern)});const Ke=new RegExp("\\\\([^.*+?^${}()|([\\]])|([.*+?^${}()|[\\]])|(["+be.join("")+"])|(.)","g"),me=/[.*+?^${}()|[\]\\]/g,V=String.fromCharCode(1),He={mask:String,reverseFillMask:Boolean,fillMask:[Boolean,String],unmaskedValue:Boolean};function Qe(e,t,u,i){let g,v,h,C;const w=j(null),F=j(y());function M(){return e.autogrow===!0||["textarea","text","search","url","tel","password"].includes(e.type)}D(()=>e.type+e.autogrow,R),D(()=>e.mask,o=>{if(o!==void 0)_(F.value,!0);else{const r=E(F.value);R(),e.modelValue!==r&&t("update:modelValue",r)}}),D(()=>e.fillMask+e.reverseFillMask,()=>{w.value===!0&&_(F.value,!0)}),D(()=>e.unmaskedValue,()=>{w.value===!0&&_(F.value)});function y(){if(R(),w.value===!0){const o=L(E(e.modelValue));return e.fillMask!==!1?$(o):o}return e.modelValue}function U(o){if(o<g.length)return g.slice(-o);let r="",a=g;const d=a.indexOf(V);if(d>-1){for(let f=o-a.length;f>0;f--)r+=V;a=a.slice(0,d)+r+a.slice(d)}return a}function R(){if(w.value=e.mask!==void 0&&e.mask.length>0&&M(),w.value===!1){C=void 0,g="",v="";return}const o=ge[e.mask]===void 0?e.mask:ge[e.mask],r=typeof e.fillMask=="string"&&e.fillMask.length>0?e.fillMask.slice(0,1):"_",a=r.replace(me,"\\$&"),d=[],f=[],s=[];let k=e.reverseFillMask===!0,m="",x="";o.replace(Ke,(c,P,z,n,q)=>{if(n!==void 0){const A=ee[n];s.push(A),x=A.negate,k===!0&&(f.push("(?:"+x+"+)?("+A.pattern+"+)?(?:"+x+"+)?("+A.pattern+"+)?"),k=!1),f.push("(?:"+x+"+)?("+A.pattern+")?")}else if(z!==void 0)m="\\"+(z==="\\"?"":z),s.push(z),d.push("([^"+m+"]+)?"+m+"?");else{const A=P!==void 0?P:q;m=A==="\\"?"\\\\\\\\":A.replace(me,"\\\\$&"),s.push(A),d.push("([^"+m+"]+)?"+m+"?")}});const T=new RegExp("^"+d.join("")+"("+(m===""?".":"[^"+m+"]")+"+)?"+(m===""?"":"["+m+"]*")+"$"),I=f.length-1,l=f.map((c,P)=>P===0&&e.reverseFillMask===!0?new RegExp("^"+a+"*"+c):P===I?new RegExp("^"+c+"("+(x===""?".":x)+"+)?"+(e.reverseFillMask===!0?"$":a+"*")):new RegExp("^"+c));h=s,C=c=>{const P=T.exec(e.reverseFillMask===!0?c:c.slice(0,s.length));P!==null&&(c=P.slice(1).join(""));const z=[],n=l.length;for(let q=0,A=c;q<n;q++){const H=l[q].exec(A);if(H===null)break;A=A.slice(H.shift().length),z.push(...H)}return z.length>0?z.join(""):c},g=s.map(c=>typeof c=="string"?c:V).join(""),v=g.split(V).join(r)}function _(o,r,a){const d=i.value,f=d.selectionEnd,s=d.value.length-f,k=E(o);r===!0&&R();const m=L(k),x=e.fillMask!==!1?$(m):m,T=F.value!==x;d.value!==x&&(d.value=x),T===!0&&(F.value=x),document.activeElement===d&&K(()=>{if(x===v){const l=e.reverseFillMask===!0?v.length:0;d.setSelectionRange(l,l,"forward");return}if(a==="insertFromPaste"&&e.reverseFillMask!==!0){const l=f-1;S.right(d,l,l);return}if(["deleteContentBackward","deleteContentForward"].indexOf(a)>-1){const l=e.reverseFillMask===!0?f===0?x.length>m.length?1:0:Math.max(0,x.length-(x===v?0:Math.min(m.length,s)+1))+1:f;d.setSelectionRange(l,l,"forward");return}if(e.reverseFillMask===!0)if(T===!0){const l=Math.max(0,x.length-(x===v?0:Math.min(m.length,s+1)));l===1&&f===1?d.setSelectionRange(l,l,"forward"):S.rightReverse(d,l,l)}else{const l=x.length-s;d.setSelectionRange(l,l,"backward")}else if(T===!0){const l=Math.max(0,g.indexOf(V),Math.min(m.length,f)-1);S.right(d,l,l)}else{const l=f-1;S.right(d,l,l)}});const I=e.unmaskedValue===!0?E(x):x;String(e.modelValue)!==I&&u(I,!0)}function Z(o,r,a){const d=L(E(o.value));r=Math.max(0,g.indexOf(V),Math.min(d.length,r)),o.setSelectionRange(r,a,"forward")}const S={left(o,r,a,d){const f=g.slice(r-1).indexOf(V)===-1;let s=Math.max(0,r-1);for(;s>=0;s--)if(g[s]===V){r=s,f===!0&&r++;break}if(s<0&&g[r]!==void 0&&g[r]!==V)return S.right(o,0,0);r>=0&&o.setSelectionRange(r,d===!0?a:r,"backward")},right(o,r,a,d){const f=o.value.length;let s=Math.min(f,a+1);for(;s<=f;s++)if(g[s]===V){a=s;break}else g[s-1]===V&&(a=s);if(s>f&&g[a-1]!==void 0&&g[a-1]!==V)return S.left(o,f,f);o.setSelectionRange(d?r:a,a,"forward")},leftReverse(o,r,a,d){const f=U(o.value.length);let s=Math.max(0,r-1);for(;s>=0;s--)if(f[s-1]===V){r=s;break}else if(f[s]===V&&(r=s,s===0))break;if(s<0&&f[r]!==void 0&&f[r]!==V)return S.rightReverse(o,0,0);r>=0&&o.setSelectionRange(r,d===!0?a:r,"backward")},rightReverse(o,r,a,d){const f=o.value.length,s=U(f),k=s.slice(0,a+1).indexOf(V)===-1;let m=Math.min(f,a+1);for(;m<=f;m++)if(s[m-1]===V){a=m,a>0&&k===!0&&a--;break}if(m>f&&s[a-1]!==void 0&&s[a-1]!==V)return S.leftReverse(o,f,f);o.setSelectionRange(d===!0?r:a,a,"forward")}};function O(o){if(t("keydown",o),Ve(o)===!0)return;const r=i.value,a=r.selectionStart,d=r.selectionEnd;if(o.keyCode===37||o.keyCode===39){const f=S[(o.keyCode===39?"right":"left")+(e.reverseFillMask===!0?"Reverse":"")];o.preventDefault(),f(r,a,d,o.shiftKey)}else o.keyCode===8&&e.reverseFillMask!==!0&&a===d?S.left(r,a,d,!0):o.keyCode===46&&e.reverseFillMask===!0&&a===d&&S.rightReverse(r,a,d,!0)}function L(o){if(o==null||o==="")return"";if(e.reverseFillMask===!0)return N(o);const r=h;let a=0,d="";for(let f=0;f<r.length;f++){const s=o[a],k=r[f];if(typeof k=="string")d+=k,s===k&&a++;else if(s!==void 0&&k.regex.test(s))d+=k.transform!==void 0?k.transform(s):s,a++;else return d}return d}function N(o){const r=h,a=g.indexOf(V);let d=o.length-1,f="";for(let s=r.length-1;s>=0&&d>-1;s--){const k=r[s];let m=o[d];if(typeof k=="string")f=k+f,m===k&&d--;else if(m!==void 0&&k.regex.test(m))do f=(k.transform!==void 0?k.transform(m):m)+f,d--,m=o[d];while(a===s&&m!==void 0&&k.regex.test(m));else return f}return f}function E(o){return typeof o!="string"||C===void 0?typeof o=="number"?C(""+o):o:C(o)}function $(o){return v.length-o.length<=0?o:e.reverseFillMask===!0&&o.length>0?v.slice(0,-o.length)+o:o+v.slice(o.length)}return{innerValue:F,hasMask:w,moveCursorForPaste:Z,updateMaskValue:_,onMaskedKeydown:O}}const Je={name:String};function ut(e={}){return(t,u,i)=>{t[u](b("input",{class:"hidden"+(i||""),...e.value}))}}function We(e){return p(()=>e.name||e.for)}function Ge(e,t){function u(){const i=e.modelValue;try{const g="DataTransfer"in window?new DataTransfer:"ClipboardEvent"in window?new ClipboardEvent("").clipboardData:void 0;return Object(i)===i&&("length"in i?Array.from(i):[i]).forEach(v=>{g.items.add(v)}),{files:g.files}}catch{return{files:void 0}}}return t===!0?p(()=>{if(e.type==="file")return u()}):p(u)}const Xe=/[\u3000-\u303f\u3040-\u309f\u30a0-\u30ff\uff00-\uff9f\u4e00-\u9faf\u3400-\u4dbf]/,Ye=/[\u4e00-\u9fff\u3400-\u4dbf\u{20000}-\u{2a6df}\u{2a700}-\u{2b73f}\u{2b740}-\u{2b81f}\u{2b820}-\u{2ceaf}\uf900-\ufaff\u3300-\u33ff\ufe30-\ufe4f\uf900-\ufaff\u{2f800}-\u{2fa1f}]/u,et=/[\u3131-\u314e\u314f-\u3163\uac00-\ud7a3]/,tt=/[a-z0-9_ -]$/i;function ot(e){return function(u){if(u.type==="compositionend"||u.type==="change"){if(u.target.qComposing!==!0)return;u.target.qComposing=!1,e(u)}else u.type==="compositionupdate"&&u.target.qComposing!==!0&&typeof u.data=="string"&&(Ae.is.firefox===!0?tt.test(u.data)===!1:Xe.test(u.data)===!0||Ye.test(u.data)===!0||et.test(u.data)===!0)===!0&&(u.target.qComposing=!0)}}const it=$e({name:"QInput",inheritAttrs:!1,props:{...Le,...He,...Je,modelValue:{required:!1},shadowText:String,type:{type:String,default:"text"},debounce:[String,Number],autogrow:Boolean,inputClass:[Array,String,Object],inputStyle:[Array,String,Object]},emits:[...Ue,"paste","change","keydown","animationend"],setup(e,{emit:t,attrs:u}){const{proxy:i}=J(),{$q:g}=i,v={};let h=NaN,C,w,F,M;const y=j(null),U=We(e),{innerValue:R,hasMask:_,moveCursorForPaste:Z,updateMaskValue:S,onMaskedKeydown:O}=Qe(e,t,T,y),L=Ge(e,!0),N=p(()=>re(R.value)),E=ot(m),$=Ze(),o=p(()=>e.type==="textarea"||e.autogrow===!0),r=p(()=>o.value===!0||["text","search","url","tel","password"].includes(e.type)),a=p(()=>{const n={...$.splitAttrs.listeners.value,onInput:m,onPaste:k,onChange:l,onBlur:c,onFocus:ue};return n.onCompositionstart=n.onCompositionupdate=n.onCompositionend=E,_.value===!0&&(n.onKeydown=O),e.autogrow===!0&&(n.onAnimationend=x),n}),d=p(()=>{const n={tabindex:0,"data-autofocus":e.autofocus===!0||void 0,rows:e.type==="textarea"?6:void 0,"aria-label":e.label,name:U.value,...$.splitAttrs.attributes.value,id:$.targetUid.value,maxlength:e.maxlength,disabled:e.disable===!0,readonly:e.readonly===!0};return o.value===!1&&(n.type=e.type),e.autogrow===!0&&(n.rows=1),n});D(()=>e.type,()=>{y.value&&(y.value.value=e.modelValue)}),D(()=>e.modelValue,n=>{if(_.value===!0){if(w===!0&&(w=!1,String(n)===h))return;S(n)}else R.value!==n&&(R.value=n,e.type==="number"&&v.hasOwnProperty("value")===!0&&(C===!0?C=!1:delete v.value));e.autogrow===!0&&K(I)}),D(()=>e.autogrow,n=>{n===!0?K(I):y.value!==null&&u.rows>0&&(y.value.style.height="auto")}),D(()=>e.dense,()=>{e.autogrow===!0&&K(I)});function f(){pe(()=>{const n=document.activeElement;y.value!==null&&y.value!==n&&(n===null||n.id!==$.targetUid.value)&&y.value.focus({preventScroll:!0})})}function s(){y.value!==null&&y.value.select()}function k(n){if(_.value===!0&&e.reverseFillMask!==!0){const q=n.target;Z(q,q.selectionStart,q.selectionEnd)}t("paste",n)}function m(n){if(!n||!n.target)return;if(e.type==="file"){t("update:modelValue",n.target.files);return}const q=n.target.value;if(n.target.qComposing===!0){v.value=q;return}if(_.value===!0)S(q,!1,n.inputType);else if(T(q),r.value===!0&&n.target===document.activeElement){const{selectionStart:A,selectionEnd:H}=n.target;A!==void 0&&H!==void 0&&K(()=>{n.target===document.activeElement&&q.indexOf(n.target.value)===0&&n.target.setSelectionRange(A,H)})}e.autogrow===!0&&I()}function x(n){t("animationend",n),I()}function T(n,q){M=()=>{e.type!=="number"&&v.hasOwnProperty("value")===!0&&delete v.value,e.modelValue!==n&&h!==n&&(h=n,q===!0&&(w=!0),t("update:modelValue",n),K(()=>{h===n&&(h=NaN)})),M=void 0},e.type==="number"&&(C=!0,v.value=n),e.debounce!==void 0?(clearTimeout(F),v.value=n,F=setTimeout(M,e.debounce)):M()}function I(){requestAnimationFrame(()=>{const n=y.value;if(n!==null){const q=n.parentNode.style,{overflow:A}=n.style;g.platform.is.firefox!==!0&&(n.style.overflow="hidden"),q.marginBottom=n.scrollHeight-1+"px",n.style.height="1px",n.style.height=n.scrollHeight+"px",n.style.overflow=A,q.marginBottom=""}})}function l(n){E(n),clearTimeout(F),M!==void 0&&M(),t("change",n.target.value)}function c(n){n!==void 0&&ue(n),clearTimeout(F),M!==void 0&&M(),C=!1,w=!1,delete v.value,e.type!=="file"&&setTimeout(()=>{y.value!==null&&(y.value.value=R.value!==void 0?R.value:"")})}function P(){return v.hasOwnProperty("value")===!0?v.value:R.value!==void 0?R.value:""}te(()=>{c()}),ae(()=>{e.autogrow===!0&&I()}),Object.assign($,{innerValue:R,fieldClass:p(()=>`q-${o.value===!0?"textarea":"input"}`+(e.autogrow===!0?" q-textarea--autogrow":"")),hasShadow:p(()=>e.type!=="file"&&typeof e.shadowText=="string"&&e.shadowText.length>0),inputRef:y,emitValue:T,hasValue:N,floatingLabel:p(()=>N.value===!0||re(e.displayValue)),getControl:()=>b(o.value===!0?"textarea":"input",{ref:y,class:["q-field__native q-placeholder",e.inputClass],style:e.inputStyle,...d.value,...a.value,...e.type!=="file"?{value:P()}:L.value}),getShadowControl:()=>b("div",{class:"q-field__native q-field__shadow absolute-bottom no-pointer-events"+(o.value===!0?"":" text-no-wrap")},[b("span",{class:"invisible"},P()),b("span",e.shadowText)])});const z=Ne($);return Object.assign(i,{focus:f,select:s,getNativeElement:()=>y.value}),he(i,"nativeEl",()=>y.value),z}});export{it as Q,ut as a,Le as b,Ue as c,Ne as d,Ze as e,We as f,re as g,ot as h,Je as u};