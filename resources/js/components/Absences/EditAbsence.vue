<template>
    <div id="edit_leave" class="modal custom-modal fade" role="dialog">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Modifier demande</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="form-group">
                            <label>Type de permission <span class="text-danger">*</span></label>
                            <multiselect
                                v-model="holidaytoedit.type_conge"
                                :options="options"
                                placeholder="Choisir le type de permission">
                            </multiselect>
                        </div>
                        <div class="form-group">
                            <label>Du <span class="text-danger">*</span></label>
                            <input type="datetime-local" class="form-control" v-model="holidaytoedit.date_debut"/>
                            {{ moment(holidaytoedit.date_debut).lang('fr').format('L') }}
                        </div>
                        <div class="form-group">
                            <label>Du <span class="text-danger">*</span></label>
                            <input type="datetime-local" class="form-control" v-model="holidaytoedit.date_fin"/>
                            {{ moment(holidaytoedit.date_fin).lang('fr').format('L') }}
                        </div>
                        <div class="form-group">
                            <label>Motif <span class="text-danger">*</span></label>
                            <textarea rows="4" class="form-control" v-model="holidaytoedit.motif"></textarea>
                        </div>
                        <div class="submit-section">
                            <button type="button" class="btn btn-primary submit-btn" @click="saveConge">Modifier</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import moment from 'moment';
import Multiselect from "@vueform/multiselect";
import axios from "axios";
export default {
    components: {
        Multiselect,
    },
    created: function () {
        this.moment = moment;
    },
    data() {
        return {
            options: [
                'CONGE',
                'PERMISSION',
                'ARRET MALADIE',
            ]

        }
    },
    mounted() {
        this.fetchConge()
    },
    props: ['holidaytoedit'],
    methods: {
        fetchConge() {
            axios
                .get('/api/conges')
                .then(response => {
                    this.conges = response.data;
                })
        },
        saveConge() {
            axios.patch('/api/conges/' + this.holidaytoedit.id_conge, {
                type: this.holidaytoedit.type_conge,
                date_debut: this.holidaytoedit.date_debut,
                date_fin: this.holidaytoedit.date_fin,
                motif: this.holidaytoedit.motif,
            })
                .then((response) => {
                    if (response.status === 200) {
                        toaster.success(`Tâche modifié avec succès`, {
                            position: "top-right",
                        });
                    }
                    this.conges = response.data
                    this.fetchConge()
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

    name: "EditAbsence"
}
</script>

<style scoped>

</style>
