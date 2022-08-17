<template>
    <div class="modal custom-modal fade" id="delete_department" role="dialog">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-body">
                    <div class="form-header">
                        <h3>Supprimer pôle</h3>
                        <p>Voulez vous supprimer ce pôle?</p>
                    </div>
                    <div class="modal-btn delete-action">
                        <div class="row">
                            <div class="col-6">
                                <a href="javascript:void(0);" class="btn btn-primary continue-btn" @click="deleteService" data-dismiss="modal">Supprimer</a>
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
    props: ['servicetoedit'],
    methods: {
        deleteService(){
            axios
                .delete('/api/services/' + this.servicetoedit.id_service)
                .then((response) => (this.services = response.data))
                .catch((error) => console.log(error));
        },
    },
    name: "DeleteService"
}
</script>

<style scoped>

</style>
