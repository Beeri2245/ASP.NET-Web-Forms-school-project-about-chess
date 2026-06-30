<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="SchoolProjectWebDev.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-content">


    <h1>Welcome to the Chess Guide</h1>

<p>
This website is a simple guide to the game of chess.
It is designed for beginners and intermediate players who want to
learn the basics, understand common openings, and improve their overall game.
</p>

<h2>What is Chess?</h2>
<p>
Chess is a strategic board game played between two players on an 8×8 board.
Each player controls sixteen pieces, and the goal of the game is to checkmate
the opponent’s king.
</p>

<h2>What You Can Learn Here</h2>
<ul>
    <li>Basic rules and how the pieces move</li>
    <li>Common chess openings and their ideas</li>
    <li>Important tactical patterns used in real games</li>
    <li>Information about famous chess players</li>
</ul>

<h2>Who Is This Site For?</h2>
<p>
This site is suitable for anyone who wants to start playing chess
or improve their understanding of the game in a clear and simple way.
</p>
        <p>
            <a  href="Openings.aspx" style="color: rgb(118, 181, 91)"
                target="_blank" class="external-link">Click here to check out openings in chess</a>
        </p>
    <img src="../images/download.jpg" alt="Chess Board"/>
    <img src="../images/familyPhoto.png" alt="Family Photo" width="300" height="200"/>

    

    </div>
</asp:Content>
