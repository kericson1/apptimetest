<template>
    <div id="editr_user" class="modal custom-modal fade" role="dialog">
        <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Modifier responsabilité</h5>
                    <button type="button" class="close" data-dismiss="modal"
                            aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form role="form" method="POST"
                          action=""
                          enctype="multipart/form-data">
                        <div class="row">
                            <div class="col-sm-6">
                                <label class="d-block">Ce collaborateur est il
                                    responsable?</label>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input respoouis"
                                           type="radio" name="respo"
                                           id="respo_oui"
                                           value="OUI">
                                    <label class="form-check-label"
                                           for="respo_oui">Oui</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input responons"
                                           type="radio" name="respo"
                                           id="respo_non"
                                           value="NON">
                                    <label class="form-check-label"
                                           for="respo_non">Non</label>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <label class="d-block">Ce collaborateur est il membre
                                    d'un service?</label>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input collaboouis"
                                           type="radio" name="collabo"
                                           id="collabo_oui"
                                           value="OUI">
                                    <label class="form-check-label" for="collabo_oui">Oui</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input collabonons"
                                           type="radio" name="collabo"
                                           id="collabo_non"
                                           value="NON">
                                    <label class="form-check-label" for="collabo_non">Non</label>
                                </div>
                            </div>
                            <div class="col-sm-6 justificatifs" style="display: none">
                                <div class="form-group">
                                    <label>Selectionnez le(s) pôle(s) du
                                        responsable</label>
                                    <select class="select" name="services[]"
                                            multiple="multiple">

                                    </select>
                                </div>
                            </div>
                            <div class="col-sm-6 affiches" style="display: none">
                                <div class="form-group">
                                    <label>Selectionnez le(s) pôle(s) du membre</label>
                                    <select class="select" name="service[]"
                                            multiple="multiple">
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="submit-section">
                            <button class="btn btn-primary submit-btn btn_respo">
                                Modifier
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    name: "ResponsableUser"
}
</script>

<style scoped>

</style>
