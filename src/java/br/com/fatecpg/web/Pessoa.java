package br.com.fatecpg.web;

public class Pessoa {
    private String nome;
    private String cpf;
    private String email;
    private String telefone;

    public void setDados(String nome, String cpf, String email, String telefone){
        this.setNome(nome);
        this.setCpf(cpf);
        this.setEmail(email);        
        this.setTelefone(telefone);
    }
    
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }
}
