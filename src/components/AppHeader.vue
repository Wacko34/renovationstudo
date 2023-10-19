<template>
    <!--Header -->
    <div class="row">
        <header class="border-bottom container-fluid header pt-3 pb-2">
            <div class="container">
                <div class="row">
                    <!-- ЛОГО -->
                    <div class="col-2">
                        <img class="img-logo"
                            src="../assets/Логотип.png"
                            alt="Лого">
                    </div>

                    <div class="col-2">
                        <div class="row mt-2">
                            <div class="col-1"><img src="../assets/🦆 icon _location on_.png" alt="loc"></div>
                            <div class="col"><span class="nav-item" style="font-size: 12px;">Волгоград</span></div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
    </div>
    <!--Navbar -->
    <div class="row">
        <nav class="navbar navbar-expand-lg container-fluid navbar-container">
            <div class="container mx-auto w-65">
                <div class="col">
                    <a class="nav-link nav-item" href="#">О нас</a>
                </div>
                <div class="col">
                    <a class="nav-link nav-item" href="#">Портфолио</a>
                </div>
                <div class="col">
                    <a class="nav-link nav-item" href="#" >Цены</a>
                </div>
                <div class="col">
                    <a class="nav-link nav-item" href="#" >Отзывы</a>
                </div>
                <div class="col">
                    <button class="nav-link repair-order-btn" href="#" >Заказать ремонт</button>
                </div>                

            </div>
        </nav>
    </div>

</template>

<style>
.header{
    background-color: white; font-size:18px; position: center;
}
.img-logo {
    width: 80%; height: 85%
}
.nav-item{
    font-family: Montserrat;
    font-size: 14px;
    color: black;
    font: bold;
}

.navbar-container{
    background-color: #8DD3BB; height: 1%; color: black !important;
}
.w-65{
    width:65%;
}
.repair-order-btn{
    font-family: Montserrat, sans-serif;
    font-size: 14px;
    color: black;
    font: bold;
    border-radius: 5px;
    border: solid 0.1px #CDEAE1;
    background-color: #CDEAE1;

}
</style>