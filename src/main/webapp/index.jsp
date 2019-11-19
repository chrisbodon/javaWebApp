<%@include file="includes/cabecera.jsp"%>
<%@include file="includes/navegacion.jsp"%>
<style>
        .btn-hover {
            width: 200px;
            background-image: linear-gradient(to right,
                    #25aae1,
                    #72c7dc,
                    #72c7dc,
                    #72c7dc);
            box-shadow: 0 4px 15px 0 rgba(49, 196, 190, 0.75);
            font-size: 20px;
            font-weight: 600;
            color: #fff;
            cursor: pointer;
            margin: 20px;
            padding: 20px;
            text-align: center;
            border: none;
            background-size: 300% 100%;
            border-radius: 50px;
            moz-transition: all 0.4s ease-in-out;
            -o-transition: all 0.4s ease-in-out;
            -webkit-transition: all 0.4s ease-in-out;
            transition: all 0.4s ease-in-out;
        }

        .btn-hover:hover {
            background-position: 100% 0;
            moz-transition: all 0.4s ease-in-out;
            -o-transition: all 0.4s ease-in-out;
            -webkit-transition: all 0.4s ease-in-out;
            transition: all 0.4s ease-in-out;
        }

        .btn-hover:focus {
            outline: none;
        }

        table {
            width: 60%;
            margin: auto;
            border: 1px solid #bfa5a5;
        }

        th,
        td {
            cursor: pointer;
            transition: background-color 0.5s ease;
            border: 1px solid #bfa5a5;
            width: 50%;
        }

        th {
            padding: 5px;
        }

        th:hover {
            background-color: #5b0316;
            color: #f1f1e6;
            transition: background-color 0.5s ease;
        }

        td:hover {
            background-color: #5b0316;
            color: #f1f1e6;
            transition: background-color 0.5s ease;
        }
    </style>
 <h1>Ipartek HTML5</h1>

    <a target="_blank" href="">Documentaci�n de tablas.</a>
    <h2>Tabla</h2>

    <table>
        <tr>
            <th>Fila 1</th>
            <th>Fila 2</th>
        </tr>
        <tr>
            <td>Aitor</td>
            <td></td>
        </tr>
        <tr>
            <td>Endika</td>
            <td>Iker</td>
        </tr>
        <tr>
            <td>��igo</td>
            <td>Kiryl</td>
        </tr>
        <tr>
            <td>Juan Carlos</td>
            <td>Mar�a</td>
        </tr>
        <tr>
            <td>Alejandro</td>
            <td>Ana</td>
        </tr>
        <tr>
            <td>Cristian</td>
            <td>Erlantz</td>
        </tr>
        <tr>
            <td>Ra�l</td>
            <td>X</td>
        </tr>
        <tr>
            <td>Joseba</td>
            <td>Mikel</td>
        </tr>
        <tr>
            <td colspan="2">Ander</td>
        </tr>
    </table>

    <a href="javascript:void(0)" class="btn-hover" onclick="selectVolunteer()">�Qui�n lee?</a>
    <h2 id="volunteer">Voluntari@</h2>
    <audio id="audio" src="media/final-fantasy-vii-victory-fanfare-1.mp3"></audio>

<%@include file="includes/pie.jsp"%>