<template>
    <div class="modal custom-modal fade" id="decline_project" role="dialog">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-body">
                    <div class="form-header">
                        <h3>Refuser projet</h3>
                        <p>Vous êtes sûr de vouloir refuser ?</p>
                    </div>
                    <div class="modal-btn delete-action">
                        <div class="row">
                            <div class="col-6">
                                <a href="javascript:void(0);" data-dismiss="modal" class="btn btn-primary continue-btn"
                                   @click="refuserProject">Refuser</a>
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
    props: ['projectoedit'],
    methods: {
        refuserProject() {
            axios
                .patch('/api/projets/refuser/' + this.projectoedit.id_projet)
                .then((response) => {
                    if (response.status === 200) {
                        toaster.success(`Projet refusé avec succes`, {
                            position: "top-right",
                        });
                    }
                })
                .catch((error) => console.log(error));

        },
    },
    name: "DeclineProject"
}
</script>

<style scoped>

</style>
