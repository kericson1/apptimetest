<template>
    <div class="modal custom-modal fade" id="delete_user" role="dialog">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-body">
                    <div class="form-header">
                        <h3>Supprimer utilisateur</h3>
                        <p>Vous êtes sûr de vouloir supprimer ??</p>
                    </div>
                    <div class="modal-btn delete-action">
                        <div class="row">
                            <div class="col-6">
                                <a href="javascript:void(0);" class="btn btn-primary continue-btn" @click="deleteUser" data-dismiss="modal">Supprimer</a>
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
        deleteUser(){
            axios
                .delete('/api/users/' + this.tasktoedit.id)
                .then((response) => (this.users = response.data))
                .catch((error) => console.log(error));
        },
    },
    name: "DeleteUsers"
}
</script>

<style scoped>

</style>
