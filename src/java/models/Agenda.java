package models;

import java.util.ArrayList;

public class Agenda {
   ArrayList<Contato> contato = new ArrayList<>();
   
   public void cadastrarContato(Contato contato){
       //this.contato.add(contato);
   }
   
   public Contato editarContato(String email){
       Contato c1 = new Contato(); 
       for(Contato c : contato){
            if((c.getEmail() != null) && (c.getEmail().equalsIgnoreCase(email))){
                return c;
            }
        }    
        return c1;
   }
   
   public void deletarContato(String email){
       for(Contato c : contato){
            if((c.getEmail() != null) && (c.getEmail().equalsIgnoreCase(email))){
               contato.remove(c);
            }
        }   
   }
   
   public Contato mostrarContato(String email){
       Contato c1 = new Contato();  
       for(Contato c : contato){
            if((c.getEmail() != null) && (c.getEmail().equalsIgnoreCase(email))){
                return c;
            }
        }
       return c1;
   }
}
