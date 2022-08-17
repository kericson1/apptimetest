<template>
  <router-link class="btn btn-success" to="/dashboard"
    >Aller au tableau</router-link
  >

  <FullCalendar :options="calendarOptions" locale="fr" :event-sources="eventSources" />

  <div class="modal fade" id="create" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title">Ajouter heure</h4>
        </div>
        <div class="modal-body">
          <input type="hidden" class="form-control" v-model="datetime" />
          <input type="hidden" class="form-control" v-model="id" />
          <div class="form-group">
            <label for="exampleInputEmail1">Heure</label>
            <input
              type="number"
              class="form-control"
              id="modalTitle"
              min="1"
              max="8"
              v-model="heure"
            />
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">
            Fermer
          </button>
          <button
            type="button"
            class="btn btn-primary"
            id="save-event"
            @click="addEvent"
          >
            Ajouter
          </button>
        </div>
      </div>
      <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
  </div>

  <div class="modal fade" id="modal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title">Modifier heure</h4>
        </div>
        <div class="modal-body">
          <input type="hidden" class="form-control" v-model="idTimesheet" />
          <div class="form-group">
            <label for="exampleInputEmail1">Heure</label>
            <input
              type="number"
              class="form-control"
              id="modalTitle"
              min="1"
              max="8"
              v-model="heureTimesheet"
            />
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">
            Fermer
          </button>
          <button
            type="button"
            class="btn btn-primary"
            id="save-event"
            @click="editEvent"
          >
            Modifier
          </button>
        </div>
      </div>
      <!-- /.modal-content -->
    </div>
  </div>

  <form>
    <div class="submit-section" style="margin-top: 30px; margin-right: 450px">
      <input type="hidden" v-model="firstday" />
      <input type="hidden" v-model="lasttday" />
      <button
        type="button"
        class="btn btn-primary submit-btn"
        style="float: right"
        @click="saveEvent"
      >
        Soumettre
      </button>
    </div>
  </form>
  <!-- /.modal -->
</template>

<script>
import "@fullcalendar/core/vdom"; // solves problem with Vite
import FullCalendar from "@fullcalendar/vue3";
import dayGridPlugin from "@fullcalendar/daygrid";
import timeGridPlugin from "@fullcalendar/timegrid";
import interactionPlugin from "@fullcalendar/interaction";
import resourceTimelinePlugin from "@fullcalendar/resource-timeline";
import listPlugin from "@fullcalendar/list";
import { createToaster } from "@meforma/vue-toaster";
import moment from "moment";
moment.locale("fr");
// import $ from "jquery";

const toaster = createToaster({
  /* options */
});

export default {
  components: {
    FullCalendar,
  },
  data() {
    return {
      datetime: "",
      heure: "",
      id: "",
      idTimesheet: "",
      heureTimesheet: "",
      firstday: "",
      lasttday: "",
      calendarOptions: {
        plugins: [
          dayGridPlugin,
          interactionPlugin,
          timeGridPlugin,
          resourceTimelinePlugin,
          listPlugin,
        ],
        initialView: "resourceTimeline",
        resourceGroupField: "building",
        duration: { week: 1 },
        slotDuration: { days: 1 },
        dateClick: this.onDateClick,
        eventClick: this.click,
        // dateClick: function (info) {
        //   $(".modal").modal("show");
        //   let date = info.dateStr;
        //   let ressource = info.resource.id;
        //   $(".modal .modal-body #modalDate").val(date);
        //   $(".modal .modal-body .modalId").val(ressource);
        // },
        timeZone: "Africa/Abidjan", // indique le temps du pays
        locale: "fr", // Traduire en français
        selectable: true,
        editable: true,
        aspectRatio: 2,
        scrollTime: "00:00",
        // firstDay: 1,
        resourceLabelText: "Projets / Tâches",
        resourceAreaWidth: "40%",
        resources: "http://127.0.0.1:8000/api/feuille",
        events: "http://127.0.0.1:8000/api/timesheets",
        buttonText: {
          today: "aujourd'hui",
          day: "jour",
          week: "semaine",
          month: "mois",
          listMonth: "planning",
          resourceTimeline: "Feuille de temps",
        },

        headerToolbar: {
          left: "prev,next today",
          center: "title",
          right: "resourceTimeline",
        },
      },
      editable: true,
      // events: [],
    };
  },
  mounted() {
    setInterval(this.getNow);
    //  setInterval(() => {
    //    this.getEvents();
    // }, 2000);
  },
  // created() {
  //   this.getEvents();
  // },
  methods: {
    onDateClick(arg) {
      $("#create").modal("show");
      let date = arg.dateStr;
      let ressource = arg.resource.id;
      this.datetime = date;
      this.id = ressource;
      console.log(date);
    },
    click(arg) {
      $("#modal").modal("show");
      let id_timesheet = arg.event.id;
      let heure = arg.event.title;
      this.idTimesheet = id_timesheet;
      this.heureTimesheet = heure;
      // let date = arg.dateStr;
      // let ressource = arg.resource.id;
      // this.datetime = date;

      // console.log(arg.event.title);
    },
    addEvent() {
      axios
        .post("/api/timesheets", {
          date_timesheet: this.datetime,
          id_tache: this.id,
          heure_timesheet: this.heure,
        })
        .then((response) => {
          if (response.status === 200) {
            toaster.success(`Feuille de temps ajoutée`, {
              position: "top-right",
            });
            $(".modal").modal("hide");
            this.getEvents();
          }
        })
        .catch((error) => {
          if (error.response.status === 422) {
            toaster.error(`Feuille de temps non ajoutée`, {
              position: "top-right",
              duration: 4000,
            });
          }
        });
    },
    editEvent() {
      axios
        .post("/api/timesheets/maj", {
          heure_timesheet: this.heureTimesheet,
          idTimesheet: this.idTimesheet,
        })
        .then((response) => {
          if (response.status === 200) {
            toaster.success(`Feuille de temps modifiée`, {
              position: "top-right",
            });
            $(".modal").modal("hide");
            // this.dates = date;
            // this.id = ressource;
          }
        })
        .catch((error) => {
          if (error.response.status === 422) {
            this.errors = error.response.data.errors;
            toaster.error(`Erreur`, {
              position: "top-right",
              duration: 4000,
            });
          }
        });
    },
    saveEvent() {
      axios
        .post("/api/timesheets/soumettre", {
          firstday: this.firstday,
          lasttday: this.lasttday,
        })
        .then((response) => {
          if (response.status === 200) {
            toaster.success(`Feuille de temps soumis à votre responsable`, {
              position: "top-right",
            });
          }
        })
        .catch((error) => {
          if (error.response.status === 422) {
            this.errors = error.response.data.errors;
            toaster.error(`Erreur`, {
              position: "top-right",
              duration: 4000,
            });
          }
        });
    },
    getNow: function () {
      const startOfWeek = moment().startOf("week").format("YYYY-MM-DD");
      // const endOfWeek = moment().endOf("week").toDate();
      const endOfWeek = moment().endOf("week").format("YYYY-MM-DD");

      this.firstday = startOfWeek;
      this.lasttday = endOfWeek;
    },
    // getEvents() {
    //   this.axios.get("http://127.0.0.1:8000/api/timesheets").then((response) => {
    //       this.calendarOptions.events = response.data.events;
    //   });
    // },
  },

  name: "Agenda",
};
</script>

<style scoped>
</style>
