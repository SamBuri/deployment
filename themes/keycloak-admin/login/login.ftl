<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=true;  section>
    <#if section = "header">
        <div class="login-header">
            <img src="${url.resourcesPath}/img/logo.svg" alt="Service Cops Logo" class="custom-logo">
            <h1>Easy Values Keyclaok Login</h1>
        </div>
    <#elseif section = "form">
        <div class="login-card">
            <#-- Error messages -->
            <#if message?has_content>
                <div class="alert <#if message.type = 'error'>alert-error<#else>alert-${message.type}</#if>">
                    ${kcSanitize(message.summary)?no_esc}
                </div>
            </#if>

            <#-- Username/password form -->
            <form id="kc-form-login" action="${url.loginAction}" method="post">
                <div class="form-group">
                    <label for="username"><#if !realm.loginWithEmailAllowed>${msg("username")}<#elseif !realm.registrationEmailAsUsername>${msg("usernameOrEmail")}<#else>${msg("email")}</#if></label>
                    <input id="username" name="username" type="text" class="form-control" value="${(login.username!'')}" autofocus />
                </div>
                <div class="form-group">
                    <label for="password">${msg("password")}</label>
                    <input id="password" name="password" type="password" class="form-control" />
                </div>
                <div class="form-options">
                    <#if realm.rememberMe>
                        <label class="checkbox">
                            <input id="rememberMe" name="rememberMe" type="checkbox" <#if login.rememberMe??>checked</#if>> ${msg("rememberMe")}
                        </label>
                    </#if>
                    <#if realm.resetPasswordAllowed>
                        <a href="${url.loginResetCredentialsUrl}" class="forgot-password">${msg("doForgotPassword")}</a>
                    </#if>
                </div>
                <div class="form-group">
                    <input type="submit" value="${msg('doLogIn')}" class="btn btn-primary" />
                </div>
            </form>

            <#-- Social login providers -->
            <#if social.providers??>
                <div class="social-login">
                    <p class="social-title">${msg("identity-provider-login-label")}</p>
                    <div class="social-buttons">
                        <#list social.providers as p>
                            <a href="${p.loginUrl}" class="btn btn-social btn-${p.alias}">
                                ${p.displayName}
                            </a>
                        </#list>
                    </div>
                </div>
            </#if>

            <#-- Registration link -->
            <#if realm.registrationAllowed>
                <div class="register-link">
                    <p>${msg("noAccount")} <a href="${url.registrationUrl}">${msg("doRegister")}</a></p>
                </div>
            </#if>
        </div>
    </#if>
</@layout.registrationLayout>