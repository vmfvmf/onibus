
import java.sql.ResultSet;
import javax.swing.JOptionPane;
import lib.jdb.connection.JDBConnection;
import net.sf.jasperreports.engine.JRResultSetDataSource;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.view.JasperViewer;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author vi
 */
public class JFramePrincipal extends javax.swing.JFrame {
    JFramePassageiros jfPassageiros=null;
    JFrameMensalidades jfMensalidades=null;
    JFrameDespesas jfDespesas=null;
    String SQLPassageiros = "select  p.id,  p.curso_id, p.nome_completo as \"Nome\",  "
            + "p.cpf as \"CPF\", c.curso as \"Curso\",  p.classificacao as \"Classificação\" , "
            + " p.vai, p.volta  from passageiro p  inner join curso c on p.curso_id = c.id ",
            SQLMensalidade = "select * from mensalidade where 1=1 ",
            SQLDespesa = "select * from despesa where 1=1 ";
    public JFramePrincipal() {
        initComponents();
        jDBConnection1.connectDB();
        jDBQueryPassageiros.execQuery();
        jDBQueryConfig.execQuery();
        jDBQueryDespesas.execQuery();
        jDBQueryMensallidade.execQuery();
    }
    
    public JDBConnection getJDBConnection(){
        return jDBConnection1;
    }

    public void JFramePassageiros(){
        if(jfPassageiros!=null){
            jfPassageiros.dispose();
        }
        jfPassageiros=new JFramePassageiros(this);
        jfPassageiros.show();
    }
    public void JFramePassageiros(int passageiroId){
        if(jfPassageiros!=null){
            jfPassageiros.dispose();
        }
        jfPassageiros=new JFramePassageiros(this, passageiroId);
        jfPassageiros.show();
    }
    public void JFrameMensalidades(){
        if(jfMensalidades!=null){
            jfMensalidades.dispose();
        }
        jfMensalidades=new JFrameMensalidades(this);
        jfMensalidades.show();
    }
    public void JFrameMensalidades(String mensalidadeId){
        if(jfMensalidades!=null){
            jfMensalidades.dispose();
        }
        jfMensalidades=new JFrameMensalidades(this, mensalidadeId);
        jfMensalidades.show();
    }
    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jDBConnection1 = new lib.jdb.connection.JDBConnection();
        jDBQueryPassageiros = new lib.jdb.jdbquery.JDBQuery();
        jDBUpdateTransaction1 = new lib.jdb.jdbupdatetransaction.JDBUpdateTransaction();
        jDBQueryConfig = new lib.jdb.jdbquery.JDBQuery();
        jDBQueryDespesas = new lib.jdb.jdbquery.JDBQuery();
        jDBQueryMensallidade = new lib.jdb.jdbquery.JDBQuery();
        jTabbedPane1 = new javax.swing.JTabbedPane();
        jPanel2 = new javax.swing.JPanel();
        jButton2 = new javax.swing.JButton();
        jButton4 = new javax.swing.JButton();
        jButton5 = new javax.swing.JButton();
        jButton6 = new javax.swing.JButton();
        jButton7 = new javax.swing.JButton();
        jButton8 = new javax.swing.JButton();
        jPanel3 = new javax.swing.JPanel();
        jDBTextField2 = new lib.jdb.control.jdbtextfield.JDBTextField();
        jLabel2 = new javax.swing.JLabel();
        jDBButtonSave7 = new lib.jdb.control.jdbbuttonsave.JDBButtonSave();

        jDBConnection1.setURL("jdbc:mysql://localhost/onibus");
        jDBConnection1.setDriver("com.mysql.jdbc.Driver");
        jDBConnection1.setFilePath("");
        jDBConnection1.setPassword("");
        jDBConnection1.setUserName("root");

        jDBQueryPassageiros.setJDBConnection(jDBConnection1);
        jDBQueryPassageiros.setSQL("select * from passageiro");
        jDBQueryPassageiros.setConcurUpdatable(false);

        jDBUpdateTransaction1.setJDBConnection(jDBConnection1);

        jDBQueryConfig.setJDBConnection(jDBConnection1);
        jDBQueryConfig.setSQL("select * from configuracao");

        jDBQueryDespesas.setJDBConnection(jDBConnection1);
        jDBQueryDespesas.setSQL("select * from despesa");
        jDBQueryDespesas.addExecQueryEventListener(new lib.jdb.jdbquery.event.ExecQueryEventListener() {
            public void beforeExecQuery(lib.jdb.jdbquery.event.ExecQueryEventObject evt) {
            }
            public void afterExecQuery(lib.jdb.jdbquery.event.ExecQueryEventObject evt) {
                jDBQueryDespesasAfterExecQuery(evt);
            }
        });

        jDBQueryMensallidade.setJDBConnection(jDBConnection1);
        jDBQueryMensallidade.setSQL("select * from mensalidade");
        jDBQueryMensallidade.addExecQueryEventListener(new lib.jdb.jdbquery.event.ExecQueryEventListener() {
            public void beforeExecQuery(lib.jdb.jdbquery.event.ExecQueryEventObject evt) {
            }
            public void afterExecQuery(lib.jdb.jdbquery.event.ExecQueryEventObject evt) {
                jDBQueryMensallidadeAfterExecQuery(evt);
            }
        });

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jButton2.setText("Passageiros");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        jButton4.setText("Mensalidades");
        jButton4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton4ActionPerformed(evt);
            }
        });

        jButton5.setText("Registro Diário");
        jButton5.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton5ActionPerformed(evt);
            }
        });

        jButton6.setText("Despesas");
        jButton6.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton6ActionPerformed(evt);
            }
        });

        jButton7.setText("Motoristas");
        jButton7.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton7ActionPerformed(evt);
            }
        });

        jButton8.setText("Gera Mensalidades");
        jButton8.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton8ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jButton2)
                    .addComponent(jButton4)
                    .addComponent(jButton5)
                    .addComponent(jButton6)
                    .addComponent(jButton7)
                    .addComponent(jButton8))
                .addContainerGap(552, Short.MAX_VALUE))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jButton2)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jButton4)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jButton5)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jButton6)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jButton7)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jButton8)
                .addContainerGap(378, Short.MAX_VALUE))
        );

        jTabbedPane1.addTab("Principal", jPanel2);

        jDBTextField2.setJDBQuery(jDBQueryConfig);
        jDBTextField2.setFieldName("mensalidade");

        jLabel2.setText("Mensalidade");

        jDBButtonSave7.setJDBQuery(jDBQueryConfig);

        javax.swing.GroupLayout jPanel3Layout = new javax.swing.GroupLayout(jPanel3);
        jPanel3.setLayout(jPanel3Layout);
        jPanel3Layout.setHorizontalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addGap(44, 44, 44)
                .addComponent(jLabel2)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jDBTextField2, javax.swing.GroupLayout.PREFERRED_SIZE, 179, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(378, Short.MAX_VALUE))
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel3Layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(jDBButtonSave7, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );
        jPanel3Layout.setVerticalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jDBTextField2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel2))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 475, Short.MAX_VALUE)
                .addComponent(jDBButtonSave7, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );

        jTabbedPane1.addTab("Configuração", jPanel3);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jTabbedPane1)
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jTabbedPane1, javax.swing.GroupLayout.Alignment.TRAILING)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jDBQueryMensallidadeAfterExecQuery(lib.jdb.jdbquery.event.ExecQueryEventObject evt) {//GEN-FIRST:event_jDBQueryMensallidadeAfterExecQuery
        
    }//GEN-LAST:event_jDBQueryMensallidadeAfterExecQuery

    private void jDBQueryDespesasAfterExecQuery(lib.jdb.jdbquery.event.ExecQueryEventObject evt) {//GEN-FIRST:event_jDBQueryDespesasAfterExecQuery
     /*  float pago = 0, recebido = 0, balanco = 0;
        int qtdRecebido = 0, qtdpago = 0;
        jDBQueryMensallidade.first();
        if(jDBQueryMensallidade.getRow()>0){
            do{
                if(jDBQueryMensallidade.getCurrentFieldValueAsFloat("valor_recebido")>0){
                    recebido += jDBQueryMensallidade.getCurrentFieldValueAsFloat("valor_recebido");
                    qtdRecebido++;
                }
            }while(jDBQueryMensallidade.next()>=1);
        }
         if(jDBQueryDespesas.getRow()>0){
            do{
                pago +=  jDBQueryDespesas.getCurrentFieldValueAsFloat("valor");
                qtdpago++;
            }while(jDBQueryDespesas.next()>=1);
        }
        jDBQueryDespesas.first();
        jLabelTotalDespesas.setText(String.format("R$ %.2f", pago));
        jLabelTotalDespesasQtd.setText(String.format("%d registros", qtdpago));
        jDBQueryMensallidade.first();
        jLabelBalancoEntradas.setText(String.format("R$ %.2f", recebido));
        jLabelBalancoEntradasQtd.setText(String.format("%d mesalidades", qtdRecebido));
        balanco = recebido - pago;
        if(balanco < 0){
            jLabelBalance2.setForeground(jLabelTotalDespesas.getForeground());
            jLabelBalanco.setForeground(jLabelTotalDespesas.getForeground());
        }else{
            jLabelBalance2.setForeground(jLabelBalancoEntradas.getForeground());
            jLabelBalanco.setForeground(jLabelBalancoEntradas.getForeground());
        }
        jLabelBalanco.setText(String.format("R$ %.2f", balanco));*/
    }//GEN-LAST:event_jDBQueryDespesasAfterExecQuery

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        JFramePassageiros();
    }//GEN-LAST:event_jButton2ActionPerformed

    private void jButton4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton4ActionPerformed
        JFrameMensalidades();
    }//GEN-LAST:event_jButton4ActionPerformed

    private void jButton5ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton5ActionPerformed
        new JFrameRegistroDiario(jDBQueryConfig.getJDBConnection()).show();
    }//GEN-LAST:event_jButton5ActionPerformed

    private void jButton6ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton6ActionPerformed
        new JFrameDespesas(jDBQueryConfig.getJDBConnection()).show();
    }//GEN-LAST:event_jButton6ActionPerformed

    private void jButton7ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton7ActionPerformed
        new JFrameMotoristas(jDBQueryConfig.getJDBConnection()).show();
    }//GEN-LAST:event_jButton7ActionPerformed

    private void jButton8ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton8ActionPerformed
        jDBQueryPassageiros.execQuery();
        int count = 0;
        while(jDBQueryPassageiros.next()>0){
            jDBQueryMensallidade.insert();
            jDBQueryMensallidade.setNewCurrentFieldValue("passageiro_id", jDBQueryPassageiros.getCurrentFieldValue("id"));
            jDBQueryMensallidade.setNewCurrentFieldValue("valor", jDBQueryConfig.getCurrentFieldValue("mensalidade"));
            jDBQueryMensallidade.setNewCurrentFieldValue("vencimento", "2015/03/10");
            jDBQueryMensallidade.save();
            count++;
        }
        JOptionPane.showMessageDialog(null, "Foram geradas "+count+" mensalidades.");
    }//GEN-LAST:event_jButton8ActionPerformed

    private void geraRelatorio(){
        Conexao con;
        ResultSet rs;
        con = new Conexao(jDBQueryConfig.getJDBConnection().getConnection());
        try{
            con.Preparar("select c.curso, p.semestre, count(*) from passageiro p inner join curso c on p.curso_id = c.id group by p.curso_id, p.semestre\n" +
                        "\norder by p.semestre, c.curso");
            rs = con.RetornaDados(new Object[]{});
            JasperPrint jp = JasperFillManager.fillReport("src/PassageirosXCurso.jasper", null, 
                    new JRResultSetDataSource(rs));
             JasperViewer.viewReport(jp,false);
        }
        catch(Exception e){ JOptionPane.showMessageDialog(null, e);}
    }
    private void updateQryMensalidade(){
      /*  String sql = SQLMensalidade;
         if(jComboBoxmeses.getSelectedIndex() > 0)
            sql += " and month(vencimento)="+(jComboBoxmeses.getSelectedIndex()+1);
         switch(jComboBoxSituacaoMensalidade.getSelectedItem().toString()){
             case "Pagas":
                 sql += " and recebido_em is not null";
                 break;
             case "Abertas":
                 sql += " and recebido_em is null";
                 break;
                 default: break;
         }
         jDBQueryMensallidade.setSQL(sql);
         jDBQueryMensallidade.execQuery();*/
    }
    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(JFramePrincipal.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(JFramePrincipal.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(JFramePrincipal.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(JFramePrincipal.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new JFramePrincipal().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton4;
    private javax.swing.JButton jButton5;
    private javax.swing.JButton jButton6;
    private javax.swing.JButton jButton7;
    private javax.swing.JButton jButton8;
    private lib.jdb.control.jdbbuttonsave.JDBButtonSave jDBButtonSave7;
    private lib.jdb.connection.JDBConnection jDBConnection1;
    private lib.jdb.jdbquery.JDBQuery jDBQueryConfig;
    private lib.jdb.jdbquery.JDBQuery jDBQueryDespesas;
    private lib.jdb.jdbquery.JDBQuery jDBQueryMensallidade;
    private lib.jdb.jdbquery.JDBQuery jDBQueryPassageiros;
    private lib.jdb.control.jdbtextfield.JDBTextField jDBTextField2;
    private lib.jdb.jdbupdatetransaction.JDBUpdateTransaction jDBUpdateTransaction1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JTabbedPane jTabbedPane1;
    // End of variables declaration//GEN-END:variables

}
