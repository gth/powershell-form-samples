 
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

#Some standard sizes
$heightPosition = 15
$formPadding = 100
$wideControl = 300
$buttonWidth = 80

# Create form
$Form = New-Object System.Windows.Forms.Form
$Form.Text = "Example GUI Elements"
$Form.Size = New-Object System.Drawing.Size(600, 900)
$Form.StartPosition = "CenterScreen"

## Define elements of the form

$lbl1 = New-Object Windows.Forms.Label
$lbl1.Text = "TextBox:"
$lbl1.Size = New-Object System.Drawing.Size($buttonWidth,20)
$lbl1.Location = New-Object System.Drawing.Point(5, $heightPosition)

#TextBox
$TextBox = New-Object Windows.Forms.TextBox
$TextBox.Text = "Sample Text Box"
$TextBox.Size = New-Object System.Drawing.Size($wideControl,40)
$TextBox.Location = New-Object System.Drawing.Point($formPadding,$heightPosition)
$TextBox.ReadOnly = $false
$TextBox.Enabled = $true
$TextBox.BackColor  = "Red"
$TextBox.ForeColor = "Black"
$TextBox.Font = New-Object System.Drawing.Font("Arial", 12)
$TextBox.Anchor = [System.Windows.Forms.AnchorStyles]::Top `
			-bor [System.Windows.Forms.AnchorStyles]::Left `
			-bor [System.Windows.Forms.AnchorStyles]::Right
$TextBox.AllowDrop = $True
$heightPosition = $heightPosition + 40


$lbl2 = New-Object Windows.Forms.Label
$lbl2.Text = "Label:"
$lbl2.Size = New-Object System.Drawing.Size($buttonWidth,20)
$lbl2.Location = New-Object System.Drawing.Point(5, $heightPosition)

#Label
$Label = New-Object Windows.Forms.Label
$Label.Text = "Sample Label"
$Label.Size = New-Object System.Drawing.Size($buttonWidth,20)
$Label.Location = New-Object System.Drawing.Point($formPadding,$heightPosition)
$Label.AutoSize = $true
$heightPosition = $heightPosition + 30


$lbl3 = New-Object Windows.Forms.Label
$lbl3.Text = "Button:"
$lbl3.Size = New-Object System.Drawing.Size($buttonWidth,20)
$lbl3.Location = New-Object System.Drawing.Point(5, $heightPosition)

#Button
$Button = New-Object System.Windows.Forms.Button
$Button.Text = "Sample Button"
$Button.Font = New-Object System.Drawing.Font("Arial", 12)
$Button.Size = New-Object System.Drawing.Size( ($buttonWidth * 2), 30)
$Button.BackColor  = 'LightGray'
$Button.Location = New-Object System.Drawing.Point($formPadding,$heightPosition)
$heightPosition = $heightPosition + 50


$lbl4 = New-Object Windows.Forms.Label
$lbl4.Text = "PictureBox:"
$lbl4.Size = New-Object System.Drawing.Size($buttonWidth,20)
$lbl4.Location = New-Object System.Drawing.Point(5, $heightPosition)

#PictureBox
$CheckIcon = [System.Drawing.SystemIcons]::Information.ToBitmap()
$PictureBox = New-Object System.Windows.Forms.PictureBox
$PictureBox.Size = New-Object System.Drawing.Size(40, 40)
$PictureBox.Location = New-Object System.Drawing.Point($formPadding, $heightPosition)
$PictureBox.Image = $CheckIcon
$heightPosition = $heightPosition + 50


$lbl5 = New-Object Windows.Forms.Label
$lbl5.Text = "CheckBox:"
$lbl5.Size = New-Object System.Drawing.Size($buttonWidth,20)
$lbl5.Location = New-Object System.Drawing.Point(5, $heightPosition)

#CheckBox
$checkbox = New-Object Windows.Forms.Checkbox
$checkbox.Text = "Sample CheckBox"
$checkbox.Size = New-Object System.Drawing.Size(150,23)
$checkbox.Location = New-Object System.Drawing.Point($formPadding, $heightPosition)
$checkbox.Checked = $False
$heightPosition = $heightPosition + 35

$lbl6 = New-Object Windows.Forms.Label
$lbl6.Text = "ComboBox:"
$lbl6.Size = New-Object System.Drawing.Size($buttonWidth,20)
$lbl6.Location = New-Object System.Drawing.Point(5, $heightPosition)

#ComboBox (Dropdown list, but user can also type a value directly)
$ComboBox = New-Object Windows.Forms.ComboBox
$ComboBox.Text = "Sample ComboBox"
$ComboBox.Size = New-Object System.Drawing.Size(150,23)
$ComboBox.Location = New-Object System.Drawing.Point($formPadding, $heightPosition)
[void] $ComboBox.items.Add("Andrea")
[void] $ComboBox.items.Add("John"  )
[void] $ComboBox.items.Add("Robert")
[void] $ComboBox.items.Add("Susan" )
[void] $ComboBox.items.Add("Tony"  )
[void] $ComboBox.items.Add("Wayne" )
[void] $ComboBox.items.Add("Wendy" )
$heightPosition = $heightPosition + 35


$lbl7 = New-Object Windows.Forms.Label
$lbl7.Text = "ListView:"
$lbl7.Size = New-Object System.Drawing.Size($buttonWidth,20)
$lbl7.Location = New-Object System.Drawing.Point(5, $heightPosition)

#ListView
$ListView = New-Object Windows.Forms.ListView
$ListView.Text = "Sample ListView"
$ListView.Size = New-Object System.Drawing.Size(180,150)
$ListView.Location = New-Object System.Drawing.Point($formPadding, $heightPosition)
$ListView.CheckBoxes=$true
$ListView.Name="Main"
$ListView.AutoArrange=$true
$ListView.GridLines=$true
$ListView.MultiSelect=$true
$listView.View = "Details"
  $null = $listView.Columns.Add("First name")
  $null = $listView.Columns.Add("Second name")
  $null = $Listview.items.Add("Andrea").SubItems.Add("Smith")
  $null = $Listview.items.Add("John"  ).SubItems.Add("Smith")
  $null = $Listview.items.Add("Robert").SubItems.Add("Smith")
  $null = $Listview.items.Add("Susan" ).SubItems.Add("Taylor")
  $null = $Listview.items.Add("Tony"  ).SubItems.Add("Taylor")
  $null = $Listview.items.Add("Wayne" ).SubItems.Add("Taylor")
  $null = $Listview.items.Add("Wendy" ).SubItems.Add("Taylor")
  $listView.Columns[0].Width = -2
  $listView.Columns[1].Width = -2
$heightPosition = $heightPosition + 160


$lbl8 = New-Object Windows.Forms.Label
$lbl8.Text = "ListBox:"
$lbl8.Size = New-Object System.Drawing.Size($buttonWidth,20)
$lbl8.Location = New-Object System.Drawing.Point(5, $heightPosition)

#ListBox
$ListBox = New-Object Windows.Forms.ListBox
$ListBox.Text = "Sample ListBox"
$ListBox.Size = New-Object System.Drawing.Size(100,80)
$ListBox.Location = New-Object System.Drawing.Point($formPadding, $heightPosition)
$listBox.DisplayMember = "Display"
[void] $ListBox.items.Add("Andrea")
[void] $ListBox.items.Add("John"  )
[void] $ListBox.items.Add("Robert")
[void] $ListBox.items.Add("Susan" )
[void] $ListBox.items.Add("Tony"  )
[void] $ListBox.items.Add("Wayne" )
[void] $ListBox.items.Add("Wendy" )
$ListBox.SetSelected(0, $true)
$heightPosition = $heightPosition + 80


$lbl9 = New-Object Windows.Forms.Label
$lbl9.Text = "RadioButton:"
$lbl9.Size = New-Object System.Drawing.Size($buttonWidth,20)
$lbl9.Location = New-Object System.Drawing.Point(5, $heightPosition)

#Groupbox (group elements together;  no scroll, has caption,  no drop, tabstop always enabled)
$grpRadio      = New-Object system.Windows.Forms.Groupbox
$grpRadio.Text = "Groupbox"
$grpRadio.Size = New-Object System.Drawing.Size($wideControl, 80)
$grpRadio.location = New-Object System.Drawing.Point($formPadding, $heightPosition)

#RadioButton
$radio1 = New-Object system.Windows.Forms.RadioButton
$radio1.Text = "Sample Radio 1"
$radio1.AutoSize = $true
$radio1.Size = New-Object System.Drawing.Size($buttonWidth,20)
$radio1.location = New-Object System.Drawing.Point( ($formPadding / 3) , 20 )  # These positions use the Groupbox as origin, not the form
$radio1.Font = 'Microsoft Sans Serif,10'

$radio2 = New-Object system.Windows.Forms.RadioButton
$radio2.Text = "Sample Radio 2"
$radio2.AutoSize = $true
$radio2.Size = New-Object System.Drawing.Size($buttonWidth,20)
$radio2.location = New-Object System.Drawing.Point( ($formPadding / 3) , 45 )  # These positions use the Groupbox as origin, not the form
$radio2.Font = 'Microsoft Sans Serif,10'

$grpRadio.controls.AddRange(@($radio1,$radio2))
$heightPosition = $heightPosition + 90


$lbl10 = New-Object Windows.Forms.Label
$lbl10.Text = "Panel:"
$lbl10.Size = New-Object System.Drawing.Size($buttonWidth,20)
$lbl10.Location = New-Object System.Drawing.Point(5, $heightPosition)

#Panel (group elements together; can scroll,  no caption, can drop, tabstop optional)
$Panel = New-Object system.Windows.Forms.Panel
$Panel.Size = New-Object System.Drawing.Size($wideControl, 50)
$Panel.location = New-Object System.Drawing.Point($formPadding, $heightPosition)
$Panel.BackColor = "LightBlue"
$heightPosition = $heightPosition + 60


$lbl11 = New-Object Windows.Forms.Label
$lbl11.Text = "ProgressBar:"
$lbl11.Size = New-Object System.Drawing.Size($buttonWidth,20)
$lbl11.Location = New-Object System.Drawing.Point(5, $heightPosition)

#ProgressBar
$ProgressBar = New-Object system.Windows.Forms.ProgressBar
$ProgressBar.Size = New-Object System.Drawing.Size($wideControl, 15)
$ProgressBar.location = New-Object System.Drawing.Point($formPadding, $heightPosition)
$ProgressBar.Minimum = 0
$ProgressBar.Maximum = 100
$heightPosition = $heightPosition + 30


$lbl12 = New-Object Windows.Forms.Label
$lbl12.Text = "DataGridView:"
$lbl12.Size = New-Object System.Drawing.Size($buttonWidth,20)
$lbl12.Location = New-Object System.Drawing.Point(5, $heightPosition)

#DataGridView
$DataGridView = New-Object system.Windows.Forms.DataGridView
$DataGridView.Size = New-Object System.Drawing.Size( ($wideControl + 150) , 110)
$DataGridView.location = New-Object System.Drawing.Point($formPadding, $heightPosition)
#$DataGridView.AutoSize = $true                 # resizes the entire form element
$DataGridView.AutoSizeColumnsMode='AllCells'    # only resizes the columns
$DataGridView.ColumnHeadersVisible = $true
$DataGridView.RowHeadersVisible = $false
$DataGridView.MultiSelect = $false
$DataGridView.SelectionMode = 'FullRowSelect'
$DataGridView.ColumnCount = 3
$DataGridView.Columns[0].Name = "Process"
$DataGridView.Columns[1].Name = "Description"
$DataGridView.Columns[2].Name = "Memory"

Get-Process | ForEach{
    [void] $DataGridView.Rows.Add($_.Name,$_.Description,$_.WorkingSet)
}
$heightPosition = $heightPosition + 120


#And finally, a close button
$CloseButton = New-Object System.Windows.Forms.Button
$CloseButton.Text = "Close"
$CloseButton.Font = New-Object System.Drawing.Font("Arial", 12)
$CloseButton.Size = New-Object System.Drawing.Size($buttonWidth, 30)
$CloseButton.Location = New-Object System.Drawing.Point(475, 815)
$CloseButton.Anchor = [System.Windows.Forms.AnchorStyles]::Bottom `
			-bor [System.Windows.Forms.AnchorStyles]::Right

# Add each element to the form
$Form.controls.AddRange(@($lbl1,$lbl2,$lbl3,$lbl4,$lbl5,$lbl6,$lbl7,$lbl8,$lbl9,$lbl10,$lbl11,$lbl12))

$Form.Controls.Add($TextBox)
$Form.Controls.Add($Label)
$Form.Controls.Add($Button)
$Form.Controls.Add($PictureBox)
$Form.Controls.Add($checkbox)
$Form.Controls.Add($ComboBox)
$Form.Controls.Add($ListView)
$Form.Controls.Add($ListBox)
$Form.Controls.Add($grpRadio)
$Form.Controls.Add($Panel)
$Form.Controls.Add($ProgressBar)
$Form.Controls.Add($DataGridView)
$Form.Controls.Add($closeButton)
$Form.CancelButton = $CloseButton
$Form.AcceptButton = $CloseButton
$Form.ActiveControl = $CloseButton
$Form.AllowDrop = $True

# Timer to update status
$UpdateTimer = New-Object System.Windows.Forms.Timer
$UpdateTimer.Interval = 1000 # 1 second
$UpdateTimer.Add_Tick({
    # Update progress bar
    if ($ProgressBar.Value -lt 100) {
        $ProgressBar.Value += 10
    } else {
        $ProgressBar.Value = 0
    }
})
$UpdateTimer.Start()

# Display the form
$empty = $Form.ShowDialog()
