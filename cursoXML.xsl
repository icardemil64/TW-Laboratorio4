<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml"/>
    <xsl:strip-space elements="*"/>
    <xsl:template match="/">
        <curso año="{curso/@año}" sala="{curso/@sala}" nombre="{curso/@nombre}" codigo="{curso/@codigo}">
            <carrera>
                <nombre>
                    <xsl:value-of select="curso/carrera/@nombre"/>
                </nombre>
                <locacion>
                    <xsl:value-of select="curso/carrera/@locacion"/>
                </locacion>
            </carrera>
            <profesor>
                <grado>
                    <xsl:value-of select="curso/profesor/@grado"/>
                </grado>
                <rut>
                    <xsl:value-of select="curso/profesor/@rut"/>
                </rut>
                <nombre>
                    <xsl:value-of select="curso/profesor/@nombre"/>
                </nombre>
                <apellido>
                    <xsl:value-of select="curso/profesor/@apellido"/>
                </apellido>
            </profesor>
            <alumnos>
                <xsl:for-each select="curso/alumnos/alumno">
                    <alumno rut="{@rut}" nombre="{@nombre}" apellido="{@apellido}" permanencia="{@permanencia}"/>
                </xsl:for-each>
            </alumnos>
        </curso>
    </xsl:template>
</xsl:stylesheet>
