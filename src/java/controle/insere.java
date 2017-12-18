/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

import modelo.usuarios;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "insere", urlPatterns = {"/insere"})
public class insere extends HttpServlet {

    
    public int le() throws FileNotFoundException, IOException
    {
            int cont=0;
            String linha="", linha2="";
            String caminhoDir = getServletContext().getRealPath("WEB-INF");    
            File arquivo = new File(caminhoDir,"banco.txt");
	    if(arquivo.exists()==true)
            {
                String s = getServletContext().getRealPath("WEB-INF/banco.txt");    
                BufferedReader b = new BufferedReader(
                                   new InputStreamReader(
                                       new FileInputStream(s), Charset.forName("UTF-8").newDecoder()));
                while((linha=b.readLine()) != null)
                   if((linha2=b.readLine()) == null)
                        break;   
                if(linha==null)                   
                   linha=linha2;
                if(linha.compareTo("")!=0) // teste necessário quando excluiu-se todos da agenda anteriormente
                {
                    String vet[] = linha.split(";");
                    cont = Integer.parseInt(vet[0]);
                }
                b.close();
            }
            return cont;
    }
    

    public void grava(usuarios c) throws IOException
    {
            String caminhoDir = getServletContext().getRealPath("WEB-INF");    
            File arquivo = new File(caminhoDir,"banco.txt");
	    if(arquivo.exists()==false)
                arquivo.createNewFile();  
         
            String s = getServletContext().getRealPath("WEB-INF/banco.txt");    
            OutputStreamWriter g = new OutputStreamWriter(
                                       new FileOutputStream(s,true),Charset.forName("UTF-8").newEncoder());
            BufferedWriter b = new BufferedWriter(g);
            b.write(c.getNome()+";");
            b.write(c.getUser()+";");
            b.write(c.getSenha()+";");
            b.write(c.getEmail()+";");
            b.newLine();
            b.flush();
            b.close();   
    }
    
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            
            request.setCharacterEncoding("UTF-8");
            response.setContentType("text/html;charset=UTF-8");

            usuarios c = new usuarios();
            c.setNome(request.getParameter("nome"));
            c.setUser(request.getParameter("user"));
            c.setEmail(request.getParameter("email"));
            c.setSenha(request.getParameter("senha"));
            grava(c);
            response.sendRedirect("index.html#cadastroRealizado");     
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
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
