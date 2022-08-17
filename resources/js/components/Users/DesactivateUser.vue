<template>
    <div class="modal custom-modal fade" id="desactivate_user" role="dialog">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-body">
                    <div class="form-header">
                        <h3>Desactiver utilisateur</h3>
                        <p>Vous êtes sûr de vouloir desactiver ?</p>
                    </div>
                    <div class="modal-btn delete-action">
                        <div class="row">
                            <div class="col-6">
                                <a href="javascript:void(0);" class="btn btn-primary continue-btn" @click="inactifUser" data-dismiss="modal">Desactiver</a>
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
export default {
    props: ['tasktoedit'],
    methods: {
        inactifUser(){
            axios
                .patch('/api/users/inactif/' + this.tasktoedit.id)
                .then((response) => (this.tasks = response.data))
                .catch((error) => console.log(error));
        },
    },
    name: "DesactivateUser"
}
</script>

<style scoped>

</style>
