<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty-Master.Master" AutoEventWireup="true" CodeBehind="FacultyEvalSubmit.aspx.cs" Inherits="Capstone_1_Monthly_Evaluation.FacultyEvalSubmit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div id="faculty_eval_questions" class="jumbotron text-center">Faculty Questions</div>
        <div class="schedulesJumbo">
            <br />
            <div class="d-flex justify-content-center">
                Submitted!
            </div>
             <div class="d-flex justify-content-center">
                <asp:Button CssClass="falApplyFilters" ID="btnReturn" runat="server" Text="Return" OnClick="btnReturn_Click" />
            </div>
        </div>
    </div>
</asp:Content>
