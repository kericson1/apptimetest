<template>
    <div id="add_event" class="modal custom-modal fade" role="dialog">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Ajouter cette tâche à votre agenda</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form>
                        <input hidden="hidden" v-model="tachestoedit.nom_tache">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Date de début <span class="text-danger">*</span></label>
                                    <input class="form-control" type="datetime-local" v-model="date_debut">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Date de fin <span class="text-danger">*</span></label>
                                    <input class="form-control" type="datetime-local" v-model="date_fin">
                                </div>
                            </div>
                        </div>
                        <div class="submit-section">
                            <button type="button" class="btn btn-primary submit-btn" @click="AddCalendarStore">Ajouter</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import axios from "axios";
import {createToaster} from "@meforma/vue-toaster";

const toaster = createToaster({ /* options */});


export default {
    props: ['tachestoedit'],
    data() {
        return {
            date_debut: '',
            date_fin: '',
            errors: {}
        }
    },
    methods: {
        AddCalendarStore() {
            axios
                .post('/api/events',{
                    tache: this.tachestoedit.nom_tache,
                    start_time: this.date_debut,
                    end_time: this.date_fin,
                })
                .then((response) => {
                    if (response.status === 200) {
                        toaster.success(`Tâche ajouté avec succès`, {
                            position: "top-right",
                        });
                    }
                })
                .catch((error) => {
                    if (error.response.status === 422) {
                        this.errors = error.response.data.errors
                        toaster.error(`Tâche non ajouté . Veuillez remplir les champs demandé`, {
                            position: "top-right",
                            duration: 4000
                        });
                    }
                });
        }

    },
    name: "AddCalendar"
}
</script>

<style scoped>

</style>
