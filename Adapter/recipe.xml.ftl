<?xml version="1.0"?>
<recipe>
    <!-- <#include "../common/recipe_manifest.xml.ftl" /> -->

<#if generateLayout>
    <instantiate from="root/res/layout/item_main.xml.ftl" 
                   to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml"/>
    <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
</#if>

    <instantiate from="root/src/app_package/Adapter.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${adapterClass}.kt" />

    <open file="${escapeXmlAttribute(srcOut)}/${adapterClass}.kt" />
</recipe>
