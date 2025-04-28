<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=true; section>
    <#if section = "header">
        <h1>Register User</h1>
    <#elseif section = "form">
        <form id="kc-register-form" class="${properties.kcFormClass!}" action="${url.registrationAction}" method="post">
            <div class="${properties.kcFormGroupClass!}">
                <label for="username" class="${properties.kcLabelClass!}">Username</label>
                <input type="text" id="username" name="username" class="${properties.kcInputClass!}" value="${(register.formData.username!'')}" />
            </div>
            <div class="${properties.kcFormGroupClass!}">
                <label for="email" class="${properties.kcLabelClass!}">Email</label>
                <input type="text" id="email" name="email" class="${properties.kcInputClass!}" value="${(register.formData.email!'')}" />
            </div>
            <div class="${properties.kcFormGroupClass!}">
                <label for="password" class="${properties.kcLabelClass!}">Password</label>
                <input type="password" id="password" name="password" class="${properties.kcInputClass!}" />
            </div>
            <div class="${properties.kcFormGroupClass!}">
                <label for="password-confirm" class="${properties.kcLabelClass!}">Confirm Password</label>
                <input type="password" id="password-confirm" name="password-confirm" class="${properties.kcInputClass!}" />
            </div>
            <div class="${properties.kcFormGroupClass!}">
                <label for="firstName" class="${properties.kcLabelClass!}">First Name</label>
                <input type="text" id="firstName" name="firstName" class="${properties.kcInputClass!}" value="${(register.formData.firstName!'')}" />
            </div>
            <div class="${properties.kcFormGroupClass!}">
                <label for="lastName" class="${properties.kcLabelClass!}">Last Name</label>
                <input type="text" id="lastName" name="lastName" class="${properties.kcInputClass!}" value="${(register.formData.lastName!'')}" />
            </div>
            <div class="${properties.kcFormButtonsClass!}">
                <input type="submit" value="Register" class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!}" />
                <a href="${url.loginUrl}" class="${properties.kcButtonClass!} ${properties.kcButtonDefaultClass!}">Back to Login</a>
            </div>
        </form>
    </#if>
</@layout.registrationLayout>
