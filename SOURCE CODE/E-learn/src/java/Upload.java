/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import Connection.DB;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.net.InetAddress;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author selvarani
 */
@WebServlet(urlPatterns = {"/Upload"})
public class Upload extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, FileUploadException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession session=request.getSession(true);
       try {
           
           
           
            String saveFile="",sn="",un="";
            int fileidnum=0,downloadcount=0,vc=0;
            sn="admin";
            un="admin";
            String contentType = request.getContentType();
            // Create a factory for disk-based file items
            DiskFileItemFactory factory = new DiskFileItemFactory();

// Set factory constraints
            factory.setSizeThreshold(4012);
//factory.setRepository("c:");

// Create a new file upload handler
            ServletFileUpload upload = new ServletFileUpload(factory);

// Set overall request size constraint
            //upload.setSizeMax(10024);

// Parse the request
            List items = null;
            try {
                items = upload.parseRequest(request);
            } catch (FileUploadException e) {
                e.printStackTrace();
            }
            byte[] data = null;
            String fileName = null;
// Process the uploaded items
            Iterator iter = items.iterator();
            while (iter.hasNext()) {
                FileItem item = (FileItem) iter.next();

                if (item.isFormField()) {
                    //processFormField(item);

                    String name = item.getFieldName();
                    String value = item.getString();
if(name.equalsIgnoreCase("cname")){
sn=value;
}
                } else {
                    data = item.get();
                    fileName = item.getName();
                     System.out.println("fn:" + fileName);
                }
            }
            String extension = "";

int i = fileName.lastIndexOf('.');
if (i > 0) {
    extension = fileName.substring(i+1);
}
System.out.println("--"+extension);
            saveFile = fileName;
             String path = request.getSession().getServletContext().getRealPath("/");
               System.out.println(path);
              String patt=path.replace("\\build", "");
               String strPath = patt+"\\PDF\\"+saveFile;
    System.out.println(strPath);
            File ff = new File(strPath);
            FileOutputStream fileOut = new FileOutputStream(ff);
            fileOut.write(data, 0, data.length);
            fileOut.flush();
            fileOut.close();
            System.out.println(strPath);
            System.out.println("Thrid");
            Connection con = null;
            PreparedStatement psmnt = null;
            FileInputStream fis;
            InputStream sImage;
           
                java.util.Date now = new java.util.Date();
                String DATE_FORMAT = "yyyy-MM-dd hh:mm:ss";
                SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
                String strDateNew = sdf.format(now);
                System.out.println(strDateNew);
                String ip1=InetAddress.getLocalHost().getHostAddress();
                try {
               
                    DB Db=new DB();
                   File f = new File(strPath);
               double cost=0.0;
                    long length = f.length();
                      if(String.valueOf(session.getAttribute("Sn")).compareToIgnoreCase("Not")!=0)
                     cost=(length*(0.02/100));
                      else
                          cost=(length*(0.04/100)); 
                 System.out.println("length " + length);
                      String ip=request.getRemoteAddr();int id=0;
                      ResultSet rs=Db.Select("select max(Fid) from upload");
                      if(rs.next())
                      {
                          id=rs.getInt(1);
                      }
                      id=id+1;
                      con=Db.con; 
                int id1=id;
                      String dd="select * from upload where Filename='"+saveFile+"'";
                      Statement st=con.createStatement();
                      ResultSet rs2=st.executeQuery(dd);
                      if(rs2.next())
                      {
                        session.setAttribute("msg", "File Name Already Exit !!!");
              session.setAttribute("color", "red"); 
                                                                   response.sendRedirect("Upload.jsp#!/page_SERVICES");    
                      }
                      else
                      {
                    String queryString = "insert into upload(Un,S_Name, Fid, Filename, Extension,Size,Content,Cost,Date,Keyvalue,req) values (?,?,?,?,?,?,?,?,?,?,?)";
                                                                System.out.println("four" + un);
                                                                psmnt = con.prepareStatement(queryString);
                                                               fis = new FileInputStream(f);
                                                                psmnt.setString(1, un);
                                                                psmnt.setString(2, sn);
                                                                psmnt.setInt(3, id1);
                                                                psmnt.setString(4, saveFile);
                                                                psmnt.setString(5, extension);
                                                                  psmnt.setLong(6,length);
                                                                   psmnt.setBinaryStream(7, (InputStream) fis, (int) (f.length()));
                                                                   psmnt.setDouble(8,cost);
                                                                   psmnt.setString(9, strDateNew);
                                                                    psmnt.setString(10, "No");
                                                                        psmnt.setString(11, "");
                                                                int s = psmnt.executeUpdate();
                                                                int Flength=0,Dcount=0;
                                                             
                                                               if(s>0)
                                                               {
                                                                  if(String.valueOf(session.getAttribute("Sn")).compareToIgnoreCase("Not")!=0)
                                                                   session.setAttribute("msg", "'"+saveFile+"' is Successfully Stored.Key is Sent to Your and All Your Group Members Mail Id");
                                                                   else
                                                                      session.setAttribute("msg", "'"+saveFile+"' is Successfully Stored.Key is Sent to Your Mail Id");  
                                                                   session.setAttribute("color", "green"); 
                                                                   response.sendRedirect("Upload.jsp");
                                                               }
                                                               else
                                                               {
                                                                  session.setAttribute("msg", "Failed !!!");
              session.setAttribute("color", "red"); 
                                                                   response.sendRedirect("Upload.jsp#!/page_SERVICES"); 
                                                               }
                      }
               
                                   
                                                            } catch (Exception ex) {
                    out.println(ex);
                }
            } catch (Exception e) {
                out.println(e);
            }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (FileUploadException ex) {
            Logger.getLogger(Upload.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (FileUploadException ex) {
            Logger.getLogger(Upload.class.getName()).log(Level.SEVERE, null, ex);
        }
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
