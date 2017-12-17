
package modelo;

public class usuarios {

    private String nome;
    private String email;
    private String senha;
    private String user;
    private String notas;


    public String getNome() {
        return nome;
    }

    public String getEmail() {
        return email;
    }

    public String getSenha() {
        return senha;
    }
    
    public String getUser() {
        return user;
    }
    
    public String getNotas() {
        return notas;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
    public void setSenha(String senha) {
        this.senha = senha;
    }

    public void setUser(String user) {
        this.user = user;
    }
    
    public void setNotas(String nota) {
        this.notas = nota;
    }
    
    
}
