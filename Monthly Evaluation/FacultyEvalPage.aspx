<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty-Master.Master" AutoEventWireup="true" CodeBehind="FacultyEvalPage.aspx.cs" Inherits="Capstone_1_Monthly_Evaluation.FacultyEvalPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div id="faculty_eval_questions" class="jumbotron text-center">Faculty Questions</div>
        <div class="schedulesJumbo p-3">
            <br />
            <h3>
                <asp:Label runat="server">Student Information:</asp:Label></h3>
            <p>
                Student:
            <asp:Label ID="lblStudentName" runat="server" Text="Larry Smith" Style="font-weight: bold;"></asp:Label>
            </p>
            <p>
                Evaluator:
            <asp:Label ID="lblEvaluatorName" runat="server" Text="Dr. Ida Holt" Style="font-weight: bold;"></asp:Label>
            </p>

            <p>
                Month:
            <asp:Label ID="lblMonth" runat="server" Text="Jaunary" Style="font-weight: bold;"></asp:Label>
            </p>
            <p>
                Program:
            <asp:Label ID="lblProgramName" runat="server" Text="Cardiology" Style="font-weight: bold;"></asp:Label>
            </p>
            <br />

            <div class="text-center">
                <h4>
                    <asp:Label runat="server">Please rate the student's performance on the following learning objectives on scale of 1-5:
                        <asp:Label runat="server" style="color: red;">*</asp:Label>
                    </asp:Label></h4>
                <p>
                    (1 = Poor, 2 = Fair, 3 = Good, 4 = Very Good, 5 = Excellent, N/A = Not Applicable)
                </p>
            </div>
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">Rate the Following</th>
                        <th scope="col">Rating</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="row">Evaluate the patient by performing a comprehensive podiatric, medical and surgical evaluation of patients and estimate criteria for selection of surgical procedures</th>
                        <td>
                            <asp:RadioButtonList runat="server" RepeatDirection="Horizontal" ID="RadioButtonList1" CssClass="radioButtonList" TextAlign="Left">
                                <asp:ListItem Value="1" Text="1"></asp:ListItem>
                                <asp:ListItem Value="2" Text="2"></asp:ListItem>
                                <asp:ListItem Value="3" Text="3"></asp:ListItem>
                                <asp:ListItem Value="4" Text="4"></asp:ListItem>
                                <asp:ListItem Value="5" Text="5"></asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">Perform a lower extremity history and physical examination</th>
                        <td>
                            <asp:RadioButtonList runat="server" RepeatDirection="Horizontal" ID="RadioButtonList2" CssClass="radioButtonList" TextAlign="Left">
                                <asp:ListItem Value="1" Text="1"></asp:ListItem>
                                <asp:ListItem Value="2" Text="2"></asp:ListItem>
                                <asp:ListItem Value="3" Text="3"></asp:ListItem>
                                <asp:ListItem Value="4" Text="4"></asp:ListItem>
                                <asp:ListItem Value="5" Text="5"></asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">Perform a complete lower extremity biomechanical evaluation</th>
                        <td>
                            <asp:RadioButtonList runat="server" RepeatDirection="Horizontal" ID="RadioButtonList3" CssClass="radioButtonList" TextAlign="Left">
                                <asp:ListItem Value="1" Text="1"></asp:ListItem>
                                <asp:ListItem Value="2" Text="2"></asp:ListItem>
                                <asp:ListItem Value="3" Text="3"></asp:ListItem>
                                <asp:ListItem Value="4" Text="4"></asp:ListItem>
                                <asp:ListItem Value="5" Text="5"></asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                </tbody>
            </table>

            <br />

            <h5>
                <asp:Label runat="server">Other Thoughts/ Notes About the Student:</asp:Label></h5>
            <div class="d-flex justify-content-center">
                <textarea id="txta1" class="form-control" cols="20" rows="2" runat="server" style="width: 100%;"></textarea>
            </div>
            <br />


            <h5>
                <asp:Label runat="server">Final Observation:</asp:Label>
                <asp:Label runat="server" Style="color: red;">*</asp:Label>
            </h5>
            <p>
                This evaluation repressents 
                <asp:TextBox ID="txtHours" runat="server" Width="50px"></asp:TextBox>
                hours of observation or opinon of 
                <asp:TextBox ID="txtNumPO" runat="server" Width="30px"></asp:TextBox>
                personal observers.
            </p>
            <p>**Student must achieve at least (2) in all areas listed above to recieving a passing grade for this rotation.</p>
            <asp:RadioButtonList ID="RBLPassFail" runat="server">
                <asp:ListItem Selected="True">Pass**</asp:ListItem>
                <asp:ListItem>Fail</asp:ListItem>
            </asp:RadioButtonList>

            <div class="d-flex justify-content-center">
                <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="falApplyFilters" OnClick="btnSave_Click"/>
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmitFacultyEval_Click" CssClass="falApplyFilters"/>
            </div>
        </div>
    </div>
</asp:Content>
