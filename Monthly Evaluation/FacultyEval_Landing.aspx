<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty-Master.Master" AutoEventWireup="true" CodeBehind="FacultyEval_Landing.aspx.cs" Inherits="Capstone_1_Monthly_Evaluation.FacultyEval_Landing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="jumbotron text-center">Monthly Evaluations of Students</div>
        <div class="schedulesJumbo">
            <p class="text-center" style="margin-top: 2px;">Please fill out the following evaluations for the student within the given rotational period.</p>

            <asp:Label class="ml-4" ID="lbl_Filter" runat="server" Text="Filters:" Style="font-size: 20px; font-weight: bold;"></asp:Label>

            <div class="row m-2">
                <div class="col">
                    <asp:Label ID="lbl_RotationalPeriod" runat="server" Text="Rotational Period: "></asp:Label>
                    <br />
                    <asp:Label ID="lbl_SelectedRotationalPeriod" runat="server" Text="[No Rotational Period Selected]"></asp:Label>

                </div>
                <div class="col">
                    <asp:Label ID="lbl_Program" runat="server" Text="Program: "></asp:Label><br />
                    <asp:Label ID="lbl_SelectedProgram" runat="server" Text="[No Program Selected]"></asp:Label>
                </div>
                <div class="col">
                    <asp:Label ID="lbl_CompletionStatus" runat="server" Text="Completion Status: "></asp:Label><br />
                    <asp:Label ID="lbl_SelectedCompletionStatus" runat="server" Text="[No Completion Status Selected]"></asp:Label>
                </div>
            </div>
            <div class="row m-2">
                <div class="col">
                    <asp:DropDownList ID="ddl_FilterRotationalPeriod" runat="server"></asp:DropDownList>
                </div>
                <div class="col">
                    <asp:DropDownList ID="ddl_FilterProgram" runat="server"></asp:DropDownList>
                </div>
                <div class="col">
                    <asp:DropDownList ID="ddl_FilterCompletionStatus" runat="server">
                        <asp:ListItem Value="1">Completed</asp:ListItem>
                        <asp:ListItem Value="-1">Not Completed</asp:ListItem>
                        <asp:ListItem Value="0">In Progress</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="d-flex justify-content-center">
                <asp:Button CssClass="falApplyFilters" ID="btnApplyFilter" runat="server" Text="Apply" />
            </div>
            <div class="d-flex justify-content-center">
                <%--<asp:Button CssClass="falApplyFilters" ID="btnAddStudent" runat="server" Text="Add Student" />--%>
            </div>

            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">Student</th>
                        <th scope="col">Student ID</th>
                        <th scope="col">Rotational Period</th>
                        <th scope="col">Program</th>
                        <th scope="col">Completion Status</th>
                        <th scope="col"></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="row">Chris Dave</th>
                        <td>123456</td>
                        <td>January 2021</td>
                        <td>Program 1</td>
                        <td><asp:Label ID="lblStatus" runat="server" Text="Not Started"></asp:Label></td>
                        
                        <td>
                            <asp:Button ID="btnStart1" runat="server" Text="Start" CssClass="falTableButton" OnClick="btnStart1_Click"/>
                            <asp:Button ID="btnFinish1" runat="server" Text="Continue" CssClass="falTableButton" OnClick="btnFinish1_Click" Visible="False"/>
                            <asp:Button ID="btnEdit" runat="server" Text="Edit" CssClass="falTableButton" Visible="False" OnClick="btnEdit_Click"/>
                            <asp:Button ID="btnView1" runat="server" Text="View" CssClass="falTableButton" OnClick="btnView1_Click" Visible="False"/>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">Larry Smith</th>
                        <td>193746</td>
                        <td>December 2019</td>
                        <td>Program 1</td>
                        <td>Finished</td>
                        <td>
                            <asp:Button ID="btnView" runat="server" Text="View" CssClass="falTableButton"/></td>
                    </tr>
                </tbody>
            </table>

            <%--  <asp:GridView ID="gv_FacultyEvaluationToDo" runat="server" AutoGenerateColumns="False" HorizontalAlign="Center">
                    <Columns>
                        <asp:HyperLinkField HeaderText="STUDENT" />
                        <asp:TemplateField HeaderText="STUDENT ID"></asp:TemplateField>
                        <asp:TemplateField HeaderText="ROTATIONAL PERIOD"></asp:TemplateField>
                        <asp:TemplateField HeaderText="PROGRAM"></asp:TemplateField>
                        <asp:TemplateField HeaderText="COMPLETION STATUS"></asp:TemplateField>
                        <asp:ButtonField ButtonType="Button" Text="EDIT" />
                    </Columns>
                </asp:GridView>--%>
        </div>
        <div class="container">
            <div class="jumbotron text-center">Student Completed Evaluations</div>
            <div class="schedulesJumbo">
                <p class="text-center">
                    The following are completed evaluations from students. 
                    Please refresh the page to get the most up-to-date completed forms.
                </p>
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">Name</th>
                            <th scope="col">Rotation</th>
                            <th scope="col">Program</th>
                            <th scope="col">Location</th>
                            <th scope="col">View Evaluation</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">Anonymous 1</th>
                            <td>Rotation 1</td>
                            <td>Program 1</td>
                            <td>Location 1</td>
                            <td>
                                <asp:Button ID="btnSView1" runat="server" CssClass="falTableButton" Text="View" OnClick="btnSView1_Click" />
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">Anonymous 2</th>
                            <td>Rotation 2</td>
                            <td>Program 2</td>
                            <td>Location 2</td>
                            <td>
                                <asp:Button ID="btnSView2" runat="server" CssClass="falTableButton" Text="View" />
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">Anonymous 3</th>
                            <td>Rotation 3</td>
                            <td>Program 3</td>
                            <td>Location 3</td>
                            <td>
                                <asp:Button ID="btnSView3" runat="server" CssClass="falTableButton" Text="View" />
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
