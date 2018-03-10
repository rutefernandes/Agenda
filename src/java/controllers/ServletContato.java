package controllers;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.Agenda;
import models.Contato;
import models.Endereco;

public class ServletContato extends HttpServlet {
    public static Agenda agenda = new Agenda();
            
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        String foward = "";
        String strId = request.getParameter("id");
        int id = strId != null ? Integer.parseInt(strId) : -1;
        Contato c;
        if(action.equalsIgnoreCase("update")){
            c = agenda.mostrarContato(id);
            request.setAttribute("contato", c);
            request.setAttribute("id", id);
            foward = "/cadastrar.jsp";
        } else if(action.equalsIgnoreCase("delete")){
            agenda.deletarContato(id);
            request.setAttribute("contatos", agenda);
            foward = "/index.jsp";
        } else if(action.equalsIgnoreCase("read")){
            c = agenda.mostrarContato(id);
            System.out.println(c.getNome());
            request.setAttribute("contato", c);
            foward = "/mostrar.jsp";
        }
        RequestDispatcher v = request.getRequestDispatcher(foward);
        v.forward(request,response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String hidden = request.getParameter("action");
        
        Contato contato = new Contato();
        Endereco endereco = new Endereco();
        endereco.setEstado(request.getParameter("state"));
        endereco.setCidade(request.getParameter("city"));
        endereco.setBairro(request.getParameter("neig"));
        endereco.setRua(request.getParameter("street"));
        endereco.setNumero(request.getParameter("number"));
        
        contato.setEndereco(endereco);
        contato.setNome(request.getParameter("name"));
        contato.setEmail(request.getParameter("email"));
        contato.setTelefone(request.getParameter("tel"));
        
        String strId = request.getParameter("id");
        int id = strId != null ? Integer.parseInt(strId) : -1;
        
        
        if(id != -1 && hidden != null && hidden.equals("put")){
            agenda.editarContato(id, contato);
        } else {
            agenda.cadastrarContato(contato);
        }
        request.setAttribute("contatos", agenda);
        RequestDispatcher view = request.getRequestDispatcher("index.jsp");
        
        view.forward(request,response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
