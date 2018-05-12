<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Información del curso
                </title>
            </head>
            <body>
                <h2>Transformación XSLT: de XML a HTML</h2>
                <table border="1">
                    <tr>
                        <th colspan="4">
                            Información del curso
                        </th>
                    </tr>
                    <tr>
                        <th colspan="2">
                            Carrera: <xsl:value-of select="curso/alumnos/>
                        </th>
                        <th colspan="2">
                            Locación: <xsl:value-of select="curso/carrera/@locacion"/>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <xsl:value-of select="curso/@nombre"/>
                        </th>
                        <th>
                            <xsl:value-of select="curso/@codigo"/>
                        </th>
                        <th>
                            <xsl:value-of select="curso/@sala"/>
                        </th>
                        <th>
                            <xsl:value-of select="curso/@año"/>
                        </th>
                    </tr>
                    <tr>
                        <th colspan="4">
                            Profesor
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <xsl:value-of select="curso/profesor/@rut"/>
                        </th>
                        <th>
                            <xsl:value-of select="curso/profesor/@nombre"/>
                        </th>
                        <th>
                            <xsl:value-of select="curso/profesor/@apellido"/>
                        </th>
                        <th>
                            <xsl:value-of select="curso/profesor/@grado"/>
                        </th>
                    </tr>
                    <tr>
                        <th colspan="4">
                            Lista de alummos
                        </th>
                    </tr>
                    <tr>
                        <th>
                            RUT
                        </th>
                        <th>
                            Nombre
                        </th>
                        <th>
                            Apellido
                        </th>
                        <th>
                            Permanencia
                        </th>
                    </tr>
                    <xsl:for-each select="curso/alumnos/alumno">
                        <tr>
                            <td>
                                <xsl:value-of select="@rut"/>
                            </td>
                            <td>
                                <xsl:value-of select="@nombre"/>
                            </td>
                            <td>
                                <xsl:value-of select="@apellido"/>
                            </td>
                            <td>
                                <xsl:value-of select="@permanencia"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
