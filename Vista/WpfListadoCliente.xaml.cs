﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using BibliotecaClase;
using BibliotecaControlador;

using MahApps.Metro.Controls;
using MahApps.Metro.Controls.Dialogs;
using MahApps.Metro.Behaviours;

namespace Vista
{
    /// <summary>
    /// Lógica de interacción para wpfListadoCliente.xaml
    /// </summary>
    public partial class wpfListadoCliente : MetroWindow
    {
        WpfCliente cl;//recibir a cliente
        //-------------------------------Crear_Contrato cc;

        //Llamado desde menú principal
        public wpfListadoCliente()
        {
            InitializeComponent();

            btnPasar.Visibility = Visibility.Hidden;//el botón traspasar no se ve

            //llenar el combo box con los datos del enumerador
            cbActiv.ItemsSource = Enum.GetValues(typeof
                (ActividadEmpresa));
            cbActiv.SelectedIndex = 0;

            cbTipoEmp.ItemsSource = Enum.GetValues(typeof
                (TipoEmpresa));
            cbTipoEmp.SelectedIndex = 0;

            try
            {
                DaoCliente dao = new DaoCliente();
                dgLista.ItemsSource = dao.Listar();
                dgLista.Items.Refresh();

            }
            catch (Exception ex)
            {

                MessageBox.Show("Error!" + ex.Message);
            }
        }

        //Llamado desde el modulo administrar Cliente
        public wpfListadoCliente(WpfCliente origen)
        {
            InitializeComponent();
            cl = origen;

            //llenar el combo box con los datos del enumerador
            cbActiv.ItemsSource = Enum.GetValues(typeof
                (ActividadEmpresa));
            cbActiv.SelectedIndex = 0;

            cbTipoEmp.ItemsSource = Enum.GetValues(typeof
                (TipoEmpresa));
            cbTipoEmp.SelectedIndex = 0;

            try
            {
                DaoCliente dao = new DaoCliente();
                dgLista.ItemsSource = dao.Listar();
                dgLista.Items.Refresh();

            }
            catch (Exception ex)
            {

                MessageBox.Show("Error al Listar!" + ex.Message);
            }

        }



        //Botón Salir
        private void btnSalir_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }

        //Botón Pasar
        private void btnPasar_Click(object sender, RoutedEventArgs e)
        {
            if (btnPasar.Visibility == Visibility.Hidden)
            {
                btnPasar.Visibility = Visibility.Hidden;//hacer visible el botón

            }
            /*else
            {
                btnPasar.Visibility = Visibility.Hidden;//hacer que vuelva a desaparecer, en este caso no lo necesitamos
            }*/

            if (cl.btnModificar.Visibility == Visibility.Hidden)
            {
                cl.btnModificar.Visibility = Visibility.Hidden;//hacer visible el botón

            }
            Cliente cli = (Cliente)dgLista.SelectedItem;
            cl.txtRut.Text = cli.Rut;
            cl.Buscar();

        }

        //Botón Filtrar
        private void btnFiltrar_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                Cliente cli = new Cliente();
                string rut = cl.txtRut.Text;

                List<Cliente> lc = new DaoCliente()
                    .Filtro(rut);
                dgLista.ItemsSource = lc;
            }
            catch (Exception)
            {
                MessageBox.Show("error al Filtrar Información");
            }
        }



    }
}