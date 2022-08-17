<template>
    <div class="modal custom-modal fade" id="delete_designation" role="dialog">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-body">
                    <div class="form-header">
                        <h3>Désactiver le sponsor </h3>
                        <p>Voulez-vous désactiver le sponsor?</p>
                    </div>
                    <div class="modal-btn delete-action">
                        <div class="row">
                            <div class="col-6">
                                <a href="javascript:void(0);" class="btn btn-primary continue-btn" @click="inactifSponsor" data-dismiss="modal">Désactiver</a>
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
    props: ['sponsortoedit'],
    methods: {
        inactifSponsor(){
            axios
                .patch('/api/sponsors/inactif/' + this.sponsortoedit.id_sponsor)
                .then((response) => (this.sponsors = response.data))
                .catch((error) => console.log(error));
        },
    },
    name: "DesactivateSponsor"
}
</script>

<style scoped>

</style>
