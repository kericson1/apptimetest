<template>
    <div class="header">

        <div class="header-left">
            <a href="index.html" class="logo">
                <img src="" width="40" height="40" alt="">
            </a>
        </div>

        <a id="toggle_btn" href="javascript:void(0);">
<span class="bar-icon">
<span></span>
<span></span>
<span></span>
</span>
        </a>

        <a id="mobile_btn" class="mobile_btn" href="#sidebar"><i class="fa fa-bars"></i></a>

        <ul class="nav user-menu">

            <li class="nav-item dropdown">
                <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
                    <i class="fa fa-bell-o"></i> <span class="badge badge-pill">3</span>
                </a>
                <div class="dropdown-menu notifications">
                    <div class="topnav-dropdown-header">
                        <span class="notification-title">Notifications</span>
                        <a href="javascript:void(0)" class="clear-noti"> Clear All </a>
                    </div>
                    <div class="noti-content">
                        <ul class="notification-list">
                            <li class="notification-message">
                                <a href="activities.html">
                                    <div class="media">
<span class="avatar">
<img alt="" src="assets/img/profiles/avatar-02.jpg">
</span>
                                        <div class="media-body">
                                            <p class="noti-details"><span class="noti-title">John Doe</span> added
                                                new
                                                task <span class="noti-title">Patient appointment booking</span></p>
                                            <p class="noti-time"><span class="notification-time">4 mins ago</span>
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="notification-message">
                                <a href="activities.html">
                                    <div class="media">
<span class="avatar">
<img alt="" src="assets/img/profiles/avatar-03.jpg">
</span>
                                        <div class="media-body">
                                            <p class="noti-details"><span class="noti-title">Tarah Shropshire</span>
                                                changed the task name <span class="noti-title">Appointment booking with payment gateway</span>
                                            </p>
                                            <p class="noti-time"><span class="notification-time">6 mins ago</span>
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="notification-message">
                                <a href="activities.html">
                                    <div class="media">
<span class="avatar">
<img alt="" src="assets/img/profiles/avatar-06.jpg">
</span>
                                        <div class="media-body">
                                            <p class="noti-details"><span class="noti-title">Misty Tison</span>
                                                added
                                                <span class="noti-title">Domenic Houston</span> and <span
                                                    class="noti-title">Claire Mapes</span> to project <span
                                                    class="noti-title">Doctor available module</span></p>
                                            <p class="noti-time"><span class="notification-time">8 mins ago</span>
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="notification-message">
                                <a href="activities.html">
                                    <div class="media">
<span class="avatar">
<img alt="" src="assets/img/profiles/avatar-17.jpg">
</span>
                                        <div class="media-body">
                                            <p class="noti-details"><span class="noti-title">Rolland Webber</span>
                                                completed task <span class="noti-title">Patient and Doctor video conferencing</span>
                                            </p>
                                            <p class="noti-time"><span class="notification-time">12 mins ago</span>
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="notification-message">
                                <a href="activities.html">
                                    <div class="media">
<span class="avatar">
<img alt="" src="assets/img/profiles/avatar-13.jpg">
</span>
                                        <div class="media-body">
                                            <p class="noti-details"><span class="noti-title">Bernardo Galaviz</span>
                                                added new task <span class="noti-title">Private chat module</span>
                                            </p>
                                            <p class="noti-time"><span class="notification-time">2 days ago</span>
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="topnav-dropdown-footer">
                        <a href="activities.html">View all Notifications</a>
                    </div>
                </div>
            </li>

            <li class="nav-item dropdown has-arrow main-drop">
                <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
                    <span class="user-img"><img src="assets/img/profiles/avatar-21.jpg" alt=""></span>
                </a>
                <div class="dropdown-menu">
                    <router-link class="dropdown-item" to="/profil">Mon profil</router-link>
                    <a href="#" class="dropdown-item" @click.prevent="logout">Se deconnecter</a>
                </div>
            </li>
        </ul>


        <div class="dropdown mobile-user-menu">
            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i
                class="fa fa-ellipsis-v"></i></a>
            <div class="dropdown-menu dropdown-menu-right">
                <a class="dropdown-item" href="profile.html">Mon profil</a>
                <a class="dropdown-item" href="#" @click.prevent="logout">Se deconnecter</a>
            </div>
        </div>

    </div>
</template>

<script>
export default {
    data() {
        return {
            loading: true,
            user: '',
            error: null,
        };
    },
    mounted() {
        axios.get('/api/user').then((res) => {
            this.user = res.data;
        })

    },
    methods: {
        logout() {
            axios.post('/api/logout').then(() => {
                this.$router.push({ name: "welcome"});
            })
        }
    },
    created() {
        axios
            .get("/api/user")
            .then((response) => (this.user = response.data))
            .catch((error) => console.log(error));
    },
    name: "Header"
}
</script>

<style scoped>

</style>
