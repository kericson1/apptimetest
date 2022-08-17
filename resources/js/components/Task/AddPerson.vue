<template>
    <div id="add_user" class="modal custom-modal fade" role="dialog">
        <div class="modal-dialog modal-dialog-centered"
             role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Ajouter une ou plusieurs personne(s) à la tâche</h5>
                    <button type="button" class="close"
                            data-dismiss="modal"
                            aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form>
                        <input hidden="hidden" v-model="tachestoedit.id_tache">
                        <div class="input-group m-b-30">
                            <Multiselect
                                v-model="users_team"
                                :allow-empty="true"
                                mode="tags"
                                :custom-label="({ id, name }) => `${id} - [${name}]`"
                                valueProp="id"
                                placeholder="Selectionnez le(s) personne(s)"
                                label="name"
                                track-by="name"
                                :options="equipes"
                                :object="true"
                                :close-on-select="false"
                                :searchable="true"
                            >
                            </Multiselect>
                        </div>
                        <div class="submit-section">
                            <button type="button"
                                    class="btn btn-primary submit-btn btn_assign" @click="AddPersonStore">
                                Ajouter
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import Multiselect from "@vueform/multiselect";
import axios from "axios";

export default {
    components: {
        Multiselect,
    },
    data() {
        return {
            equipes: '',
            users_team: [],
            errors: {}
        }
    },
    props: ['tachestoedit'],
    methods: {
        AddPersonStore() {
            // this.errors = []
            let test = JSON.parse(JSON.stringify(this.users_team))
            let donnees = []

            for (let i = 0; i < Object.keys(test).length; i++) {
                donnees.push(test[i]['id'])
            }
            // if (!this.nom_tache) {
            //     this.errors.push("Le nom de la tâche est requis")
            // }
            // if (!this.date_debut) {
            //     this.errors.push("Date de debut est requis")
            // }
            // if (!this.date_debut) {
            //     this.errors.push("Date de fin est requis")
            // }
            // if (!this.users_team) {
            //     this.errors.push("Veuillez selectionné un pour cette tâche")
            // }
            // if (!this.errors.length) {
            axios
                .patch('/api/taches/assign/' + this.tachestoedit.id_tache, {
                    projet: this.tachestoedit.id_tache,
                    users_team: donnees,
                })
                .then((response) => {
                    if (response.status === 200) {
                        toaster.success(`Tâche crée avec succès`, {
                            position: "top-right",
                        });
                    }
                })
                .catch((error) => {
                    if (error.response.status === 422) {
                        this.errors = error.response.data.errors
                        toaster.error(`Tâche non crée . Veuillez remplir les champs demandé`, {
                            position: "top-right",
                            duration: 4000
                        });
                    }
                });
        }


    },
    created() {
        axios
            .get("/api/users")
            // .then((response) => (console.log(response.data)))
            .then((response) => (this.equipes = response.data))
            .catch((error) => console.log(error));
    },
    name: "AddPerson"
}
</script>

<style scoped>

</style>
