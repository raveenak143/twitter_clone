 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en"><head>
      <meta charset="UTF-8">
      <link href="https://fonts.googleapis.com/css?family=DM+Sans&amp;display=swap" rel="stylesheet">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
      <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
      <link rel="stylesheet" href="/static/css/recommendation.css">
   </head>
   <body translate="no">
      <div id="root">
         <div>
            <div class="layout">
               <div class="layout_wrapper">

                  <jsp:include page="templates/navbar.jsp"/>

                  <div class="layout_content">
                     <div class="feed">
                        <div class="feed_header">
                           <h1 class="feed_title">Recommendations for you:)</h1>
                        </div>

                       <c:forEach var="member" items="${RECOMMENDATIONS}">
                            <div class="feed_item">
                                <div class="joke">
                                    <div class="joke_wrapper">
                                       <div class="joke_block joke_block--header">
                                           <span class="joke_element joke_element--author-name">${member.name}</span><span class="joke_element joke_element--author-username">${member.email}</span>
                                           <div class="joke_element joke_element--author-img"><img src="/static/images/userImages.jpg"></div>
                                       </div>

                                        <c:if test="${not member.is_followed}">
                                               <button class="follow-member" member-id="${member.id}" type="submit" tabindex="0" style="margin-top:14px">
                                               <span tabindex="-1">Follow</span>
                                               </button>
                                            </c:if>
                                            <c:if test="${member.is_followed}">
                                               <button class="follow-member followed-button" member-id="${member.id}" type="submit" tabindex="0" style="margin-top:14px">
                                               <span tabindex="-1">Followed</span>
                                               </button>
                                            </c:if>

                                    </div>
                                </div>
                            </div>
                       </c:forEach>




















                        <div class="feed_footer">
                           <div class="pagination pagination--infinite-scroll"><button class="pagination_button_next">Load more...</button></div>
                        </div>
                     </div>
                  </div>

                  <jsp:include page="templates/sidebar.jsp"/>


               </div>
            </div>
         </div>
      </div>

      <script type="text/javascript"  src="/static/js/user.js">
      </script>

</body></html>