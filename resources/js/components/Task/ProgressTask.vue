<template>
    <div id="work_task" class="modal custom-modal fade" role="dialog">
        <div class="modal-dialog modal-dialog-centered"
             role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Ajouter progression</h5>
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
                                <div
                                    class="form-group progression">
                                    <label>Progression(%)</label>
                                    <input
                                        class="form-control"
                                        type="number"
                                        min="1"
                                        max="100"
                                        v-model="tachestoedit.progression">
                                </div>
                            </div>
                        </div>
                        <div class="submit-section create">
                            <button type="button"
                                    class="btn btn-primary submit-btn btn_progress" @click="progressTask">
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
import {createToaster} from "@meforma/vue-toaster";

const toaster = createToaster({ /* options */});
export default {
    props: ['tachestoedit'],
    methods: {
        progressTask() {
            axios.patch('/api/taches/progress/' + this.tachestoedit.id_tache, {
                progression: this.tachestoedit.progression,
            })
                .then((response) => {
                    if (response.status === 200) {
                        toaster.success(`Progression modifié avec sucess`, {
                            position: "top-right",
                        });
                    }
                })
                .catch((error) => console.log(error));

        },
    },
    name: "ProgressTask"
}
</script>

<style scoped>

</style>
