<template>
    <div class="modal custom-modal fade" id="archiver_project" role="dialog">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-body">
                    <div class="form-header">
                        <h3>Archiver projet</h3>
                        <p>Vous êtes sûr de vouloir archiver ?</p>
                    </div>
                    <div class="modal-btn delete-action">
                        <div class="row">
                            <div class="col-6">
                                <a href="javascript:void(0);" class="btn btn-primary continue-btn"
                                   @click="archivProject" data-dismiss="modal">Archiver</a>
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
        archivProject() {
            axios
                .patch('/api/projets/archiver/' + this.projectoedit.id_projet)
                .then((response) => {
                    if (response.status === 200) {
                        toaster.success(`Projet archivé avec succès`, {
                            position: "top-right",
                        });
                    }
                })
                .catch((error) => console.log(error));

        },
    },
    name: "FileProject"
}
</script>

<style scoped>

</style>
