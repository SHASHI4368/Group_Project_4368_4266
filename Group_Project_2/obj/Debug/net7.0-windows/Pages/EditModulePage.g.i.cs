﻿#pragma checksum "..\..\..\..\Pages\EditModulePage.xaml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "A77D29248A32259F397657E6F0605D8F3599C596"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using Group_Project_2.Pages;
using Group_Project_2.View_Models;
using MahApps.Metro.IconPacks;
using MahApps.Metro.IconPacks.Converter;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Controls.Ribbon;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace Group_Project_2.Pages {
    
    
    /// <summary>
    /// EditModulePage
    /// </summary>
    public partial class EditModulePage : System.Windows.Controls.Page, System.Windows.Markup.IComponentConnector {
        
        
        #line 41 "..\..\..\..\Pages\EditModulePage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox mName;
        
        #line default
        #line hidden
        
        
        #line 56 "..\..\..\..\Pages\EditModulePage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox mCode;
        
        #line default
        #line hidden
        
        
        #line 67 "..\..\..\..\Pages\EditModulePage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox credits;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "7.0.5.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/Group_Project_2;component/pages/editmodulepage.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\..\Pages\EditModulePage.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "7.0.5.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.mName = ((System.Windows.Controls.TextBox)(target));
            return;
            case 2:
            this.mCode = ((System.Windows.Controls.TextBox)(target));
            return;
            case 3:
            this.credits = ((System.Windows.Controls.TextBox)(target));
            
            #line 67 "..\..\..\..\Pages\EditModulePage.xaml"
            this.credits.GotMouseCapture += new System.Windows.Input.MouseEventHandler(this.credits_GotMouseCapture);
            
            #line default
            #line hidden
            
            #line 67 "..\..\..\..\Pages\EditModulePage.xaml"
            this.credits.GotKeyboardFocus += new System.Windows.Input.KeyboardFocusChangedEventHandler(this.credits_GotKeyboardFocus);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

