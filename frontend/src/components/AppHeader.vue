<template>
    <!--Header -->
    <div class="flex flex-wrap ">
        <header class="border-b text-lg	container max-w-full mx-auto sm:px-4 header pt-3 pb-2 bg-white border-none">
            <div class="sm:container mx-auto xl:px-5 mw-75">
                <div class="flex flex-wrap ">
                    <!-- ЛОГО -->
                    <div class="w-1/7">
                        <img class="img-logo"
                            src="../assets/Логотип.png"
                            alt="Лого">
                    </div>

                    <div class="w-1/7">
                        <div class="flex flex-wrap  mt-2">
                            <div class="w-1/6 pt-2"><img src="../assets/icon _location on_.png" alt="loc"></div>
                            <div class="relative flex-grow max-w-full flex-1 px-2 pb-2"><span class="text-xs">Волгоград</span></div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
    </div>
    <!--Navbar -->
    <div class="flex flex-wrap mb-5">
        <nav class="flex flex-wrap items-center content-between py-3 px-4  container  max-w-full mx-auto sm:px-4 navbar-container bg-main">
            <div class="flex flex-wrap  sm:px-4 mx-auto w-65">
                <div class="w-1/5 flex-grow max-w-full flex-1 px-4">
                    <a class="inline-block py-2 px-4 no-underline nav-item" href="#">О нас</a>
                </div>
                <div class="w-1/5 flex-grow max-w-full flex-1 px-4">
                    <a class="text-sm text-bold font-montserrat inline-block py-2 px-4 no-underline nav-item" href="#">Портфолио</a>
                </div>
                <div class="w-1/5 flex-grow max-w-full flex-1 px-4">
                    <a class="text-sm text-bold font-montserrat inline-block py-2 px-4 no-underline nav-item" href="#" >Цены</a>
                </div>
                <div class="w-1/5 flex-grow max-w-full flex-1 px-4">
                    <a class="text-sm text-bold font-montserrat inline-block py-2 px-4 no-underline nav-item" href="#" >Отзывы</a>
                </div>
                <div class="w-1/5 flex-grow max-w-full flex-1 px-4">
                    <button class="text-sm rounded text-bold font-montserrat inline-block py-2 px-4 no-underline repair-order-btn bg-purchase border-none" href="#" >Заказать ремонт</button>
                </div>                

            </div>
        </nav>
    </div>

</template>

<style scoped>
.img-logo {
    width: 80%; 
    height: 85%
}
.navbar-container{
    height: 1%; 
}
.w-65{
    width:65%;
}
.mw-75{
    max-width:75%;
}

</style>