package br.com.fatecpg.web;

public class Empresa {
    
    private String nome;
    private String razao;
    private String cnpj;    
    private String tel;
    private String web;

    public void setDados(String nome, String razao, String cnpj, String tel, String web){
        this.setNome(nome);
        this.setRazao(razao);
        this.setCnpj(cnpj);
        this.setTel(tel);
        this.setWeb(web);
    }
    
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getRazao() {
        return razao;
    }

    public void setRazao(String razao) {
        this.razao = razao;
    }
    public String getCnpj() {
        return cnpj;
    }

    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }
    public String getWeb() {
        return web;
    }

    public void setWeb(String web) {
        this.web = web;
    }
}
