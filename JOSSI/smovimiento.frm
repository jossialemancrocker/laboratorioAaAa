VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00FFFFFF&
   Caption         =   "Form1"
   ClientHeight    =   9075
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   10740
   LinkTopic       =   "Form1"
   ScaleHeight     =   9075
   ScaleWidth      =   10740
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer2 
      Enabled         =   0   'False
      Interval        =   2100
      Left            =   6480
      Top             =   3360
   End
   Begin VB.CommandButton Command3 
      Caption         =   "detener"
      Height          =   975
      Left            =   4680
      TabIndex        =   1
      Top             =   7200
      Width           =   1455
   End
   Begin VB.CommandButton Command2 
      Caption         =   "iniciar"
      Height          =   735
      Left            =   1920
      TabIndex        =   0
      Top             =   7320
      Width           =   1575
   End
   Begin VB.Timer Timer1 
      Interval        =   1100
      Left            =   5520
      Top             =   3240
   End
   Begin VB.Shape Shape1 
      Height          =   1575
      Left            =   840
      Shape           =   2  'Oval
      Top             =   1320
      Width           =   975
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Command1_Click()
Timer1.Enabled = True
End Sub

Private Sub Command2_Click()

End Sub

Private Sub Timer1_Timer()
    If Shape1.Top <= 4800 Then
        Shape1.Top = Shape1.Top + 100
    Else
        Shape1.Left = Shape1.Left + 100
    End If
    
    If Shape1.Left >= 7680 Then
        Timer1.Enabled = False
        Timer2.Enabled = True
    End If
End Sub

Private Sub Timer2_Timer()
    If Shape1.Top >= 120 Then
        Shape1.Top = Shape1.Top - 100
    Else
        Shape1.Left = Shape1.Left - 100
    End If
    
    If Shape1.Left <= 120 Then
        Timer2.Enabled = False
        Timer1.Enabled = True
    End If
End Sub


