<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <link rel="stylesheet" type="text/css" href="monuments.css"/>
            </head>
            <body>
                <xsl:apply-templates select="monuments-list"/>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="monuments-list">
        <header>
            <h1>
                Monuments: 
                <xsl:value-of select="continent"/>
            </h1>
        </header>
        <nav class="main_menu">
            <ul class="main_menu_options">
                <a class="main_option" href="africa.xml"><li>Àfrica</li></a>
                <a class="main_option" href="america.xml"><li>Amèrica</li></a>
                <a class="main_option" href="asia.xml"><li>Àsia</li></a>
                <a class="main_option" href="europa.xml"><li>Europa</li></a>
                <a class="main_option" href="oceania.xml"><li>Oceania</li></a>
            </ul>
        </nav>
        <nav>
            <ul>
                <xsl:for-each select="countries/country">
                <a>
                    <xsl:attribute name="href">
                        #<xsl:value-of select="name"/>
                    </xsl:attribute>
                    <li>
                        <xsl:value-of select="name"/>
                    </li>
                </a>
                </xsl:for-each>
            </ul>
        </nav>
        <main>
            <xsl:for-each select="countries/country">
                <div class="country">
                    <h2>
                        <xsl:value-of select="name"/>
                    </h2>
                    <a href="">
                        <xsl:attribute name="name">
                            <xsl:value-of select="name"/>
                        </xsl:attribute>    
                        Pujar
                    </a>
                    <section class="country_monuments">
                        <xsl:for-each select="monuments/monument">
                            <a class="item" target="_blank">
                                <xsl:attribute name="href">
                                    https://ca.wikipedia.org/wiki/<xsl:value-of select="url"/>
                                </xsl:attribute>
                                <h3>
                                    <xsl:value-of select="name"/>
                                </h3>
                                <img alt="">
                                    <xsl:attribute name="src">
                                        imatges/<xsl:value-of select="image"/>
                                    </xsl:attribute>
                                </img>
                                <h4>
                                    <xsl:value-of select="place"/>
                                </h4>
                            </a>
                        </xsl:for-each>
                    </section>
                </div>
            </xsl:for-each>
        </main>
    </xsl:template>
</xsl:stylesheet>