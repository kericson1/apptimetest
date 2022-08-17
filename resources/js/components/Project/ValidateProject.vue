<template>
    <div class="modal custom-modal fade" id="validate_project" role="dialog">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-body">
                    <div class="form-header">
                        <h3>Validation du projet</h3>
                        <p>Vous êtes sûr de vouloir valider ?</p>
                    </div>
                    <div class="modal-btn delete-action">
                        <div class="row">
                            <div class="col-6">
                                <a href="javascript:void(0);" data-dismiss="modal"
                                   class="btn btn-primary continue-btn"
                                   @click="validerProject">Valider</a>
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
import {createToaster} from "@meforma/vue-toaster";

const toaster = createToaster({ /* options */});
export default {
    props: ['projectoedit'],
    methods: {
        validerProject() {
            axios
                .patch('/api/projets/valider/' + this.projectoedit.id_projet)
                .then((response) => {
                    if (response.status === 200) {
                        toaster.success(`Projet validé avec succes`, {
                            position: "top-right",
                        });
                    }
                })
                .catch((error) => console.log(error));

        },
    },
    name: "ValidateProject"
}
</script>

<style scoped>

</style>
