using MaterialDesignThemes.Wpf;
using Microsoft.WindowsAPICodePack.Dialogs;
using Microsoft.Xaml.Behaviors.Media;
using System;
using System.Drawing;
using System.IO;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using static Microsoft.WindowsAPICodePack.Shell.PropertySystem.SystemProperties.System;
using System.Threading;
using System.Net.NetworkInformation;
using static System.Net.WebRequestMethods;
using System.Windows.Media;
using System.Windows.Threading;

namespace pr2
{

    public partial class MainWindow : Window
    {
        public int a;
        public int b;
        public static string[] track;
        public static string[] track2;
        public static int kakoy;
        private bool status = false;
        public MainWindow()
        {
            InitializeComponent();
        }

        private void btn_folder_Click_1(object sender, RoutedEventArgs e)
        {
            CommonFileDialog dialog = new CommonOpenFileDialog() { IsFolderPicker = true };
            var result = dialog.ShowDialog();
            if (result == CommonFileDialogResult.Ok)
            {
                track = Directory.GetFiles(dialog.FileName);
                ListBox.Items.Clear();
                string[] files = Directory.GetFiles(dialog.FileName);
                foreach (string file in files)
                {
                    if (file.Contains(".mp3"))
                    {
                        ListBox.Items.Add(file);
                    }
                }
            }
            player.Source = new Uri(track[kakoy]);
            player.Play();
        }

        private void btn_next_Click(object sender, RoutedEventArgs e)
        {
            if (b == 1)
            {
                if (kakoy + 1 < track.Length)
                {
                    player.Source = new Uri(track2[kakoy + 1]);
                    kakoy++;
                    player.Play();
                }
                else
                {
                    player.Source = new Uri(track2[kakoy]);
                    player.Play();
                }
            } else
            {
                if (kakoy + 1 < track.Length)
                {
                    player.Source = new Uri(track[kakoy + 1]);
                    kakoy++;
                    player.Play();
                }
                else
                {
                    player.Source = new Uri(track[kakoy]);
                    player.Play();
                }
            }
        }

        private void btn_back_Click(object sender, RoutedEventArgs e)
        {
            if (b == 1)
            {
                if (kakoy - 1 >= 0)
                {
                    player.Source = new Uri(track2[kakoy - 1]);
                    kakoy--;
                    player.Play();
                }
                else if (kakoy - 1 == -1)
                {
                    player.Source = new Uri(track2[kakoy]);
                    player.Play();
                }
            } else
            {
                if (kakoy - 1 >= 0)
                {
                    player.Source = new Uri(track[kakoy - 1]);
                    kakoy--;
                    player.Play();
                }
                else if (kakoy - 1 == -1)
                {
                    player.Source = new Uri(track[kakoy]);
                    player.Play();
                }
            }
            
        }

        private void btn_random_Click(object sender, RoutedEventArgs e)
        {
            if (b == 0)
            {
            ListBox.Items.Clear();
                Array.Resize(ref track2, track.Length);

            for (int i = 0; i < track.Length; i++)
            {
                string m;
                int  res;
                Random r = new Random();
                res = r.Next(track.Length);
                m = track[res];
                track2[i] = m;
            }

            foreach (string file in track2)
            {
                ListBox.Items.Add(file);
            }
            kakoy= 0;
            player.Source = new Uri(track2[kakoy]);
            player.Play();
                b++;
            }
            else if (b == 1)
            {
                ListBox.Items.Clear();
                foreach (string file in track)
                {
                    ListBox.Items.Add(file);
                }
                kakoy = 0;
                player.Source = new Uri(track[kakoy]);
                player.Play();
                b--;
            }
        }

        private void btn_repeat_Click(object sender, RoutedEventArgs e)
        {
            if (status == true)
            {
                status = false;
            }
            else
            {
                status = true;
                repeat();
            }
        }

        private void btn_play_Click_1(object sender, RoutedEventArgs e)
        {
            if (a == 0)
            {
                player.Pause();
                a = 1;
            }
            else
            {
                player.Play();
                a = 0;
            }
        }
        private void media_Opened(object sender, RoutedEventArgs e)
        {
            sld_second.Maximum = player.NaturalDuration.TimeSpan.Ticks;
        }

        private void ListBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (b == 1)
            {
                player.Source = new Uri(track2[ListBox.SelectedIndex]);
                kakoy = ListBox.SelectedIndex;
                player.Play();
            }
            else
            {
                player.Source = new Uri(track[ListBox.SelectedIndex]);
                kakoy = ListBox.SelectedIndex;
                player.Play();
            }
        }

        private void sld_second_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            try
            {
                player.Position = new TimeSpan(Convert.ToInt64(sld_second.Value));
            }
            catch
            {

            }
        }

        private void sld_gromkost_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            try
            {
                player.Volume = sld_gromkost.Value;
            }
            catch
            {

            }
        }

        private void repeat()
        {
            if (status == true)
            {
                player.Source = new Uri(track[kakoy]);
                player.Play();
            }
        }
    }
}