<%-- 
    Document   : searchResults
    Created on : Oct 4, 2020, 10:18:40 AM
    Author     : joel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">


<html>
   <f:view>
      <head>
         <title>Freedom Airlines Online Flight Reservation System</title>
      </head>
      <body>
        <h3>You entered these search parameters</h3>
        <p>Origination: <h:outputText value="#{flight.origination}"/>
        <p>Depart date: <h:outputText value="#{flight.departDate}"/>
        <p>Depart time: <h:outputText value="#{flight.departTime}"/>
        <p>Destination: <h:outputText value="#{flight.destination}"/>
        <p>Return date: <h:outputText value="#{flight.returnDate}"/>
        <p>Return time: <h:outputText value="#{flight.returnTime}"/>
        <%--p>Trip type : <h:outputText value="#{flight.tripType}"/--%>
      </body>
   </f:view>
</html>