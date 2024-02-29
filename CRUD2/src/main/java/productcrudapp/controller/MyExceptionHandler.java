package productcrudapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import productcrudapp.model.Product;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@ControllerAdvice
public class MyExceptionHandler extends HandlerInterceptorAdapter {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

        String priceParameter = request.getParameter("name");
        System.out.println(priceParameter);
        if (priceParameter != null) {
            try {
                System.out.println(priceParameter);
                // Attempt to parse the parameter as a long
                long priceValue = Long.parseLong(priceParameter);
                // Add your logic here...
                System.out.println("shubham");

            } catch (NumberFormatException e) {
                System.out.println("shubham");
                // Handle the case where the "price" parameter is not a valid long
                // Set the error message in the request attribute
                request.setAttribute("priceError", "Invalid price value. Please enter a valid number.");
                // Redirect to the previous page
                response.sendRedirect(request.getHeader("referer"));                return false;
            }
        }
        return true;
    }
}
