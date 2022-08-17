<template>
    <div class="modal custom-modal fade" id="add_holiday" role="dialog">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Ajouter client</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>

                <div class="modal-body">
                    <form>
                        <div class="form-group">
                            <label>Nom du client <span class="text-danger">*</span></label>
                            <input class="form-control" type="text" v-model="nom_client" placeholder="exemple: NSIA">
                            <p style="color: red" class="text-red" v-if="errors.nom_client" v-text="errors.nom_client[0]"></p>
                        </div>
                        <div class="form-group">
                            <label>Contact du client <span class="text-danger">*</span></label>
                            <input class="form-control" type="text" v-model="contact_client"
                                   placeholder="exemple: 0758650487">
                            <p style="color: red" class="text-red" v-if="errors.contact_client" v-text="errors.contact_client[0]"></p>
                        </div>
                        <div class="form-group">
                            <label>Email du client <span class="text-danger">*</span></label>
                            <input class="form-control" type="email" v-model="email_client"
                                   placeholder="exemple: jean@gmail.com">
                            <p style="color: red" class="text-red" v-if="errors.email_client" v-text="errors.email_client[0]"></p>
                        </div>
                        <div class="submit-section">
                            <button type="button" class="btn btn-primary submit-btn" @click="storeClient">Ajouter
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    data() {
        return {
            nom_client: '',
            contact_client: '',
            email_client: '',
            notifmsg: '',
            errorStatus: '',
            errors: {}
        }
    },
    methods: {
        storeClient() {
            this.error = false;
            axios
                .post('/api/clients', {
                    nom_client: this.nom_client,
                    contact_client: this.contact_client,
                    email_client: this.email_client,
                })
                .then(this.handleSuccess)
                .catch((error) => {
                    // console.log(error.response.headers);

                    if (error.response.status === 422) {
                        this.errors = error.response.data.errors
                        // console.log("Message non enregisté")
                    }


                        // if (!error.response) {
                        //     // network error
                        //     this.errorStatus = 'Error: Network Error';
                        // } else {
                        //     this.errorStatus = error.response.data.message;
                        //     console.log(errorStatus);
                    // }

                    else if (error.request) {
                        // The request was made but no response was received
                        console.log(error.request);
                    } else {
                        // Something happened in setting up the request that triggered an Error
                        console.log('Error', error.message);
                    }
                });
        },
        handleSuccess(response) {
            console.log(response.data)
        },
    },
    name: "AddClient"
}
</script>

<style scoped>

</style>
