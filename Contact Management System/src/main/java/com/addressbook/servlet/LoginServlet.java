package com.addressbook.servlet;


import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


@MultipartConfig
public class LoginServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        PrintWriter out = response.getWriter();
        try {

            String username = request.getParameter("username");
            String password = request.getParameter("password");

            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection conn = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/addressbook", "root", "Dixit1708@");


            PreparedStatement stmt = conn.prepareStatement("select * from users where username='?' and password='?'");
            stmt.setString(1, username);
            stmt.setString(2, password);

            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                HttpSession session = request.getSession();
                session.setAttribute("uname", username);
                response.sendRedirect(request.getContextPath() + "/index.jsp");
            } else {
                out.println("<!DOCTYPE html>");
                out.println("<html>");
                out.println("<head>");
                out.println("<title>Error</title>");
                out.println("<link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css\">");
                out.println("<style>");
                out.println(".modal-dialog-custom {");
                out.println("  max-width: 30%;"); // Adjust width as needed
                out.println("}");
                out.println(".modal-content-custom {");
                out.println("  height: 20%;"); // Adjust height as needed
                out.println("}");
                out.println("</style>");
                out.println("</head>");
                out.println("<body>");

                out.println("<div class=\"modal fade\" id=\"popupModal\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"popupModalLabel\" aria-hidden=\"true\">");
                out.println("  <div class=\"modal-dialog modal-dialog-centered modal-dialog-custom\" role=\"document\">");
                out.println("    <div class=\"modal-content modal-content-custom\">");
                out.println("      <div class=\"modal-header\">");
                out.println("        <h5 class=\"modal-title\" id=\"popupModalLabel\">Error</h5>");
                out.println("        <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">");
                out.println("          <span aria-hidden=\"true\">&times;</span>");
                out.println("        </button>");
                out.println("      </div>");
                out.println("      <div class=\"modal-body text-center\">"); // Center-align the message
                out.println("        User does not exist. Please try again.");
                out.println("      </div>");
                out.println("      <div class=\"modal-footer\">");
                out.println("        <button type=\"button\" class=\"btn btn-secondary\" data-dismiss=\"modal\">Close</button>");
                out.println("      </div>");
                out.println("    </div>");
                out.println("  </div>");
                out.println("</div>");

                out.println("<script src=\"https://code.jquery.com/jquery-3.5.1.slim.min.js\"></script>");
                out.println("<script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js\"></script>");
                out.println("<script>");
                out.println("  $(document).ready(function() {");
                out.println("    $('#popupModal').modal('show');");
                out.println("    $('#popupModal').on('hidden.bs.modal', function (e) {");
                out.println("      window.location.href = 'login.jsp';");
                out.println("    });");
                out.println("  });");
                out.println("</script>");

                out.println("</body>");
                out.println("</html>");


            }

        } catch (Exception e) {
            e.getMessage();
            e.printStackTrace();
        }

    }


    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the
    // + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request  servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException      if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request  servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException      if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
