<%String title = "Básicos"; %>
<%@include file="../../../includes/cabecera.jsp"%>
<%@include file="../../../includes/navegacion.jsp"%>

    <style>
        .listStyles li:nth-child(3),
        .listStyles li:nth-child(5) {
            background-color: #5b0316;
        }

        .listStyles li:first-child,
        .listStyles li:last-child {
            font-size: 20px;
            color: white;
            background-color: orange;
        }
    </style>

    <h1 id="title">Básicos</h1>

    <h2>Enlaces</h2>

    <a href="https://www.youtube.com/?hl=es&gl=ES" target="_blank">Youtube</a>
    <a href="/index.html">Principal</a>
    <a href="#title">Título</a>

    <a href="tel:688636936">688 636 936</a>
    <a href="mailto:cbodon.cb@gmail.com">cbodon.cb@gmail.com</a>

    <h2>Listas</h2>

    <ul>
        <li>elemento</li>
        <li>elemento</li>
        <li>elemento</li>
        <li>elemento</li>
    </ul>

    <ol>
        <li>elemento</li>
        <li>elemento</li>
        <li>elemento</li>
        <li>elemento</li>
    </ol>

    <dl>
        <li>elemento</li>
        <li>elemento</li>
        <li>elemento</li>
        <li>elemento</li>
    </dl>

    <h2>Article</h2>

    <article>
        LOREM IPSUM
        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus autem asperiores nam odit, natus odio suscipit
        recusandae et laborum dolores ipsa molestias tempore, labore voluptates similique eius dolorem nihil a.
    </article>
    <article>
        LOREM IPSUM
        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellat dolorum nam accusantium illum dolore
        veritatis doloribus aspernatur enim excepturi totam. Necessitatibus veniam quis laboriosam eligendi dolorum
        voluptatibus distinctio explicabo ex.
    </article>
    </section>

    <h2>Figure</h2>

    <figure>
        <iframe src="https://www.youtube.com/embed/WIOX32wh9_A"></iframe>
        <figcaption>
            Lorem ipsum dolor sit, amet consectetur adipisicing elit. Id totam placeat praesentium voluptates laudantium
            consequatur amet ipsa repellat beatae, sequi debitis numquam corporis, hic neque necessitatibus ad nam
            impedit excepturi?
        </figcaption>
    </figure>

    <figure>
        <figcaption>Lorem ipsum dolor sit amet consectetur</figcaption>
        <img src="https://picsum.photos/id/684/600/400" alt="img description tag">
    </figure>

    <h2>Progress</h2>
    <p>Food eaten:</p>
    <progress value="55" max="100"></progress>

    <h2>Pruebas CSS</h2>
    <p class="textClass" style="color: aqua;">Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt
        cupiditate ullam, unde, officiis libero itaque, numquam vitae est perspiciatis error quae dolores ipsam
        praesentium aspernatur delectus officia consequuntur reprehenderit mollitia.</p>
    <style>
        /* CSS dentro de HTML*/

        .textClass {
            color: blueviolet;
        }
    </style>

    <h2>Tipos de selectores</h2>
    <p>VÃ­deo sobre los tipos de selectores.</p>
    <iframe width="560" height="315" src="https://www.youtube.com/embed/ARaU6uGOa_k" frameborder="0"
        allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>


    <h2>Selector de elementos de listas</h2>
    <ul class="listStyles">
        <li>Elemento</li>
        <li>Elemento</li>
        <li>Elemento</li>
        <li>Elemento</li>
        <li>Elemento</li>
        <li>Elemento</li>
        <li>Elemento</li>
    </ul>

<%@include file="../../../includes/pie.jsp"%>