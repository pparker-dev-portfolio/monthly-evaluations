<%@ Page Title="" Language="C#" MasterPageFile="~/Student-Master.Master" AutoEventWireup="true" CodeBehind="StudentEval_LandingPage.aspx.cs" Inherits="Capstone_1_Monthly_Evaluation.StudentEval_LandingPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="container">
        <div class="jumbotron text-center">Monthly Evaluation of Faculty</div>
        <div class="schedulesJumbo">
            <p class="text-center">Please fill out the following evaluations for your given rotational period.</p>
            <p class="text-left ml-2">
                Please ensure that the following information is correct before continuing. 
                    If it is not correct please change the option with the drop down menu and pressing submit changes:
            </p>
            <br>
            <div class="m-2">
                <p>
                    Faculty Name:
                        <asp:Label ID="lblStudentName" runat="server" class="studentEvaluationInfo" Text="Dr. Rudy Williamson " Style="font-weight: bold;"></asp:Label>
                </p>
                <p>
                    Rotation:
                        <asp:Label ID="lblStudentRotationalPeriod" runat="server" class="studentEvaluationInfo" Text="January 2022 - March 2022" Style="font-weight: bold;"></asp:Label>
                </p>
                <p>
                    Program:
                        <asp:Label ID="lblStudentRotationalProgram" runat="server" class="studentEvaluationInfo" Text="Cardiology" Style="font-weight: bold;"></asp:Label>
                </p>
                <p>
                    Location:
                        <asp:Label ID="lblStudentRotationalLocation" runat="server" class="studentEvaluationInfo" Text="Bellflower Community Hospital" Style="font-weight: bold;"></asp:Label>
                </p>
            </div>
            <div class="m-2">
                <p>
                    **If the information above is incorrect, please contact administration: 
                        <br>
                    smthing@email.com
                        <br>
                    xxx-xxx-xxxx
                </p>
            </div>

            <div class="text-center">
                <asp:Button CssClass="falApplyFilters" runat="server" Text="CONTINUE TO EVALUTATION" class="btn btn-primary btn-lg btn-block" OnClick="btnContinueEval_Click" ID="btnContinueEval" />
                <asp:Button CssClass="falApplyFilters" class="btn btn-primary btn-lg btn-block" ID="btnEditEval" runat="server" Text="Edit Evaluation" Enabled="False" Visible="False" OnClick="btnEditEval_Click"/>
                <asp:Button CssClass="falApplyFilters" class="btn btn-primary btn-lg btn-block" ID="btnViewEval" runat="server" Text="View Evaluation" Enabled="False" Visible="False" OnClick="btnViewEval_Click"/>
            </div>
        </div>
    </div>
</asp:Content>
