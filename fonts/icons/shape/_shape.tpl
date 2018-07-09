<! DOCTYPE html>
<html lang="ru">
    <head>
        <meta charset="UTF-8">
        <meta name="description" content="Example Description">
        <meta name="keywords" content="Example Keywords">
        <meta name="author" content="Vladimir Levchenko">
        <link rel="preload" href="../../{{options.fontId}}.woff2" as="font" type="font/woff2" crossorigin>
        <style type="text/css">
            @font-face {
                font-family: "{{options.fontName}}";
                src: url("../../{{options.fontId}}.woff2") format("woff2"),
                    url("../../{{options.fontId}}.woff") format("woff"),
                    url("../../{{options.fontId}}.ttf") format("truetype");
            }
        </style>
        <link rel="stylesheet" type="text/css" href="../../../scsstarget/style-inline.css">
        <style>
            body {
                background: #202020;
                color: #f4ebd3;
            }
            table {
                width: 90%;
                margin: 20px auto;
                border: 1px solid #404040;
                font-size: 13px;
            }
            table th, table td {
                padding: 2px;
                border: 1px solid #404040;
                vertical-align: middle;
                text-align: center;
                white-space: nowrap;
            }
            table th {
                padding: 5px 2px;
            }
            .icon {
                -webkit-transition: all ease-out 0.5s;
                -moz-transition: all ease-out 0.5s;
                -o-transition: all ease-out 0.5s;
                transition: all ease-out 0.5s;
                font-size: 20px;
            }
            table tr:hover .icon {
                font-size: 26px;
            }
            table tr:hover{
                background: #2d2e34;
                color: #87ceeb;
            }
            .code {font-family: monospace, serif;}
        </style>
    </head>
    <body class="icons">
        <table border="1" width="100%">
            <thead>
                <tr>
                    <th>Result</th>
                    <th>Class</th>
                    <th>Variable</th>
                    <th>SCSS</th>
                </tr>
            </thead>
            <tbody>
            {{#glyphs}}
                <tr>
                    <td class="icon"><div class="i-{{options.fontId}}-{{name}}"></div></td>
                    <td>i-{{options.fontId}}-{{name}}</td>
                    <td>i-{{options.fontId}}-char({{name}}) => '\{{string}}'</td>
                    <td class="code">
                            :before - @include i-{{options.fontId}}({{name}});<br />
                            :after  - @include i-{{options.fontId}}({{name}}, after);
                    </td>
                </tr>
            {{/glyphs}}
            </tbody>
        </table>
    </body>
</html>