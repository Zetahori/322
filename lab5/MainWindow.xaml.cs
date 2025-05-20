using System.Windows;
using System.Collections.Generic;
using System.Windows.Controls;

namespace lab5
{
    public partial class MainWindow : Window
    {
        private List<CheckBox> _checkBoxes = new List<CheckBox>();

        public MainWindow()
        {
            InitializeComponent();
            // Добавляем чекбоксы в список
            _checkBoxes.Add(csharpCheckBox);
            _checkBoxes.Add(javaCheckBox);
            _checkBoxes.Add(cppCheckBox);
            _checkBoxes.Add(pythonCheckBox);
        }

        // Обработчик кнопки "Рассчитать"
        private void CalculateButton_Click(object sender, RoutedEventArgs e)
        {
            int total = 0;
            foreach (var checkBox in _checkBoxes)
            {
                if (checkBox.IsChecked == true && checkBox.Tag is string pointsStr)
                {
                    if (int.TryParse(pointsStr, out int points))
                    {
                        total += points;
                    }
                }
            }
            resultText.Text = total.ToString();
        }

        // Обработчик кнопки "Сбросить"
        private void ResetButton_Click(object sender, RoutedEventArgs e)
        {
            foreach (var checkBox in _checkBoxes)
            {
                checkBox.IsChecked = false;
            }
            resultText.Text = "0";
        }
    }
}