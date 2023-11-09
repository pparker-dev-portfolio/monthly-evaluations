<%@ Page Title="" Language="C#" MasterPageFile="~/Admin-Master.Master" AutoEventWireup="true" CodeBehind="AdminStudentEvaluation.aspx.cs" Inherits="Capstone_1_Monthly_Evaluation.AdminStudentEvaluation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="container">
        <div class="jumbotron text-center">Evaluations of Faculty</div>
        <div class="schedulesJumbo">
            <div class="text-center p-3">
                <p>The following is the student evaluations for the faculty.</p>
                <p>1) Please download the template by pressing "Download Student Evaluation Template" and fill it out</p>
                <p>2) Upload the completed template by pressing "Upload Student Evaluation Form"</p>
                <asp:Button CssClass="adminUploadStudentEval" runat="server" type="button" class="btn btn-primary btn-lg" Text="DOWNLOAD EVALUATIONS ON FACULTY TEMPLATE" OnClick="DownloadTemplate_Click" />
                <asp:Button CssClass="adminUploadStudentEval" runat="server" type="button" class="btn btn-primary btn-lg" Text="UPLOAD EVALUATIONS ON FACULTY FORM" />
            </div>
            <div>
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">Evaluation File Name</th>
                            <th scope="col">Publish Status</th>
                            <th scope="col">Year</th>
                            <th scope="col">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">StudentMonth5Eval.xlsx</th>
                            <td>
                                <asp:Label ID="lblPublishStatus" runat="server" Text="Not Published"></asp:Label></td>
                            <td>Year1</td>
                            <td>
                                <asp:Button ID="btnPublish1" runat="server" Text="PUBLISH" CssClass="falTableButton"/>
                                <asp:Button ID="btnDelete1" runat="server" Text="DELETE" CssClass="falTableButton"/>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">StudentMonth6Eval.xlsx</th>
                            <td>Published</td>
                            <td>Year2</td>
                            <td>
                                <asp:Button ID="btnUnPublish2" runat="server" Text="UNPUBLISH" CssClass="falTableButton"/>
                                <asp:Button ID="btnDelete2" runat="server" Text="DELETE" CssClass="falTableButton"/>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <br>
            </div>
        </div>
        <br />
        <br />
        <div class="jumbotron text-center">Export Evaluation Data</div>
        <div class="schedulesJumbo">
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">Rotation Name</th>
                        <th scope="col">Rotation Location</th>
                        <th scope="col">Year</th>
                        <th scope="col">Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="row">Rotation 1</th>
                        <td>Location 1</td>
                        <td>[year]</td>
                        <td>
                            <asp:Button ID="btnPD1" runat="server" Text="Export Data" CssClass="falTableButton"/>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">Rotation 2</th>
                        <td>Location 2</td>
                        <td>[year]</td>
                        <td>
                            <asp:Button ID="btnPD2" runat="server" Text="Export Data" CssClass="falTableButton"/>
                        </td>
                    </tr>
                </tbody>
            </table>
            <%--<asp:GridView ID="gvStudents" runat="server" AutoGenerateColumns="False" HorizontalAlign="Center">
                <Columns>
                    <asp:TemplateField HeaderText="NAME"></asp:TemplateField>
                    <asp:TemplateField HeaderText="ID"></asp:TemplateField>
                    <asp:TemplateField HeaderText="ROTATION PERIOD"></asp:TemplateField>
                    <asp:BoundField HeaderText="FACULTY NAME" />
                    <asp:TemplateField HeaderText="ACTION">
                        <ItemTemplate>
                            <asp:Button ID="btnLockAccount" runat="server" Text="LOCK ACCOUNT" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>--%>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
