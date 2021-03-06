
import lib.jdb.connection.JDBConnection;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author vmf
 */
public class JFrameRegistroDiario extends javax.swing.JFrame {

    /**
     * Creates new form JFrameRegistroDiario
     */
    public JFrameRegistroDiario() {
        initComponents();
    }

    JFrameRegistroDiario(JDBConnection jdbConnection) {
        initComponents();
        jDBQueryRegistroDiario.setJDBConnection(jdbConnection);
        jDBQueryRegistroDiario.execQuery();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jDBQueryRegistroDiario = new lib.jdb.jdbquery.JDBQuery();
        jDBControlStyle1 = new lib.jdb.control.jdbcontrolstyle.JDBControlStyle();
        jScrollPane7 = new javax.swing.JScrollPane();
        jDBTable7 = new lib.jdb.control.jdbtable.JDBTable();
        jLabel1 = new javax.swing.JLabel();
        jDBTextField1 = new lib.jdb.control.jdbtextfield.JDBTextField();
        jLabel27 = new javax.swing.JLabel();
        jDBTextField24 = new lib.jdb.control.jdbtextfield.JDBTextField();
        jLabel28 = new javax.swing.JLabel();
        jDBTextArea1 = new lib.jdb.control.jdbtextarea.JDBTextArea();
        jDBButtonSave8 = new lib.jdb.control.jdbbuttonsave.JDBButtonSave();
        jDBButtonNew5 = new lib.jdb.control.jdbbuttonnew.JDBButtonNew();
        jDBButtonDelete5 = new lib.jdb.control.jdbbuttondelete.JDBButtonDelete();

        jDBQueryRegistroDiario.setSQL("select * from registro_diario");

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("Registros Diários");

        jDBTable7.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {

            }
        ));
        jDBTable7.setJDBQuery(jDBQueryRegistroDiario);
        jDBTable7.setEditable(false);
        jDBTable7.setInvisibleFields("id ");
        jScrollPane7.setViewportView(jDBTable7);

        jLabel1.setText("Data");

        jDBTextField1.setJDBQuery(jDBQueryRegistroDiario);
        jDBTextField1.setFieldName("data");
        jDBTextField1.setjDBControlStyle(jDBControlStyle1);

        jLabel27.setText("Passageiros");

        jDBTextField24.setJDBQuery(jDBQueryRegistroDiario);
        jDBTextField24.setFieldName("passageiros");
        jDBTextField24.setjDBControlStyle(jDBControlStyle1);

        jLabel28.setText("Obs.");

        jDBTextArea1.setJDBQuery(jDBQueryRegistroDiario);
        jDBTextArea1.setFieldName("obs");
        jDBTextArea1.setjDBControlStyle(jDBControlStyle1);

        jDBButtonSave8.setJDBQuery(jDBQueryRegistroDiario);

        jDBButtonNew5.setJDBQuery(jDBQueryRegistroDiario);

        jDBButtonDelete5.setJDBQuery(jDBQueryRegistroDiario);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jScrollPane7, javax.swing.GroupLayout.DEFAULT_SIZE, 666, Short.MAX_VALUE)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addComponent(jLabel27)
                            .addComponent(jLabel1))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addComponent(jDBTextField1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(jDBTextField24, javax.swing.GroupLayout.PREFERRED_SIZE, 112, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(18, 18, 18)
                        .addComponent(jLabel28)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jDBTextArea1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addGap(0, 0, Short.MAX_VALUE)
                        .addComponent(jDBButtonDelete5, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jDBButtonNew5, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jDBButtonSave8, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel1)
                            .addComponent(jDBTextField1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel28))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel27)
                            .addComponent(jDBTextField24, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addComponent(jDBTextArea1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jDBButtonSave8, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jDBButtonNew5, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jDBButtonDelete5, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jScrollPane7, javax.swing.GroupLayout.DEFAULT_SIZE, 137, Short.MAX_VALUE)
                .addContainerGap())
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

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
            java.util.logging.Logger.getLogger(JFrameRegistroDiario.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(JFrameRegistroDiario.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(JFrameRegistroDiario.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(JFrameRegistroDiario.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new JFrameRegistroDiario().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private lib.jdb.control.jdbbuttondelete.JDBButtonDelete jDBButtonDelete5;
    private lib.jdb.control.jdbbuttonnew.JDBButtonNew jDBButtonNew5;
    private lib.jdb.control.jdbbuttonsave.JDBButtonSave jDBButtonSave8;
    private lib.jdb.control.jdbcontrolstyle.JDBControlStyle jDBControlStyle1;
    private lib.jdb.jdbquery.JDBQuery jDBQueryRegistroDiario;
    private lib.jdb.control.jdbtable.JDBTable jDBTable7;
    private lib.jdb.control.jdbtextarea.JDBTextArea jDBTextArea1;
    private lib.jdb.control.jdbtextfield.JDBTextField jDBTextField1;
    private lib.jdb.control.jdbtextfield.JDBTextField jDBTextField24;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel27;
    private javax.swing.JLabel jLabel28;
    private javax.swing.JScrollPane jScrollPane7;
    // End of variables declaration//GEN-END:variables
}
