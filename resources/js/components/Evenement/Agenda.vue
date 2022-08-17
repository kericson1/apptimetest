<template>
    <router-link class="btn btn-success" to="/dashboard">Aller au tableau</router-link>
    <FullCalendar :events="events" :options="calendarOptions"  locale="fr"/>
</template>

<script>
import '@fullcalendar/core/vdom' // solves problem with Vite
import FullCalendar from '@fullcalendar/vue3'
import dayGridPlugin from '@fullcalendar/daygrid'
import timeGridPlugin from '@fullcalendar/timegrid'
import interactionPlugin from '@fullcalendar/interaction'
import listPlugin from '@fullcalendar/list'
import Sidebar from "../layouts/Sidebar";
import moment from "moment";
moment.locale('fr');

export default {

    components: {
        Sidebar,
        FullCalendar
    },
    data() {
        return {
            calendarOptions: {
                plugins: [dayGridPlugin, interactionPlugin, timeGridPlugin, listPlugin],
                initialView: 'timeGridWeek',
                dateClick: this.handleDateClick,
                timeZone: 'Africa/Abidjan', // indique le temps du pays
                locale: 'fr', // Traduire en français
                events: [
                    { title: 'event 1', date: '2022-06-01T13:00:00'},
                    { title: 'event 2', date: '2022-04-02' }
                ],
                buttonText: {
                    today: 'aujourd\'hui',
                    day: 'jour',
                    week:'semaine',
                    month:'mois',
                    listMonth:'planning'
                },
                headerToolbar: {
                    left: 'prev,next today',
                    center: 'title',
                    right: 'dayGridMonth,timeGridWeek,listDay,listMonth'
                }
            }
        }
    },
    methods: {
        handleDateClick: function (arg) {
            alert('date click! ' + arg.dateStr)
        }
    },
    name: "Agenda"
}
</script>

<style scoped>

</style>
