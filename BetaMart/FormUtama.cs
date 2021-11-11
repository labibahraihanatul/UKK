using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.OleDb;

namespace BetaMart
{
    public partial class FormUtama : Form
    {
        OleDbConnection koneksi = new OleDbConnection(@"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=D:\db\DatabaseBetaMart.accdb");
        public FormUtama()
        {
            InitializeComponent();
        }

        private void btntambah_Click(object sender, EventArgs e)
        {

            if (tbid.Text == "")
            {
                koneksi.Open();
                string perintah = "insert into barang (nama,kode,harga,jumlah) values('" + tbnama.Text + "','" + tbkode.Text + "','" + tbharga.Text + "','" + tbstok.Text + "')";
                OleDbCommand cmd = new OleDbCommand(perintah, koneksi);
                cmd.ExecuteNonQuery();
                koneksi.Close();
                MessageBox.Show("Data Tersimpan");
                tbid.Clear();
                tbnama.Clear();
                tbstok.Clear();
                tbkode.Clear();
                tbharga.Clear();
            }
            else
            {
                MessageBox.Show("ID tidak perlu di isi!");
            }
            
        }

        void ShowData()
        {
            koneksi.Open();
            string  perintah = "select * from barang";
            OleDbDataAdapter da = new OleDbDataAdapter(perintah, koneksi);
            DataTable dt = new DataTable();
            da.Fill(dt);
            dataGridView1.DataSource = dt;
            koneksi.Close();
        }

        private void btnedit_Click(object sender, EventArgs e)
        {
            if (tbid.Text == "")
            {
                MessageBox.Show("Tolong isi Data Barang dan ID Barang yang akan di edit!");
            }
            else
            {
                koneksi.Open();
                OleDbCommand cmd = koneksi.CreateCommand();
                string perintah = "update barang set nama='" + tbnama.Text + "' ,jumlah='" + tbstok.Text + "',kode='" + tbkode.Text + "' ,harga='" + tbharga.Text + "' where ID=" + tbid.Text + "";
                cmd.CommandText = perintah;
                cmd.ExecuteNonQuery();
                koneksi.Close();
                MessageBox.Show("Barang berhasil diedit");
                tbid.Clear();
                tbnama.Clear();
                tbstok.Clear();
                tbkode.Clear();
                tbharga.Clear();
            }

        }

        private void btnhapus_Click(object sender, EventArgs e)
        {
            if (tbid.Text == "")
            {
                MessageBox.Show("Tolong isi ID bila ingin menghapus!");
            }
            else
            {


                koneksi.Open();
                OleDbCommand cmd = koneksi.CreateCommand();
                string perintah = "delete from barang where ID=" + tbid.Text + "";
                cmd.CommandText = perintah;
                cmd.ExecuteNonQuery();
                koneksi.Close();
                MessageBox.Show("Barang berhasil dihapus");
                tbid.Clear();
            }
            
        }

        private void btnrefresh_Click(object sender, EventArgs e)
        {
            ShowData();
        }

        private void lbcari_Click(object sender, EventArgs e)
        {
        }

        private void tbcari_TextChanged(object sender, EventArgs e)
        {
            koneksi.Open();
            string perintah = "select * from barang where nama='" + tbcari.Text + "'";
            OleDbDataAdapter da = new OleDbDataAdapter(perintah, koneksi);
            DataTable dt = new DataTable();
            da.Fill(dt);
            dataGridView1.DataSource = dt;
            koneksi.Close();
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void FormUtama_Load(object sender, EventArgs e)
        {

        }

        private void label5_Click(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }
    }
}
