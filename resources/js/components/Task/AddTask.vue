<template>
    <div id="add_project" class="modal custom-modal fade" role="dialog">
        <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Ajouter tâche</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form>
                        <input type="text" v-model="projectoedit.id_projet">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label>Nom de la tâche</label>
                                    <input class="form-control" type="text" id="taches" placeholder="Entrez le nom de la tache..." v-model="nom_tache">
                                    <span style="color: red" v-if="errors.nom_tache"
                                          v-text="errors.nom_tache[0]"></span>
                                    <!--                                    <span style="color: red" v-text="errors[0]"></span>-->
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Date de début</label>
                                    <input class="form-control" type="date" id="debuts" v-model="date_debut">
                                    <span style="color: red" v-if="errors.date_debut"
                                          v-text="errors.date_debut[0]"></span>
                                    <!--                                    <span style="color: red" v-text="errors[1]"></span>-->
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Date de fin</label>
                                    <input class="form-control" type="date" id="fins" v-model="date_fin"
                                           name="date_fin_tache">
                                    <span style="color: red" v-if="errors.date_fin" v-text="errors.date_fin[0]"></span>
                                    <!--                                    <span style="color: red" v-text="errors[2]"></span>-->
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label>Personne(s) associée(s)</label>
                                    <Multiselect
                                        v-model="users_team"
                                        :allow-empty="true"
                                        mode="tags"
                                        :custom-label="({ id, name }) => `${id} - [${name}]`"
                                        valueProp="id"
                                        placeholder="Choisir le(s) membre(s) de la tâche"
                                        label="name"
                                        track-by="name"
                                        :options="equipes"
                                        :object="true"
                                        :close-on-select="false"
                                        :searchable="true"
                                    >
                                    </Multiselect>
                                    <span style="color: red" v-if="errors.users_team"
                                          v-text="errors.users_team[0]"></span>
                                    <!--                                    <span style="color: red" v-text="errors[3]"></span>-->
                                </div>
                            </div>
                        </div>
                        <div class="submit-section">
                            <button type="button" class="btn btn-primary submit-btn btn_tasks" @click="TaskStore">
                                Créer
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
import Multiselect from "@vueform/multiselect";
import {createToaster} from "@meforma/vue-toaster";
import moment from "moment";

const toaster = createToaster({ /* options */});

export default {
    props: ['projectoedit'],
    components: {
        Multiselect,
    },
    data() {
        return {
            equipes: '',
            users_team: [],
            nom_tache: '',
            date_debut: '',
            date_fin: '',
            errors: {}

        }
    },
    mounted() {
        this.fetchTask();
        // console.log(this.projectoedit);
    },
    // mounted() {
    //     setInterval(() => {
    //         var id = projectoedit.id_projet
    //         axios
    //             .get('/api/projets/tasks/'+ id)
    //             // .then(response => (this.tasks = response.data))
    //             .then(response => (this.tasks = response.data))
    //             .catch(error => {
    //                 this.errors.push(error);
    //             });
    //     }, 2000);
    // },
    methods: {
        TaskStore() {
            let test = JSON.parse(JSON.stringify(this.users_team))
            let donnees = []

            for (let i = 0; i < Object.keys(test).length; i++) {
                donnees.push(test[i]['id'])
            }

            axios
                .post('/api/taches', {
                    nom_tache: this.nom_tache,
                    date_debut: this.date_debut,
                    date_fin: this.date_fin,
                    projet: this.projectoedit.id_projet,
                    users_team: donnees,
                })
                .then(response => {
                    if (response.status === 200) {
                        toaster.success(`Tâche marqué comme terminé`, {
                            position: "top-right",
                        });
                        this.taches = response.data
                        this.fetchTask()
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
        },
        fetchTask() {
            // let idp = JSON.parse(this.projectoedit.id_projet)
            // alert(idp)
            this.loading = true;
            this.moment = moment;
            var that = this
            axios.all([
                axios.get("/api/users"),
                // axios.get('/api/projets/tasks/'+ that.projectoedit.id_projet)
            ])
                .then(
                    axios.spread(
                        function (equipes) {
                            that.equipes = equipes.data;
                            // that.taches = taches.data;

                        }
                    ))

        },

    },
    name: "AddTask"
}
</script>

<style scoped>

</style>
