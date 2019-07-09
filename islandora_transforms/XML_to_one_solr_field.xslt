<?xml version="1.0" encoding="UTF-8"?>
<!-- for all inline xml glob all the text nodes into one field-->
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <!-- have the template match whatever datastream needs this type of processing -->
  <xsl:template name="index_text_nodes_as_one_text_field">
    <xsl:param name="content"/>
    <xsl:param name="field_name">mods_full_xml</xsl:param>

    <field>
      <xsl:attribute name="name">
        <xsl:value-of select="$field_name" />
      </xsl:attribute>
      <xsl:value-of select="normalize-space($content)"/>
    </field>
    
  </xsl:template>
</xsl:stylesheet>
