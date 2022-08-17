<template>
    <div id="add_designation" class="modal custom-modal fade" role="dialog">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Ajouter sponsor</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="form-group">
                            <label>Sponsor <span class="text-danger">*</span></label>
                            <Multiselect
                                v-model="user_id"
                                :options="users"
                                :custom-label="({ id, name }) => `${id} - [${name}]`"
                                valueProp="id"
                                placeholder="Choisir le chef de projet"
                                label="name"
                                track-by="name"
                                :searchable="true">
                            </Multiselect>
                        </div>
                        <div class="form-group">
                            <label>Type <span class="text-danger">*</span></label>
                            <multiselect
                                v-model="type_sponsor"
                                :options="options"
                                placeholder="Choisir le type de sponsor">
                            </multiselect>
                        </div>
                        <div class="submit-section">
                            <button class="btn btn-primary submit-btn" @click="storeSponsors"
                                    data-dismiss="modal">Ajouter
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import axios from "axios";
import Multiselect from '@vueform/multiselect'

export default {
    components: {
        Multiselect,
    },
    data() {
        return {
            users: [],
            user_id: '',
            type_sponsor: '',
            options: [
                'DIRECTEUR',
                'ASSOCIE',
            ]

        }
    },

    methods: {
        storeSponsors() {
            axios
                .post('/api/sponsors', {
                    user_id: this.user_id,
                    type_sponsor: this.type_sponsor
                })
                .then((response) => (this.sponsors = response.data))
                .catch(error => console.log(error));
        }
    },

    created() {
        axios
            .get("/api/users")
            .then((response) => (this.users = response.data))
            .catch((error) => console.log(error));
    },
    name: "AddSponsor"
}
</script>

<style scoped>

</style>
