<template>
    <div class="modal custom-modal fade" id="validate_task" role="dialog">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-body">
                    <div class="form-header">
                        <h3>Marquer la tâche comme fini</h3>
                        <p>Vous êtes sûr de vouloir marquer <strong>{{ tachestoedit.nom_tache}} </strong> comme fini?</p>
                    </div>
                    <div class="modal-btn delete-action">
                        <div class="row">
                            <div class="col-6">
                                <a href="javascript:void(0);" class="btn btn-primary continue-btn" @click="finishTask">Marquer</a>
                            </div>
                            <div class="col-6">
                                <a href="javascript:void(0);" data-dismiss="modal"
                                   class="btn btn-primary cancel-btn">Annuler</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import { createToaster } from "@meforma/vue-toaster";

const toaster = createToaster({ /* options */ });
export default {
    props: ['tachestoedit'],
    methods: {
        finishTask() {
            axios.patch('/api/taches/finish/' + this.tachestoedit.id_tache)
                .then((response) => {
                    if (response.status === 200) {
                        toaster.success(`Tâche marqué comme finie`, {
                            position: "top-right",
                        });
                    }
                })
                .catch((error) => console.log(error));

        },
    },
    name: "FinishTask"
}
</script>

<style scoped>

</style>
