<%@ Page Title="Rules" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Rules.aspx.cs" Inherits="SchoolProjectWebDev.Rules" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-content">
<p>
This page explains the basic rules of chess and how each piece moves on the board.
Understanding these rules is essential before learning openings and tactics.
</p>

<h2>The Chess Board</h2>
<p>
The chessboard consists of 64 squares arranged in an 8×8 grid.
Each player starts with their pieces placed on the two rows closest to them.
</p>

<img src="../images/chessboard-29630_1280.png" width="300" alt="Chess Board" />

<h2>The Pieces</h2>

<h3>Pawn</h3>
<p>
Pawns move forward one square at a time and capture diagonally.
On their first move, they may move two squares forward.
</p>

<h3>Rook</h3>
<p>
The rook moves any number of squares horizontally or vertically.
</p>

<h3>Knight</h3>
<p>
The knight moves in an L-shape: two squares in one direction and then one square sideways.
It is the only piece that can jump over other pieces.
</p>

<h3>Bishop</h3>
<p>
The bishop moves diagonally across the board.
</p>

<h3>Queen</h3>
<p>
The queen combines the movement of the rook and bishop.
It is the most powerful piece on the board.
</p>

<h3>King</h3>
<p>
The king moves one square in any direction.
The game ends when the king is checkmated.
</p>

<h2>Special Rules</h2>
<ul>
    <li><strong>Castling</strong> - a special move involving the king and rook.</li>
    <li><strong>Pawn Promotion</strong> - when a pawn reaches the last rank, it is promoted to another piece.</li>
    <li><strong>Check and Checkmate</strong> - check threatens the king, checkmate ends the game.</li>
    <li><strong>En passant</strong> - A unique pawn capture when an opponent's pawn moves two squares next to it.</li>
    <li>Other key rules involve draws (50-move, threefold repetition)
        and the <strong>Touch & Move rule</strong> which basically says if you touched a piece, you must move it.</li>
</ul>
    <div class="image-row">
        <div>
            <h3>Queen checking the king</h3>
            <img src="../images/check-king-move.jpg"
                 alt="Queen threatening the king with check"
                 width="300" />
        </div>

        <div>
            <h3>Queen checkmating the king</h3>
            <img src="../images/checkmate-example.png"
                 width="300" />
        </div>
</div>


    </div>
</asp:Content>
