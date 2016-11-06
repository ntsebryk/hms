<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<div class="container" style="padding-bottom: 60px; padding-top: 60px;">
  <div>
    <div class="container" ng-controller="BannerController">
      <carousel interval="interval">
        <slide ng-repeat="slide in slides" active="slide.active">
          <img ng-src="{{slide.image}}" style="margin:auto;">

          <div class="carousel-caption">
            <h1>{{slide.text}}</h1>
          </div>
        </slide>
      </carousel>
      <h1>Spring MVC internationalization example</h1>
      <h2>Language : <a href="?lang=en">English</a>|<a href="?lang=uk">Ukraine_uk</a>|<a href="?lang=uk_UA">Ukraine_uk_UA</a>|<a href="?lang=ua">Ukraine_ua</a></h2>
      <h3>label.homepage: <spring:message code="label.homepage" text="default text" /></h3>
      <h3>label.symptoms: <spring:message code="label.symptoms" text="default text" /></h3>
      <h4>Current Locale: ${pageContext.response.locale}</h4>
    </div>
  </div>
</div>
