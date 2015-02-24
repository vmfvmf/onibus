/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author PC
 */
import java.sql.*;
 
public class Conexao {
 
    // AO USAR ESTA CLASSE!!! mUiTo ImPoRtAnTe! IMPORTAR BIBLIOTECA!!! 
    private Connection con;
    //AQUI TEMOS A CONECTION STRING, O NOME NÃO É IMPORTANTE
    // ALIAS NESTA CLASSE PRECISAMOS SABER BEM POUCO!!! SÓ O BÁSICO
    // A conString, nNO FINAL, ESTÁ nomeBanco!!! ALTERAR PARA O NOME DO BANCO
    private final String conString = "jdbc:mysql://127.0.0.1:3306/mydb";
    // usr É O NOME DO USUÁRIO DO BANCO DE DADOS MYSQL!!!
    private final String usr = "root";
    // pswrd É A SENHA DO BANCO DE DADOS MYSQL!!!
    // DAS PROPRIEDADES É SÓ ISSO QUE TEMOS QUE SABER DESTE MÉTODO!!!
    private final String pswrd = "";
    private PreparedStatement prepStt;
 
    public Conexao() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(conString, usr, pswrd);
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println("ERRO NA CONEXÃO " + e.getMessage());
        }
    }
 
    public Conexao(Connection con) {
        this.con = con;
    }
 
    public Connection getConexao() {
        return con;
    }
 
    public void Preparar(String comando) {
        try {
            prepStt = con.prepareStatement(comando);
        } catch (Exception e) {
            System.out.println("ERRO AO PREPARAR A CONSULTA\n" + e.toString());
        }
    }
 
    public boolean ExecCommand(Object dados[]) {
        try {
            for (int i = 0; i < dados.length; i++) {
                prepStt.setObject((i + 1), dados[i]);
            }
            System.out.println("\n" + prepStt.toString());
 
            return prepStt.executeUpdate() == 0
                    || prepStt.executeUpdate() == 1
                    || prepStt.executeUpdate() == 2;
        } catch (Exception e) {
            System.out.print("\nERRO NA EXECUÇÂO. " + e.getMessage() + prepStt.toString());
            return false;
        }
    }
 
    public ResultSet RetornaDados(Object[] dados) {
        ResultSet rs = null;
        try {
            if (dados != null) {
                for (int i = 0; i < dados.length; i++) {
                    prepStt.setObject((i + 1), dados[i]);
                }
            }
            rs = prepStt.executeQuery();
        } catch (Exception e) {
            System.out.print(e.getMessage());
        }
        return rs;
    }
 
}
