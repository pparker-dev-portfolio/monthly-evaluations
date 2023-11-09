<%@ Page Title="" Language="C#" MasterPageFile="~/Student-Master.Master" AutoEventWireup="true" CodeBehind="StudentEvalSubmit.aspx.cs" Inherits="Capstone_1_Monthly_Evaluation.StudentEvalSubmit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="container">
        <div id="faculty_eval_questions" class="jumbotron text-center">Student Questions</div>
        <div class="schedulesJumbo">
            <br />
            <div class="d-flex justify-content-center p-5">
                <asp:Label ID="lblSubmittionVerification" runat="server" Text="Do you want to submit the evaluation you just completed?"></asp:Label>
            </div>
            <div class= "text-center p-2">
                <asp:Button ID="btnSubmit" runat="server" Text="SUBMIT" CssClass="falApplyFilters" OnClick="btnSubmit_Click"/>
                <asp:Button ID="btnCancel" runat="server" Text="CANCEL" CssClass="falApplyFilters" OnClick="btnCancel_Click"/>
            </div>
            <div class="d-flex justify-content-center">
                <asp:Label ID="lblSubmitted" runat="server" Text="Your Evaluation Was Successfully Submitted!" Visible="False"></asp:Label>
            </div>
            <div class="d-flex justify-content-center">
                <asp:Button CssClass="falApplyFilters" ID="btnReturn" runat="server" Text="Return" OnClick="btnReturn_Click" Visible="False" />
            </div>
        </div>
    </div>
</asp:Content>
