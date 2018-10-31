StackExchange.postValidation=function(){function e(e,t,n,i){var o=e.find('input[type="submit"]:visible, button[type="submit"]:visible'),a=o.length&&o.is(":enabled");a&&o.attr("disabled",!0),r(e,i),s(e,t,n,i),l(e),u(e),d(e);var p=function(){1!=t||e.find(E).length?(c(e,i),a&&o.attr("disabled",!1)):setTimeout(p,250)};p()}function t(t,i,r,s,c,l){e(t,i,s,r);var u,d=function(e){if(e.success)if(c)c(e);else{var n=window.location.href.split("#")[0],o=e.redirectTo.split("#")[0];0==o.indexOf("/")&&(o=window.location.protocol+"//"+window.location.hostname+o),u=!0,window.location=e.redirectTo,n.toLowerCase()==o.toLowerCase()&&window.location.reload(!0)}else e.captchaHtml?StackExchange.nocaptcha.init(e.captchaHtml,d):e.errors?(t.find("input[name=priorAttemptCount]").val(function(e,t){return(+t+1||0).toString()}),f(e.errors,t,i,r,e.warnings)):t.find('input[type="submit"]:visible, button[type="submit"]:visible').parent().showErrorMessage(e.message)};t.submit(function(){var e=t.find('input[type="submit"]:visible, button[type="submit"]:visible');if(l&&"true"!==t.find("#ask-public-confirmed").val())return e.loadPopup({"url":"/questions/ask/confirm","lightbox":!0,"loaded":function(e){var n=$(e);n.find(".popup-submit").click(function(e){e.preventDefault(),StackExchange.helpers.closePopups(n),t.find("#ask-public-confirmed").val("true"),t.submit()})}}),!1;if(t.find("#answer-from-ask").is(":checked"))return!0;var i=t.find(I);if("[Edit removed during grace period]"==$.trim(i.val()))return m(i,["Comment reserved for system use. Please use an appropriate comment."],p()),!1;if(a(),StackExchange.navPrevention&&StackExchange.navPrevention.stop(),e.parent().addSpinner(),StackExchange.helpers.disableSubmitButton(t),StackExchange.options.site.enableNewTagCreationWarning){var s=t.find(E).parent().find("input#tagnames"),c=s.prop("defaultValue");if(s.val()!==c)return $.ajax({"type":"GET","url":"/posts/new-tags-warning","dataType":"json","data":{"tags":s.val()},"success":function(i){i.showWarning?e.loadPopup({"html":i.html,"dontShow":!0,"prepend":!0,"loaded":function(e){n(e,t,u,r,d)}}):o(t,r,u,d)}}),!1}return setTimeout(function(){o(t,r,u,d)},0),!1})}function n(e,t,n,a,r){e.bind("popupClose",function(){i(t,n)}),e.find(".submit-post").click(function(i){return StackExchange.helpers.closePopups(e),o(t,a,n,r),i.preventDefault(),!1}),e.show()}function i(e,t){StackExchange.helpers.removeSpinner(),t||StackExchange.helpers.enableSubmitButton(e)}function o(e,t,n,o){$.ajax({"type":"POST","dataType":"json","data":e.serialize(),"url":e.attr("action"),"success":o,"error":function(){var n;switch(t){case"question":n="An error occurred submitting the question.";break;case"answer":n="An error occurred submitting the answer.";break;case"edit":n="An error occurred submitting the edit.";break;case"tags":n="An error occurred submitting the tags.";break;case"post":default:n="An error occurred submitting the post."}e.find('input[type="submit"]:visible, button[type="submit"]:visible').parent().showErrorMessage(n)},"complete":function(){i(e,n)}})}function a(){for(var e=0;e<P.length;e++)clearTimeout(P[e]);P=[]}function r(e,t){var n=e.find(x);n.length&&n.blur(function(){P.push(setTimeout(function(){var i=n.val(),o=$.trim(i);if(0==o.length)return y(e,n),void 0;var a=n.data("min-length");if(a&&o.length<a)return m(n,[function(e){return 1==e.minLength?"Title must be at least "+e.minLength+" character.":"Title must be at least "+e.minLength+" characters."}({"minLength":a})],p()),void 0;var r=n.data("max-length");return r&&o.length>r?(m(n,[function(e){return 1==e.maxLength?"Title cannot be longer than "+e.maxLength+" character.":"Title cannot be longer than "+e.maxLength+" characters."}({"maxLength":r})],p()),void 0):($.ajax({"type":"POST","url":"/posts/validate-title","data":{"title":i},"success":function(i){i.success?y(e,n):m(n,i.errors.Title,p()),"edit"!=t&&g(e,n,i.warnings.Title)},"error":function(){y(e,n)}}),void 0)},O))})}function s(e,t,n,i){var o=e.find(S);o.length&&o.blur(function(){P.push(setTimeout(function(){var a=o.val(),r=$.trim(a);if(0==r.length)return y(e,o),void 0;if(5==t){var s=o.data("min-length");return s&&r.length<s?m(o,[function(e){return"Wiki Body must be at least "+e.minLength+" characters. You entered "+e.actual+"."}({"minLength":s,"actual":r.length})],p()):y(e,o),void 0}(1==t||2==t)&&$.ajax({"type":"POST","url":"/posts/validate-body","data":{"body":a,"oldBody":o.prop("defaultValue"),"isQuestion":1==t,"isSuggestedEdit":n},"success":function(t){t.success?y(e,o):m(o,t.errors.Body,p()),"edit"!=i&&g(e,o,t.warnings.Body)},"error":function(){y(e,o)}})},O))})}function c(e,t){var n=e.find(E);if(n.length){var i=n.parent().find("input#tagnames");i.blur(function(){P.push(setTimeout(function(){var o=i.val(),a=$.trim(o);return 0==a.length?(y(e,n),void 0):($.ajax({"type":"POST","url":"/posts/validate-tags","data":{"tags":o,"oldTags":i.prop("defaultValue")},"success":function(i){if(i.success?y(e,n):m(n,i.errors.Tags,p()),"edit"!=t&&(g(e,n,i.warnings.Tags),i.source&&i.source.Tags&&i.source.Tags.length)){var o=$("#post-form input[name='warntags']");o&&StackExchange.using("gps",function(){var e=o.val()||"";$.each(i.source.Tags,function(t,n){n&&!o.data("tag-"+n)&&(o.data("tag-"+n,n),e=e.length?e+" "+n:n,StackExchange.gps.track("tag_warning.show",{"tag":n},!0))}),o.val(e),StackExchange.gps.sendPending()})}},"error":function(){y(e,n)}}),void 0)},O))})}}function l(e){var t=e.find(I);t.length&&t.blur(function(){P.push(setTimeout(function(){var n=t.val(),i=$.trim(n);if(0==i.length)return y(e,t),void 0;var o=t.data("min-length");if(o&&i.length<o)return m(t,[function(e){return 1==e.minLength?"Your edit summary must be at least "+e.minLength+" character.":"Your edit summary must be at least "+e.minLength+" characters."}({"minLength":o})],p()),void 0;var a=t.data("max-length");return a&&i.length>a?(m(t,[function(e){return 1==e.maxLength?"Your edit summary cannot be longer than "+e.maxLength+" character.":"Your edit summary cannot be longer than "+e.maxLength+" characters."}({"maxLength":a})],p()),void 0):(y(e,t),void 0)},O))})}function u(e){var t=e.find(T);t.length&&t.blur(function(){P.push(setTimeout(function(){var n=t.val(),i=$.trim(n);if(0==i.length)return y(e,t),void 0;var o=t.data("min-length");if(o&&i.length<o)return m(t,[function(e){return"Wiki Excerpt must be at least "+e.minLength+" characters; you entered "+e.actual+"."}({"minLength":o,"actual":i.length})],p()),void 0;var a=t.data("max-length");return a&&i.length>a?(m(t,[function(e){return"Wiki Excerpt cannot be longer than "+e.maxLength+" characters; you entered "+e.actual+"."}({"maxLength":a,"actual":i.length})],p()),void 0):(y(e,t),void 0)},O))})}function d(e){var t=e.find(j);t.length&&t.blur(function(){P.push(setTimeout(function(){var n=t.val(),i=$.trim(n);return 0==i.length?(y(e,t),void 0):/^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,20}$/i.test(i)?(y(e,t),void 0):(m(t,["This email does not appear to be valid."],h()),void 0)},O))})}function p(){var e=$("#sidebar, .sidebar").first().width()||270;return{"position":{"my":"left top","at":"right center"},"css":{"max-width":e,"min-width":e},"closeOthers":!1}}function h(){var e=$("#sidebar, .sidebar").first().width()||270;return{"position":{"my":"left top","at":"right center"},"css":{"min-width":e},"closeOthers":!1}}function f(e,t,n,i,o){if(e){var a=function(){var n=0,a=t.find(E),r=t.find(x),s=t.find(S),c=t.find(C);m(r,e.Title,p())?n++:y(t,r),o&&g(t,r,o.Title),m(s,e.Body,p())?n++:y(t,s),o&&g(t,s,o.Body),m(a,e.Tags,p())?n++:y(t,a),m(c,e.Mentions,p())?n++:y(t,c),o&&g(t,a,o.Tags),m(t.find(I),e.EditComment,p())?n++:y(t,t.find(I)),m(t.find(T),e.Excerpt,p())?n++:y(t,t.find(T)),m(t.find(j),e.Email,h())?n++:y(t,t.find(j)),m(t.find(M),e.Confirmation,p())?n++:y(t,t.find(M));var l=t.find(".general-error"),u=e.General&&e.General.length>0;if(u||n>0){if(!l.length){var d=t.find('input[type="submit"]:visible, button[type="submit"]:visible');d.before('<div class="general-error-container"><div class="general-error"></div><br class="cbt" /></div>'),l=t.find(".general-error")}if(u)m(l,e.General,{"position":"inline","css":{"float":"left","margin-bottom":"10px"},"closeOthers":!1,"dismissable":!1});else{y(t,l);var f;switch(i){case"question":f=function(e){return 1==e.specificErrorCount?"Your question couldn't be submitted. Please see the error above.":"Your question couldn't be submitted. Please see the errors above."}({"specificErrorCount":n});break;case"answer":f=function(e){return 1==e.specificErrorCount?"Your answer couldn't be submitted. Please see the error above.":"Your answer couldn't be submitted. Please see the errors above."}({"specificErrorCount":n});break;case"edit":f=function(e){return 1==e.specificErrorCount?"Your edit couldn't be submitted. Please see the error above.":"Your edit couldn't be submitted. Please see the errors above."}({"specificErrorCount":n});break;case"tags":f=function(e){return 1==e.specificErrorCount?"Your tags couldn't be submitted. Please see the error above.":"Your tags couldn't be submitted. Please see the errors above."}({"specificErrorCount":n});break;case"post":default:f=function(e){return 1==e.specificErrorCount?"Your post couldn't be submitted. Please see the error above.":"Your post couldn't be submitted. Please see the errors above."}({"specificErrorCount":n})}l.text(f)}}else t.find(".general-error-container").remove();var v;w()&&($("#sidebar").animate({"opacity":.4},500),v=setInterval(function(){w()||($("#sidebar").animate({"opacity":1},500),clearInterval(v))},500));var b;t.find(".validation-error").each(function(){var e=$(this).offset().top;(!b||b>e)&&(b=e)});var k=function(){for(var e=0;3>e;e++)t.find(".message").animate({"left":"+=5px"},100).animate({"left":"-=5px"},100)};if(b){var P=$(".review-bar").length;b=Math.max(0,b-(P?125:30)),$("html, body").animate({"scrollTop":b},k)}else k()},r=function(){1!=n||t.find(E).length?a():setTimeout(r,250)};r()}}function g(e,t,n){var i=p();if(i.type="warning",!n||0==n.length)return b(e,t),!1;var o=t.data("error-popup"),a=0;return o&&(a=o.height()+5),v(t,n,i,a)}function m(e,t,n){return n.type="error",v(e,t,n)}function v(e,t,n,i){var o,r=n.type;if(!(t&&0!=t.length&&e.length&&$("html").has(e).length))return!1;if(o=1==t.length?t[0]:"<ul><li>"+t.join("</li><li>")+"</li></ul>",o&&o.length>0){var s=e.data(r+"-popup");if(s&&s.is(":visible")){var c=e.data(r+"-message");if(c==o)return s.animateOffsetTop&&s.animateOffsetTop(i||0),!0;s.fadeOutAndRemove()}i>0&&(n.position.offsetTop=i);var l=StackExchange.helpers.showMessage(e,o,n);return l.find("a").attr("target","_blank"),l.click(a),e.addClass("validation-"+r).data(r+"-popup",l).data(r+"-message",o),!0}return!1}function b(e,t){k("warning",e,t)}function y(e,t){k("error",e,t)}function k(e,t,n){if(!n||0==n.length)return!1;var i=n.data(e+"-popup");return i&&i.is(":visible")&&i.fadeOutAndRemove(),n.removeClass("validation-"+e),n.removeData(e+"-popup"),n.removeData(e+"-message"),t.find(".validation-"+e).length||t.find(".general-"+e+"-container").remove(),!0}function w(){var e=!1,t=$("#sidebar, .sidebar").first();if(!t.length)return!1;var n=t.offset().left;return $(".message").each(function(){var t=$(this);return t.offset().left+t.outerWidth()>n?(e=!0,!1):void 0}),e}var x="input#title",S="textarea.wmd-input:first",E=".tag-editor:not(.mention-editor)",C=".mention-editor",I="input[id^=edit-comment]",T="textarea#excerpt",j="input#m-address",M="label.ask-confirmation",P=[],O=250;return{"initOnBlur":e,"initOnBlurAndSubmit":t,"showErrorsAfterSubmission":f,"getSidebarPopupOptions":p}}();