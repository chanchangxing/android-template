<?xml version="1.0"?>
<recipe>
    <!--<#include "../common/recipe_manifest.xml.ftl" />-->

    <instantiate from="root/src/app_package/SimpleActivity.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}.kt" />
    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.kt" />

    <instantiate from="root/src/app_package/SimpleFragment.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${fragmentClass}.kt" />
    <open file="${escapeXmlAttribute(srcOut)}/${fragmentClass}.kt" />

    <instantiate from="root/res/layout/activity_simple.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${activitylayoutName}.xml" />
    <open file="${escapeXmlAttribute(resOut)}/layout/${activitylayoutName}.xml" />

    <instantiate from="root/res/layout/fragment_simple.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${fragmentLayoutName}.xml" />
    <open file="${escapeXmlAttribute(resOut)}/layout/${fragmentLayoutName}.xml" />

    <instantiate from="root/src/app_package/SimplePresenter.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${presenter}.kt" />
    <open file="${escapeXmlAttribute(srcOut)}/${presenter}.kt" />

    <instantiate from="root/src/app_package/SimpleContract.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${contract}.kt" />
    <open file="${escapeXmlAttribute(srcOut)}/${contract}.kt" />
</recipe>
