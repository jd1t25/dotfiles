"use strict";(("undefined"!=typeof self?self:global).webpackChunkopen=("undefined"!=typeof self?self:global).webpackChunkopen||[]).push([[4669],{30483:(t,e,r)=>{r.r(e),r.d(e,{EPISODE_SPONSOR_NOW_PLAYING_BAR_HAT_CALL_TO_ACTION_BUTTON_TEST_ID:()=>c,EpisodeSponsorNowPlayingBarHatButtonWrapper:()=>i,default:()=>s});var n=r(98539),o=r(19637),a=r(4637),c="episode-sponsor-now-playing-bar-hat-call-to-action-button";function i(t){var e=t.postClickEvent,r=t.clickUrl,i=t.adEvent;return(0,a.jsx)("div",{className:o.Z.buttonWrapper,children:(0,a.jsx)(n.K,{to:r,"data-testid":c,onClick:e,crossPromoVariant:"buttonAction"in i.ad.metadata?i.ad.metadata:void 0,children:i.ad.metadata.buttonMessage})})}const s=i},14669:(t,e,r)=>{r.r(e),r.d(e,{EPISODE_SPONSOR_NOW_PLAYING_BAR_HAT_CALL_TO_ACTION_BUTTON_TEST_ID:()=>v.EPISODE_SPONSOR_NOW_PLAYING_BAR_HAT_CALL_TO_ACTION_BUTTON_TEST_ID,EPISODE_SPONSOR_NOW_PLAYING_BAR_HAT_WRAPPER_TEST_ID:()=>j,EpisodeSponsorNowPlayingBarHatWrapper:()=>g,default:()=>y});var n=r(45389),o=(r(83001),r(22369),r(8760),r(27639),r(71756),r(59496)),a=r(84875),c=r.n(a),i=r(59272),s=r(39130),l=(r(59538),r(79611),r(3269)),d=r(3531),u=r(35103);r(40274);function p(t){var e=function(t){var e=t.adEvent,r=t.ad;return(0,o.useMemo)((function(){var t,n;return null===(t=("true"===(null==e?void 0:e.ad.metadata.useAdvertiserImage)?null==e||null===(n=e.ad.cover_art)||void 0===n?void 0:n.find((function(t){return t.url})):void 0)||(null==r?void 0:r.images.find((function(t){return t.url}))))||void 0===t?void 0:t.url}),[e,r])}({adEvent:t.adEvent,ad:t.ad}),r=(0,o.useState)(),n=(0,s.Z)(r,2),a=n[0],c=n[1],i=(0,o.useMemo)((function(){return a instanceof Error?l.fwM:null==a?void 0:a.colorDark.toCSS(d.jT.RGB)}),[a]);return(0,o.useEffect)((function(){c(void 0),e&&(0,u.extractColors)(e).then(c).catch((function(){return c(new Error("color not extracted successfully for episode NPB hat"))}))}),[e]),{extractedColor:i}}var O=r(7974),f=r(19637),b=r(4637),v=r(30483),j="episode-sponsor-now-playing-bar-hat-wrapper",P=(0,o.lazy)((function(){return Promise.resolve().then(r.bind(r,30483))}));function g(t){var e,r=t.adEvent,a=t.hidingHat,s=t.ad,l=t.postClickEvent,d=p({adEvent:r,ad:s}).extractedColor,u=r.ad.metadata,v=u.tagline,g=u.buttonMessage,y="true"===r.ad.metadata.useClickURL?(null===(e=(0,i.EC)(r.ad.click_url))||void 0===e?void 0:e.toURLPath(!0))||r.ad.click_url:void 0;return(0,b.jsx)("div",{className:f.Z.wrapperBackground,children:(0,b.jsxs)("div",{className:c()(d?f.Z.wrapperWithColorExtracted:f.Z.wrapper,(0,n.Z)({},f.Z.hidingHat,a)),style:{backgroundColor:d},"data-testid":j,children:[(0,b.jsx)(O.S,{className:f.Z.tagline,children:v}),g&&y&&(0,b.jsx)(o.Suspense,{fallback:!0,children:(0,b.jsx)(P,{postClickEvent:l,clickUrl:y,adEvent:r})})]})})}const y=g},98539:(t,e,r)=>{r.d(e,{K:()=>j});var n=r(45389),o=r(980),a=(r(83001),r(22369),r(8760),r(27639),r(71756),r(95675),r(61235),r(62780),r(7845),r(29543),r(70969),r(66715),r(30479),r(75341),r(59496)),c=r(84875),i=r.n(c),s=r(46206),l=r(30789),d=r(60359);const u={podcastSponsorCallToActionButton:"WI4OWZsbabgCus7t7tbe"};var p=r(4637),O=["children","data-testid","className","crossPromoVariant"];function f(t,e){var r=Object.keys(t);if(Object.getOwnPropertySymbols){var n=Object.getOwnPropertySymbols(t);e&&(n=n.filter((function(e){return Object.getOwnPropertyDescriptor(t,e).enumerable}))),r.push.apply(r,n)}return r}function b(t){for(var e=1;e<arguments.length;e++){var r=null!=arguments[e]?arguments[e]:{};e%2?f(Object(r),!0).forEach((function(e){(0,n.Z)(t,e,r[e])})):Object.getOwnPropertyDescriptors?Object.defineProperties(t,Object.getOwnPropertyDescriptors(r)):f(Object(r)).forEach((function(e){Object.defineProperty(t,e,Object.getOwnPropertyDescriptor(r,e))}))}return t}var v=(0,a.lazy)((function(){return r.e(2743).then(r.bind(r,92743))}));function j(t){var e=t.children,r=t["data-testid"],n=t.className,c=t.crossPromoVariant,f=(0,o.Z)(t,O),j=(0,a.useMemo)((function(){return(0,p.jsx)(l.x,b(b({},"to"in f?{to:f.to}:void 0),{},{children:(0,p.jsx)(s.PodcastSponsorCallToActionButtonBase,b({children:e},f))}))}),[e,f]);return(0,p.jsx)("div",{className:i()(u.podcastSponsorCallToActionButton,n),"data-testid":r,children:c&&c.buttonAction!==d.kI?(0,p.jsx)(a.Suspense,{fallback:j,children:(0,p.jsx)("div",{children:(0,p.jsx)(v,b({crossPromoVariant:c,children:e,potentiallyMalformedUri:"to"in f?f.to:void 0},f))})}):j})}},46206:(t,e,r)=>{r.r(e),r.d(e,{PodcastSponsorCallToActionButtonBase:()=>u,default:()=>p});r(95675),r(61235),r(62780),r(22369),r(7845),r(29543),r(70969),r(66715),r(30479),r(75341);var n=r(45389),o=r(980),a=r(63892),c=r(10506),i=r(4637),s=["children"];function l(t,e){var r=Object.keys(t);if(Object.getOwnPropertySymbols){var n=Object.getOwnPropertySymbols(t);e&&(n=n.filter((function(e){return Object.getOwnPropertyDescriptor(t,e).enumerable}))),r.push.apply(r,n)}return r}function d(t){for(var e=1;e<arguments.length;e++){var r=null!=arguments[e]?arguments[e]:{};e%2?l(Object(r),!0).forEach((function(e){(0,n.Z)(t,e,r[e])})):Object.getOwnPropertyDescriptors?Object.defineProperties(t,Object.getOwnPropertyDescriptors(r)):l(Object(r)).forEach((function(e){Object.defineProperty(t,e,Object.getOwnPropertyDescriptor(r,e))}))}return t}function u(t){var e=t.children,r=(0,o.Z)(t,s);return(0,i.jsx)(a.D,d(d({as:"div"},r),{},{buttonSize:r.buttonSize||a.D.sm,children:(0,i.jsx)(c.D,{variant:"mestoBold",children:e})}))}const p=u},30789:(t,e,r)=>{r.d(e,{x:()=>l});var n=r(45389),o=(r(83001),r(22369),r(8760),r(27639),r(71756),r(95675),r(61235),r(62780),r(7845),r(29543),r(70969),r(66715),r(30479),r(75341),r(59496)),a=r(4637);function c(t,e){var r=Object.keys(t);if(Object.getOwnPropertySymbols){var n=Object.getOwnPropertySymbols(t);e&&(n=n.filter((function(e){return Object.getOwnPropertyDescriptor(t,e).enumerable}))),r.push.apply(r,n)}return r}function i(t){for(var e=1;e<arguments.length;e++){var r=null!=arguments[e]?arguments[e]:{};e%2?c(Object(r),!0).forEach((function(e){(0,n.Z)(t,e,r[e])})):Object.getOwnPropertyDescriptors?Object.defineProperties(t,Object.getOwnPropertyDescriptors(r)):c(Object(r)).forEach((function(e){Object.defineProperty(t,e,Object.getOwnPropertyDescriptor(r,e))}))}return t}var s=(0,o.lazy)((function(){return Promise.resolve().then(r.bind(r,88843))}));function l(t){return"to"in t?(0,a.jsx)(s,i({},t)):(0,a.jsx)("div",i({},t))}},7974:(t,e,r)=>{r.d(e,{S:()=>u});r(95675),r(61235),r(62780),r(22369),r(7845),r(29543),r(70969),r(66715),r(30479),r(75341);var n=r(45389),o=r(84875),a=r.n(o),c=r(10506);const i={podcastSponsorWrapper:"J5CRaPNhkzTtun81ix4_",podcastSponsor:"Ydj9D6hTaRL_zq6TPLQi",podcastSponsorExternalLink:"X77gJ8bX8tndSN1hTjWR",podcastSponsorImage:"eHZ28TWANGnQvU01g2oY",podcastSponsorCaption:"v2F4iVnwnrHtPu5GC9HB",podcastSponsorAdvertiser:"DHBG_yrmCz0kKTXhkmbE",podcastSponsorButtonMessage:"wChs0Q3HkTdKiBoQ33bT",podcastSponsorCtaButtonWrapper:"gUwjluEACtt5LCUu5sxp",podcastSponsorCtaCardButton:"DJbGzgDKx2qXorbxCZzW",podcastSponsorTagline:"WQ3nvVdLWEI08Z4V2iY4"};var s=r(4637);function l(t,e){var r=Object.keys(t);if(Object.getOwnPropertySymbols){var n=Object.getOwnPropertySymbols(t);e&&(n=n.filter((function(e){return Object.getOwnPropertyDescriptor(t,e).enumerable}))),r.push.apply(r,n)}return r}function d(t){for(var e=1;e<arguments.length;e++){var r=null!=arguments[e]?arguments[e]:{};e%2?l(Object(r),!0).forEach((function(e){(0,n.Z)(t,e,r[e])})):Object.getOwnPropertyDescriptors?Object.defineProperties(t,Object.getOwnPropertyDescriptors(r)):l(Object(r)).forEach((function(e){Object.defineProperty(t,e,Object.getOwnPropertyDescriptor(r,e))}))}return t}function u(t){return(0,s.jsx)(c.D,d(d({},t),{},{variant:t.variant||"mesto",className:a()(i.podcastSponsorTagline,t.className)}))}},60359:(t,e,r)=>{r.d(e,{Pu:()=>o,kI:()=>n});var n="navigate",o="follow"},19637:(t,e,r)=>{r.d(e,{Z:()=>n});const n={wrapper:"KflyrIKeuFlbO02lH6gm",wrapperWithColorExtracted:"qWdZTWdaXPdqwCSb87wz",hidingHat:"Txlz4u73RM9Zgbe2rhEM",tagline:"Aj1dcimNye8mDxkfl2Xx",buttonWrapper:"Q8qs2J1vk9j0ZsaEEXUK",wrapperBackground:"lnrpcUtos2gCwG94AQWj"}}}]);
//# sourceMappingURL=4669.js.map