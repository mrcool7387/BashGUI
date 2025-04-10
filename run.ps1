Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

# Create the form
$form = New-Object System.Windows.Forms.Form
$form.Text = "PowerShell GUI"
$form.Size = New-Object System.Drawing.Size(400, 300)
$form.StartPosition = "CenterScreen"

# Add a label
$label = New-Object System.Windows.Forms.Label
$label.Text = "Welcome to PowerShell GUI"
$label.Location = New-Object System.Drawing.Point(10, 10)
$label.AutoSize = $true
$form.Controls.Add($label)

# Add a button
$button = New-Object System.Windows.Forms.Button
$button.Text = "Click Me"
$button.Location = New-Object System.Drawing.Point(10, 40)
$button.Add_Click({
    [System.Windows.Forms.MessageBox]::Show("Button clicked!")
})
$form.Controls.Add($button)

# Add a TextBox
$textBox = New-Object System.Windows.Forms.TextBox
$textBox.Location = New-Object System.Drawing.Point(10, 80)
$textBox.Width = 200
$form.Controls.Add($textBox)

# Add a CheckBox
$checkBox = New-Object System.Windows.Forms.CheckBox
$checkBox.Text = "Check Me"
$checkBox.Location = New-Object System.Drawing.Point(10, 110)
$form.Controls.Add($checkBox)

# Add a RadioButton
$radioButton = New-Object System.Windows.Forms.RadioButton
$radioButton.Text = "Option 1"
$radioButton.Location = New-Object System.Drawing.Point(10, 140)
$form.Controls.Add($radioButton)

# Add a ComboBox
$comboBox = New-Object System.Windows.Forms.ComboBox
$comboBox.Location = New-Object System.Drawing.Point(10, 170)
$comboBox.Width = 200
$comboBox.Items.AddRange(@("Option 1", "Option 2", "Option 3"))
$form.Controls.Add($comboBox)

# Add a ListBox
$listBox = New-Object System.Windows.Forms.ListBox
$listBox.Location = New-Object System.Drawing.Point(10, 200)
$listBox.Width = 200
$listBox.Height = 60
$listBox.Items.AddRange(@("Item 1", "Item 2", "Item 3"))
$form.Controls.Add($listBox)

# Add a NumericUpDown
$numericUpDown = New-Object System.Windows.Forms.NumericUpDown
$numericUpDown.Location = New-Object System.Drawing.Point(220, 10)
$form.Controls.Add($numericUpDown)

# Add a ProgressBar
$progressBar = New-Object System.Windows.Forms.ProgressBar
$progressBar.Location = New-Object System.Drawing.Point(220, 40)
$progressBar.Width = 150
$progressBar.Value = 50
$form.Controls.Add($progressBar)

# Add a TrackBar
$trackBar = New-Object System.Windows.Forms.TrackBar
$trackBar.Location = New-Object System.Drawing.Point(220, 70)
$trackBar.Width = 150
$form.Controls.Add($trackBar)

# Add a DateTimePicker
$dateTimePicker = New-Object System.Windows.Forms.DateTimePicker
$dateTimePicker.Location = New-Object System.Drawing.Point(220, 110)
$form.Controls.Add($dateTimePicker)

# Add a MonthCalendar
$monthCalendar = New-Object System.Windows.Forms.MonthCalendar
$monthCalendar.Location = New-Object System.Drawing.Point(220, 140)
$form.Controls.Add($monthCalendar)

# Add a PictureBox
$pictureBox = New-Object System.Windows.Forms.PictureBox
$pictureBox.Location = New-Object System.Drawing.Point(220, 310)
$pictureBox.Size = New-Object System.Drawing.Size(100, 100)
$pictureBox.BackColor = [System.Drawing.Color]::LightGray
$form.Controls.Add($pictureBox)

# Add a Panel
$panel = New-Object System.Windows.Forms.Panel
$panel.Location = New-Object System.Drawing.Point(10, 270)
$panel.Size = New-Object System.Drawing.Size(200, 100)
$panel.BackColor = [System.Drawing.Color]::LightBlue
$form.Controls.Add($panel)

# Add a GroupBox
$groupBox = New-Object System.Windows.Forms.GroupBox
$groupBox.Text = "Group Box"
$groupBox.Location = New-Object System.Drawing.Point(220, 270)
$groupBox.Size = New-Object System.Drawing.Size(150, 100)
$form.Controls.Add($groupBox)

# Add a TabControl with TabPages
$tabControl = New-Object System.Windows.Forms.TabControl
$tabControl.Location = New-Object System.Drawing.Point(10, 380)
$tabControl.Size = New-Object System.Drawing.Size(360, 100)
$tabPage1 = New-Object System.Windows.Forms.TabPage
$tabPage1.Text = "Tab 1"
$tabPage2 = New-Object System.Windows.Forms.TabPage
$tabPage2.Text = "Tab 2"
$tabControl.TabPages.Add($tabPage1)
$tabControl.TabPages.Add($tabPage2)
$form.Controls.Add($tabControl)

# Add a ToolTip
$toolTip = New-Object System.Windows.Forms.ToolTip
$toolTip.SetToolTip($button, "This is a button")

# Add a MenuStrip
$menuStrip = New-Object System.Windows.Forms.MenuStrip
$fileMenu = New-Object System.Windows.Forms.ToolStripMenuItem("File")
$exitMenuItem = New-Object System.Windows.Forms.ToolStripMenuItem("Exit")
$exitMenuItem.Add_Click({ $form.Close() })
$fileMenu.DropDownItems.Add($exitMenuItem)
$menuStrip.Items.Add($fileMenu)
$form.MainMenuStrip = $menuStrip
$form.Controls.Add($menuStrip)

# Add a StatusStrip
$statusStrip = New-Object System.Windows.Forms.StatusStrip
$statusLabel = New-Object System.Windows.Forms.ToolStripStatusLabel
$statusLabel.Text = "Ready"
$statusStrip.Items.Add($statusLabel)
$form.Controls.Add($statusStrip)

# Add a ContextMenuStrip
$contextMenuStrip = New-Object System.Windows.Forms.ContextMenuStrip
$contextMenuItem = New-Object System.Windows.Forms.ToolStripMenuItem("Context Item")
$contextMenuStrip.Items.Add($contextMenuItem)
$form.ContextMenuStrip = $contextMenuStrip

# Add an OpenFileDialog
$openFileDialog = New-Object System.Windows.Forms.OpenFileDialog

# Add a SaveFileDialog
$saveFileDialog = New-Object System.Windows.Forms.SaveFileDialog

# Add a FolderBrowserDialog
$folderBrowserDialog = New-Object System.Windows.Forms.FolderBrowserDialog

# Add a ColorDialog
$colorDialog = New-Object System.Windows.Forms.ColorDialog

# Add a FontDialog
$fontDialog = New-Object System.Windows.Forms.FontDialog

# Add a NotifyIcon
$notifyIcon = New-Object System.Windows.Forms.NotifyIcon
$notifyIcon.Icon = [System.Drawing.SystemIcons]::Information
$notifyIcon.Visible = $true
$notifyIcon.Text = "PowerShell GUI"

# Show the form
[void]$form.ShowDialog()


# List of System.Windows.Forms objects used in this script:
# - System.Windows.Forms.Form
# - System.Windows.Forms.Label
# - System.Windows.Forms.Button
# - System.Windows.Forms.MessageBox

# List of additional System.Windows.Forms objects you could use:
# - System.Windows.Forms.TextBox
# - System.Windows.Forms.CheckBox
# - System.Windows.Forms.RadioButton
# - System.Windows.Forms.ComboBox
# - System.Windows.Forms.ListBox
# - System.Windows.Forms.NumericUpDown
# - System.Windows.Forms.ProgressBar
# - System.Windows.Forms.TrackBar
# - System.Windows.Forms.DateTimePicker
# - System.Windows.Forms.MonthCalendar
# - System.Windows.Forms.PictureBox
# - System.Windows.Forms.Panel
# - System.Windows.Forms.GroupBox
# - System.Windows.Forms.TabControl
# - System.Windows.Forms.TabPage
# - System.Windows.Forms.ToolTip
# - System.Windows.Forms.MenuStrip
# - System.Windows.Forms.StatusStrip
# - System.Windows.Forms.ContextMenuStrip
# - System.Windows.Forms.OpenFileDialog
# - System.Windows.Forms.SaveFileDialog
# - System.Windows.Forms.FolderBrowserDialog
# - System.Windows.Forms.ColorDialog
# - System.Windows.Forms.FontDialog
# - System.Windows.Forms.NotifyIcon