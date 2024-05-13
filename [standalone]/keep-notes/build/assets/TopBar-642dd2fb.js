import{u as M,a as G,Q as _}from"./QInput-5c77434c.js";import{u as K,a as W,Q as H,b as p}from"./QBtn-cf576227.js";import{c as S,h as T,a as J}from"./Note-5ef67584.js";import{u as r,h as c,r as P,g as X,v as m,s as q,_ as Y,A as Z,i as C,x as w,y as v,t as i,k as B,T as ee,q as te}from"./index-2d3c0272.js";import{u as ne,a as le}from"./use-dark-60db826c.js";const oe=S({name:"QBtnGroup",props:{unelevated:Boolean,outline:Boolean,flat:Boolean,rounded:Boolean,square:Boolean,push:Boolean,stretch:Boolean,glossy:Boolean,spread:Boolean},setup(l,{slots:t}){const e=r(()=>{const s=["unelevated","outline","flat","rounded","square","push","stretch","glossy"].filter(u=>l[u]===!0).map(u=>`q-btn-group--${u}`).join(" ");return`q-btn-group row no-wrap${s.length>0?" "+s:""}`+(l.spread===!0?" q-btn-group--spread":" inline")});return()=>c("div",{class:e.value},T(t.default))}});function ae(l,t){const e=P(null),s=r(()=>l.disable===!0?null:c("span",{ref:e,class:"no-outline",tabindex:-1}));function u(a){const o=t.value;a!==void 0&&a.type.indexOf("key")===0?o!==null&&document.activeElement!==o&&o.contains(document.activeElement)===!0&&o.focus():e.value!==null&&(a===void 0||o!==null&&o.contains(a.target)===!0)&&e.value.focus()}return{refocusTargetEl:s,refocusTarget:u}}const re={xs:30,sm:35,md:40,lg:50,xl:60},se={...le,...W,...M,modelValue:{required:!0,default:null},val:{},trueValue:{default:!0},falseValue:{default:!1},indeterminateValue:{default:null},checkedIcon:String,uncheckedIcon:String,indeterminateIcon:String,toggleOrder:{type:String,validator:l=>l==="tf"||l==="ft"},toggleIndeterminate:Boolean,label:String,leftLabel:Boolean,color:String,keepColor:Boolean,dense:Boolean,disable:Boolean,tabindex:[String,Number]},ue=["update:modelValue"];function ie(l,t){const{props:e,slots:s,emit:u,proxy:a}=X(),{$q:o}=a,$=ne(e,o),x=P(null),{refocusTargetEl:y,refocusTarget:j}=ae(e,x),O=K(e,re),g=r(()=>e.val!==void 0&&Array.isArray(e.modelValue)),h=r(()=>{const n=m(e.val);return g.value===!0?e.modelValue.findIndex(f=>m(f)===n):-1}),d=r(()=>g.value===!0?h.value>-1:m(e.modelValue)===m(e.trueValue)),b=r(()=>g.value===!0?h.value===-1:m(e.modelValue)===m(e.falseValue)),V=r(()=>d.value===!1&&b.value===!1),A=r(()=>e.disable===!0?-1:e.tabindex||0),N=r(()=>`q-${l} cursor-pointer no-outline row inline no-wrap items-center`+(e.disable===!0?" disabled":"")+($.value===!0?` q-${l}--dark`:"")+(e.dense===!0?` q-${l}--dense`:"")+(e.leftLabel===!0?" reverse":"")),Q=r(()=>{const n=d.value===!0?"truthy":b.value===!0?"falsy":"indet",f=e.color!==void 0&&(e.keepColor===!0||(l==="toggle"?d.value===!0:b.value!==!0))?` text-${e.color}`:"";return`q-${l}__inner relative-position non-selectable q-${l}__inner--${n}${f}`}),E=r(()=>{const n={type:"checkbox"};return e.name!==void 0&&Object.assign(n,{".checked":d.value,"^checked":d.value===!0?"checked":void 0,name:e.name,value:g.value===!0?e.val:e.trueValue}),n}),F=G(E),U=r(()=>{const n={tabindex:A.value,role:l==="toggle"?"switch":"checkbox","aria-label":e.label,"aria-checked":V.value===!0?"mixed":d.value===!0?"true":"false"};return e.disable===!0&&(n["aria-disabled"]="true"),n});function k(n){n!==void 0&&(q(n),j(n)),e.disable!==!0&&u("update:modelValue",z(),n)}function z(){if(g.value===!0){if(d.value===!0){const n=e.modelValue.slice();return n.splice(h.value,1),n}return e.modelValue.concat([e.val])}if(d.value===!0){if(e.toggleOrder!=="ft"||e.toggleIndeterminate===!1)return e.falseValue}else if(b.value===!0){if(e.toggleOrder==="ft"||e.toggleIndeterminate===!1)return e.trueValue}else return e.toggleOrder!=="ft"?e.trueValue:e.falseValue;return e.indeterminateValue}function D(n){(n.keyCode===13||n.keyCode===32)&&q(n)}function L(n){(n.keyCode===13||n.keyCode===32)&&k(n)}const R=t(d,V);return Object.assign(a,{toggle:k}),()=>{const n=R();e.disable!==!0&&F(n,"unshift",` q-${l}__native absolute q-ma-none q-pa-none`);const f=[c("div",{class:Q.value,style:O.value,"aria-hidden":"true"},n)];y.value!==null&&f.push(y.value);const I=e.label!==void 0?J(s.default,[e.label]):T(s.default);return I!==void 0&&f.push(c("div",{class:`q-${l}__label q-anchor--skip`},I)),c("div",{ref:x,class:N.value,...U.value,onClick:k,onKeydown:D,onKeyup:L},f)}}const de=S({name:"QToggle",props:{...se,icon:String,iconColor:String},emits:ue,setup(l){function t(e,s){const u=r(()=>(e.value===!0?l.checkedIcon:s.value===!0?l.indeterminateIcon:l.uncheckedIcon)||l.icon),a=r(()=>e.value===!0?l.iconColor:null);return()=>[c("div",{class:"q-toggle__track"}),c("div",{class:"q-toggle__thumb absolute flex flex-center no-wrap"},u.value!==void 0?[c(H,{name:u.value,color:a.value})]:void 0)]}return ie("toggle",t)}});const ce={props:{type:String,note:Object,paper_count:Object},methods:{async newItem(l=!1){let t=()=>{this.note.lines.push({value:"",amount:0})};if(!(this.note.lines.length>=22))if(l){const e=this.note.lines.length;for(let s=0;s<22-e;s++)t()}else t()},sfx(){this.audio&&this.audio.pause(),this.audio=new Audio("./sfx/ripping-paper-7123.mp3"),this.audio.volume=.5,this.audio.play()},resetNote(){this.$root.reset()},async addPaper(){await Z.POST("addPaper",{id:this.$root.getId(),request:this.paper_count.request})}},computed:{isTorn(){return this.$root.paper_count.value<=0||this.$root.torn}}},fe={class:"bg-grey-10 q-pa-sm sticky-top"},me={class:"top"},ve={class:"note-header",style:{display:"flex","justify-content":"space-between","align-items":"center"}},ge={style:{display:"flex","justify-content":"space-between","align-items":"center"}},pe={style:{display:"flex","justify-content":"space-between","align-items":"center"}},be={key:0},he={class:"note-header"},ke={class:"toggle"};function _e(l,t,e,s,u,a){return C(),w("div",fe,[v("div",me,[v("div",ve,[v("div",ge,[i(_,{borderless:"",dense:"",label:"Paper",modelValue:e.paper_count.value,"onUpdate:modelValue":t[0]||(t[0]=o=>e.paper_count.value=o),modelModifiers:{number:!0},type:"number",dark:"",readonly:"",style:{"max-width":"5rem"}},null,8,["modelValue"])]),v("div",pe,[i(_,{borderless:"",dense:"",label:"Papers",modelValue:e.paper_count.request,"onUpdate:modelValue":t[1]||(t[1]=o=>e.paper_count.request=o),modelModifiers:{number:!0},type:"number",dark:"",style:{"max-width":"5rem"}},null,8,["modelValue"]),i(p,{color:"green",label:"Add Paper",onClick:t[2]||(t[2]=o=>a.addPaper())})])]),i(ee,{name:"scale"},{default:B(()=>[a.isTorn?te("",!0):(C(),w("div",be,[i(oe,{spread:""},{default:B(()=>[i(p,{color:"green",label:"FUll Length",icon:"note",onClick:t[3]||(t[3]=o=>a.newItem(!0))}),i(p,{color:"green",label:"New Line",icon:"note",onClick:t[4]||(t[4]=o=>a.newItem())}),i(p,{color:"red-8",label:"Clear Note",icon:"fa fa-broom",onClick:t[5]||(t[5]=o=>a.resetNote())}),i(p,{type:"submit",color:"primary",label:"Write",icon:"fa fa-save",onClick:t[6]||(t[6]=o=>a.sfx())})]),_:1}),v("div",he,[i(_,{modelValue:e.note.signature,"onUpdate:modelValue":t[7]||(t[7]=o=>e.note.signature=o),borderless:"",label:"Signature",dense:"",dark:"","hide-bottom-space":""},null,8,["modelValue"]),v("div",ke,[i(de,{modelValue:e.note.show_index,"onUpdate:modelValue":t[8]||(t[8]=o=>e.note.show_index=o),"checked-icon":"check",color:"teal","unchecked-icon":"clear",label:e.note.show_index?"Disable Index":"Enable Index","left-label":""},null,8,["modelValue","label"])])])]))]),_:1})])])}const Ce=Y(ce,[["render",_e],["__scopeId","data-v-76405129"]]);export{Ce as default};
