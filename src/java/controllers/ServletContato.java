package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.Agenda;
import models.Contato;
import models.Endereco;

public class ServletContato extends HttpServlet {
    public static Agenda agenda;
            
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        String foward = "";
        String email = request.getParameter("form_email");
        Contato c;
        if(action.equalsIgnoreCase("update")){
            c = agenda.editarContato(email);
            request.setAttribute("contato", c);
            foward = "/cadastrar.jsp";
        } else if(action.equalsIgnoreCase("delete")){
            agenda.deletarContato(email);
            request.setAttribute("contatos", agenda);
            foward = "/index.jsp";
        } else if(action.equalsIgnoreCase("read")){
            c = agenda.mostrarContato(email);
            request.setAttribute("contato", c);
            foward = "/mostrar.jsp";
        }
        RequestDispatcher v = request.getRequestDispatcher(foward);
        v.forward(request,response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Contato contato = new Contato();
        Endereco endereco = new Endereco();
        endereco.setEstado(request.getParameter("form_state"));
        endereco.setCidade(request.getParameter("form_city"));
        endereco.setBairro(request.getParameter("form_neig"));
        endereco.setRua(request.getParameter("form_street"));
        endereco.setNumero(request.getParameter("form_number"));
        
        contato.setEndereco(endereco);
        contato.setNome(request.getParameter("form_name"));
        contato.setEmail(request.getParameter("form_email"));
        contato.setTelefone(request.getParameter("form_tel"));
        
        agenda.cadastrarContato(contato);
        RequestDispatcher view = request.getRequestDispatcher("index.jsp");
        request.setAttribute("contatos", agenda);
        view.forward(request,response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
