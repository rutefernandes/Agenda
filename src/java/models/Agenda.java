package models;

import java.util.ArrayList;

public class Agenda {
   public ArrayList<Contato> contato = new ArrayList<>();
   
   public void cadastrarContato(Contato contato){
       this.contato.add(contato);
   }
   
   public void editarContato(int id, Contato contatoo){
       contato.set(id, contatoo);
   }
   
   public void deletarContato(int id){
       contato.remove(id);
   }
   
   public Contato mostrarContato(int id){
       return contato.get(id);
   }
}
