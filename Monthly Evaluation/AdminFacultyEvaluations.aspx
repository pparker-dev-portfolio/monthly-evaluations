<%@ Page Title="" Language="C#" MasterPageFile="~/Admin-Master.Master" AutoEventWireup="true" CodeBehind="AdminFacultyEvaluations.aspx.cs" Inherits="Capstone_1_Monthly_Evaluation.AdminFacultyEvaluations" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <script type = "text/javascript">
        function Confirm() {
            var confirm_value = document.createElement("INPUT");
            confirm_value.type = "hidden";
            confirm_value.name = "confirm_value";
            if (confirm("Do you want to delete the published form?")) {
                confirm_value.value = "Yes";
            } else {
                confirm_value.value = "No";
            }
            document.forms[0].appendChild(confirm_value);
        }
    </script>
    <div class="container">
        <div class="jumbotron text-center">Evaluations Of Students</div>
        <div class="schedulesJumbo">
            <div class="text-center p-3">
                <p>The following is for the faculty to fill out evaluations for the students.</p>
                <p>1) Please download the template by pressing "Download Faculty Evaluation Template" and fill it out</p>
                <p>2) Upload the completed template by pressing "Upload Faculty Evaluation Form"</p>
                <asp:Button runat="server" CssClass="adminUploadStudentEval" type="button" class="btn btn-lg" Text="DOWNLOAD EVALUATIONS ON STUDENTS TEMPLATE" />
                <br />
                <asp:Button runat="server" CssClass="adminUploadStudentEval" type="button" class="btn btn-lg" Text="UPLOAD EVALUATIONS ON STUDENTS FORM" OnClick="Unnamed2_Click" />
                <br />
                <asp:Label ID="lblSuccessfulUpload" runat="server" Text="The evaluation template was successfully uploaded." Visible="False" ForeColor="#33CC33"></asp:Label>
                <br />
                <asp:Label ID="lblUnsuccessfulUpload" runat="server" Text="The evaluation template was successfully uploaded." Visible="False" ForeColor="Red"></asp:Label>
            </div>

            <asp:Label ID="lblNoGridView" runat="server" Text="No evaluations that have been uploaded." Visible="False"></asp:Label>
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">Evaluation File Name</th>
                        <th scope="col">Publish Status</th>
                        <th scope="col">Action</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="row"><asp:Label ID="lblFileName1" runat="server" Text="FacultyMonth5Eval.xlsx"></asp:Label></th>
                        
                        <td>
                            <asp:Label ID="lblPublishStatus" runat="server" Text="Not Published"></asp:Label></td>
                        <td>
                            <asp:Button ID="btnPublish1" runat="server" Text="PUBLISH" CssClass="falTableButton" OnClick="btnPublish1_Click"/>
                            <asp:Button ID="btnUnpublish1" runat="server" Text="UNPUBLISH" CssClass="falTableButton" Visible="False" OnClick="btnUnpublish1_Click"/>
                            <asp:Button ID="btnDelete1" runat="server" Text="DELETE" CssClass="falTableButton" OnClientClick="Confirm()" OnClick="btnDelete1_Click"/>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">FacultyMonth6Eval.xlsx</th>
                        <td>Published</td>
                        <td>
                            <asp:Button ID="btnUnPublish2" runat="server" Text="UNPUBLISH" CssClass="falTableButton"/>
                            <asp:Button ID="btnDelete2" runat="server" Text="DELETE" CssClass="falTableButton"/>
                        </td>
                    </tr>
                </tbody>
            </table>

            <%--For database later--%>
            <%--<asp:GridView ID="gvFacultyEvaluation" runat="server" AutoGenerateColumns="False" HorizontalAlign="Center">
                <Columns>
                    <asp:TemplateField HeaderText="EVALUATION NAME"></asp:TemplateField>
                    <asp:TemplateField HeaderText="PUBLISHED STATUS"></asp:TemplateField>
                    <asp:BoundField HeaderText="FACULTY MEMBER NAME" />
                    <asp:BoundField HeaderText="SECONDARY FACULY MEMBER" />
                    <asp:TemplateField HeaderText="ACTION">
                        <ItemTemplate>
                            <asp:Button ID="btnPublish" runat="server" Text="PUBLISH" />
                            <asp:Button ID="btnUpload" runat="server" Text="UPLOAD" />
                            <asp:Button ID="btnDelete" runat="server" Text="DELETE" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>--%>
        </div>
        <br />
        <br />
        <div>
            <div class="jumbotron text-center">View Rotation and Data</div>
            <div class="schedulesJumbo">
                <p class="text-center p-3">Please select which row that you want to export data from.</p>
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">Rotation Name</th>
                            <th scope="col">Rotation Location</th>
                            <th scope="col">Faculty Name</th>
                            <th scope="col">Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">Rotation 1</th>
                            <td>Location 1</td>
                            <td>Name 1</td>
                            <td>
                                <asp:Button ID="btnPD1" runat="server" Text="Export Data" CssClass="falTableButton"/>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">Rotation 2</th>
                            <td>Location 2</td>
                            <td>Name 2</td>
                            <td>
                                <asp:Button ID="btnPD2" runat="server" Text="Export Data" CssClass="falTableButton"/>
                            </td>
                        </tr>
                    </tbody>
                </table>

                <%--<asp:GridView ID="gvRotationAndData" runat="server" AutoGenerateColumns="False" HorizontalAlign="Center">
                <Columns>
                    <asp:TemplateField HeaderText="ROTATION NAME"></asp:TemplateField>
                    <asp:TemplateField HeaderText="ROTATION LOCATION"></asp:TemplateField>
                    <asp:TemplateField HeaderText="FACULTY NAME"></asp:TemplateField>
                    <asp:TemplateField HeaderText="ACTIONS">
                        <ItemTemplate>
                            <asp:Button ID="btnSeeData" runat="server" Text="EXTRACT DATA" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>--%>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
