<template>
    <div class="modal custom-modal fade" id="activate_user" role="dialog">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-body">
                    <div class="form-header">
                        <h3>Activer utilisateur</h3>
                        <p>Vous êtes sûr de vouloir activer ?</p>
                    </div>
                    <div class="modal-btn delete-action">
                        <div class="row">
                            <div class="col-6">
                                <a href="javascript:void(0);" class="btn btn-primary continue-btn" @click="actifUser" data-dismiss="modal">Activer</a>
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
        actifUser(){
            axios
                .patch('/api/users/actif/' + this.tasktoedit.id)
                .then((response) => (this.tasks = response.data))
                .catch((error) => console.log(error));
        },
    },
    name: "ActivateUsers"
}
</script>

<style scoped>

</style>
