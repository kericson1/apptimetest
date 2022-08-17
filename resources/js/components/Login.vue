<template>
    <div class="account-page">
        <div class="main-wrapper">
            <div class="account-content">
                <div class="container">
                    <div class="account-logo">
                        <a href=""><img src="assets/img/logo4.png" alt="APTIME" style="width: 30%;"></a>
                    </div>

                    <div class="account-box">
                        <div class="account-wrapper">
                            <h3 class="account-title">Connexion</h3>
                            <p class="account-subtitle">Accès au tableau de bord</p>

                            <form>
                                <div class="form-group">
                                    <label>Adresse email</label>
                                    <input class="form-control" type="email" v-model="form.email">
                                     <span class="text-danger" v-if="errors.email">{{ errors.email[0] }}</span>
                                </div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col">
                                            <label>Mot de passe</label>
                                        </div>
                                        <div class="col-auto">
                                            <router-link class="text-muted" to="/resetpassword">
                                                Mot de passe oublié?
                                            </router-link>
                                        </div>
                                    </div>
                                    <input class="form-control" type="password" v-model="form.password">
                                    <span class="text-danger" v-if="errors.password">{{ errors.password[0] }}</span>
                                </div>
                                <div class="form-group text-center">
                                    <button @click.prevent="loginUser" class="btn btn-primary account-btn" type="submit">Connexion</button>
<!--                                    <router-link to="/dashboard" class="btn btn-primary account-btn">Connexion</router-link>-->
                                </div>
                                <div class="account-footer">
                                    <p>Vous n'avez pas encore de compte ? <router-link to="/register">Demande de compte</router-link></p>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    data() {
        return {
            form: {
                email: '',
                password: ''
            },
            errors: []
        }
    },
    methods: {
        loginUser() {
            axios
                .post('/api/login', this.form)
                .then(() =>{
                    this.$router.push({ name: "Acceuil"});
                }).catch((error) =>{
                this.errors = error.response.data.errors;
            })
        }
    },

}
</script>
