<template>
    <div class="modal custom-modal fade" id="delete_approve" role="dialog">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-body">
                    <div class="form-header">
                        <h3>Supprimer l'absence</h3>
                        <p>Vous êtes sûr de vouloir annuler ce congé?</p>
                    </div>
                    <div class="modal-btn delete-action">
                        <div class="row">
                            <div class="col-6">
                                <a href="javascript:void(0);" class="btn btn-primary continue-btn" @click="deleteConge">Supprimer</a>
                            </div>
                            <div class="col-6">
                                <a href="javascript:void(0);" data-dismiss="modal" class="btn btn-primary cancel-btn">Annuler</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import {createToaster} from "@meforma/vue-toaster";

const toaster = createToaster({ /* options */});
export default {
    props: ['holidaytoedit'],
    methods: {
        deleteConge() {
            axios.patch('/api/conges/supprime/' + this.holidaytoedit.id_conge)
                .then((response) => {
                    if (response.status === 200) {
                        toaster.success(`Absence supprime avec succes`, {
                            position: "top-right",
                        });
                    }
                })
                .catch((error) => console.log(error));

        },
    },
    name: "DeleteAbsence"
}
</script>

<style scoped>

</style>
