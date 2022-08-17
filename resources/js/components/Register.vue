<template>
    <div class="main-wrapper">
        <div class="account-content">
            <div class="container">

                <div class="account-logo">
                    <a href="index.html"><img src="assets/img/logo4.png" alt="AP'TIME"></a>
                </div>

                <div class="account-box">
                    <div class="account-wrapper">
                        <h3 class="account-title">Demande de compte</h3>
                        <p class="account-subtitle">Remplissez ce formulaire de demande de compte</p>

                        <form>
                            <div class="form-group">
                                <label>Nom de l'entreprise</label>
                                <input class="form-control" type="text">
                            </div>
                            <div class="form-group">
                                <label>Secteur</label>
                                <input class="form-control" type="text">
                            </div>
                            <div class="form-group">
                                <label>Email</label>
                                <input class="form-control" type="email">
                            </div>
                            <div class="form-group text-center">
                                <button class="btn btn-primary account-btn" type="submit">Demande de compte</button>
                            </div>
                            <div class="account-footer">
                                <p>Vous avez déjà un compte ? <router-link to="/">Connexion</router-link></p>
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
    name: "Register"
}
</script>

<style scoped>

</style>
