<template>
    <div id="assign_user" class="modal custom-modal fade" role="dialog">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Ajouter une personne au projet</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="input-group m-b-30">
                        <Multiselect
                            v-model="user_id"
                            :options="equipes"
                            :custom-label="({ id, name }) => `${id} - [${name}]`"
                            valueProp="id"
                            placeholder="Rechercher le collaborateur"
                            label="name"
                            track-by="name"
                            :searchable="true">
                        </Multiselect>
                    </div>
                    <div class="submit-section">
                        <button class="btn btn-primary submit-btn" @click="storeMember">Ajouter</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import Multiselect from "@vueform/multiselect";
import axios from "axios";

export default {
    props: ['projectoedit'],
    components: {
        Multiselect,
    },
    data() {
        return {
            equipes: '',
            users: '',
            errors: {}

        }
    },
    methods: {
        storeMember() {
            axios.patch('/api/projets/members/' + this.projectoedit.id_projet, {
                user_id: this.user_id,
            })
                .then(response => {
                    if (response.status === 200) {
                        toaster.success(`Collaborateur ajouté avec succès`, {
                            position: "top-right",
                        });
                        this.users = response.data
                        this.fetchMember()
                    }

                })
                .catch(error => console.log(error));
        }
    },
    created() {
        axios
            // .get(`/api/projets/equipe/${this.$route.params.id_projet}`)
            .get("/api/users")
            // .then((response) => (console.log(response.data)))
            .then((response) => (this.equipes = response.data))
            .catch((error) => console.log(error));
    },
    name: "AddMember"
}
</script>

<style scoped>

</style>
