<template>
    <div class="main-wrapper">
        <div class="account-content">
            <div class="container">
                <div class="account-logo">
                    <a href=""><img src="assets/img/logo4.png" alt=""></a>
                </div>

                <div class="account-box">
                    <div class="account-wrapper">
                        <h3 class="account-title">Mot de passe oublié ??</h3>
                        <p class="account-subtitle">Saisissez votre adresse électronique pour obtenir un lien de réinitialisation du mot de passe.</p>

                        <form>
                            <div class="form-group">
                                <label>Email</label>
                                <input class="form-control" type="text">
                            </div>
                            <div class="form-group text-center">
                                <button class="btn btn-primary account-btn" type="submit">Réinitialiser le mot de passe</button>
                            </div>
                            <div class="account-footer">
                                <p>Mémorisez votre mot de passe? <router-link to="/">Accueil</router-link></p>
                            </div>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    name: "ResetPassword"
}
</script>

<style scoped>

</style>
