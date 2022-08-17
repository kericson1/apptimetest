<template>
    <div id="edit_tache" class="modal custom-modal fade" role="dialog">
        <div class="modal-dialog modal-dialog-centered"
             role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Modifier la tâche</h5>
                    <button type="button" class="close"
                            data-dismiss="modal"
                            aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label>Nom de la
                                        tâche</label>
                                    <input
                                        class="form-control"
                                        type="text"
                                        name="nom_tache"
                                        id="nom_tache"
                                        v-model="tachestoedit.nom_tache">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Date de
                                        début</label>
                                    <input
                                        class="form-control"
                                        type="date" :value="tachestoedit.date_debut_tache"
                                        v-model="tachestoedit.date_debut_tache">
                                    <!-- {{ moment(tachestoedit.date_debut_tache).lang('fr').format('L') }} -->
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Date de
                                        fin</label>
                                    <input
                                        class="form-control"
                                        type="date"
                                        id="date_fin_tache"
                                        name="date_fin_tache"
                                        v-model="tachestoedit.date_fin_tache">
                                    {{ moment(tachestoedit.date_fin_tache).lang('fr').format('L') }}
                                </div>
                            </div>
                        </div>
                        <div class="submit-section">
                            <button type="button"
                                    class="btn btn-primary submit-btn btn_edittask" @click="saveTask">
                                Modifier
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import moment from 'moment';
import { createToaster } from "@meforma/vue-toaster";

const toaster = createToaster({ /* options */ });

export default {
    props: ['tachestoedit'],
    data() {
        return {
            errors: {}
        }
    },
    methods: {
        saveTask() {
            axios.patch('/api/taches/' + this.tachestoedit.id_tache, {
                nom_tache: this.tachestoedit.nom_tache,
                date_debut: this.tachestoedit.date_debut_tache,
                date_fin: this.tachestoedit.date_fin_tache,
            })
                .then((response) => {
                    if (response.status === 200) {
                        toaster.success(`Tâche modifié avec succès`, {
                            position: "top-right",
                        });
                    }
                })
                .catch((error) => {
                    if (error.response.status === 422) {
                        this.errors = error.response.data.errors
                        toaster.error(`Tâche non modifié . Veuillez remplir les champs demandé`, {
                            position: "top-right",
                            duration: 4000
                        });
                    }
                });
        }
    },
    created: function () {
        this.moment = moment;
    },
    name: "EditTask"
}
</script>

<style scoped>

</style>
