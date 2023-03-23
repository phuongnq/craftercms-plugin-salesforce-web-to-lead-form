<#if contentModel.usePluginTheme_b?? && contentModel.usePluginTheme_b>
    <link rel="stylesheet" href="/static-assets/plugins/pn/org/craftercms/plugin/salesforce/web-to-lead-form/css/contact-form.css" />
</#if>

<#assign validateForm = contentModel.usePluginScript_b?? && contentModel.usePluginScript_b />
<#assign oid = pluginConfig.getString('oid') />

<form
        id="${contentModel.formId_s}"
        action="${contentModel.url_s}"
        method="post"
        class="contact-form <#if validateForm>needs-validation</#if>"
        <#if validateForm>novalidate</#if>
>
    <input type=hidden name="oid" value="${oid}">
    <input type=hidden name="retURL" value="${contentModel.redirectUrl_s}">
    <#if contentModel.title_s??>
        <div class="form-section">
            <h2 class="form-title">${contentModel.title_s}</h2>
        </div>
    </#if>

    <#list contentModel.fields_o.item as field>
        <div class="form-section">
            <label for="${field.fieldName_s}" class="form-label">
                ${field.fieldLabel_s}
                <#if field.required_b && validateForm>
                    <span class="form-field-required-indicator" />
                </#if>
            </label>
            <input
                type="text"
                id="${field.fieldName_s}"
                name="${field.fieldName_s}"
                class="form-control"
                <#if field.required_b?? && field.required_b>required</#if>
            />
        </div>
    </#list>

    <input type="hidden" name="formId" value="${contentModel.formId_s}"/>
    <input type="submit" class="submit-btn" value="${contentModel.submitLabel_s}"/>
</form>

<#if validateForm>
    <script src="/static-assets/plugins/pn/org/craftercms/plugin/salesforce/web-to-lead-form/js/validate-form.js"></script>
</#if>