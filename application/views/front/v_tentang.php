<html lang="id">
    <!--<![endif]-->
    <head>
        <title>Tentang Kami</title>

        <!-- Meta tags -->
        <meta charset="utf-8">
        <meta name="description" content="Website Travel" />
        <meta name="author" content="Code Travel" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

        <!-- Stylesheets -->
        <link rel="stylesheet" href="<?php echo base_url().'theme/css/base.css'?>" />
        <link rel="stylesheet" href="<?php echo base_url().'theme/css/skeleton.css'?>" />
        <link rel="stylesheet" href="<?php echo base_url().'theme/css/flexslider.css'?>" />
        <link rel="stylesheet" href="<?php echo base_url().'theme/css/jquery.fancybox-1.3.4.css'?>" />
        <link rel="stylesheet" href="<?php echo base_url().'theme/css/validationEngine.jquery.css'?>" />
        <link rel="stylesheet" href="<?php echo base_url().'theme/css/smoothness/jquery-ui-1.8.22.custom.css'?>" />
        <link rel="stylesheet" href="<?php echo base_url().'theme/css/ui.spinner.css'?>" />
        <link rel="stylesheet" href="<?php echo base_url().'theme/css/lamoon.css'?>" />
        <link href='http://fonts.googleapis.com/css?family=Lato|Lato:300|Vollkorn:400italic' rel='stylesheet' type='text/css'>

        <!-- Favicons -->
        <link rel="shorcut icon" type="text/css" href="<?php echo base_url().'assets/images/favicon.ico'?>">
        <?php 
            function limit_words($string, $word_limit){
                $words = explode(" ",$string);
                return implode(" ",array_splice($words,0,$word_limit));
            }
                
        ?>
    </head>
    <body>
        
        <!-- Background Image -->
        <img src="<?php echo base_url().'theme/images/bg1.jpg'?>" class="bg" alt="" />
        
        <!-- Root Container -->
        <div id="root-container" class="container">
            <div id="wrapper" class="sixteen columns">
                
                <!-- Banner -->
                <div id="sub-banner">
                    <div id="logo">
                    </div>
                    <img src="<?php echo base_url().'theme/images/placeholders/header-image-static.jpg'?>" alt="" />
                </div>
                
                <!-- Main Menu -->
                <div id="menu" class="home">
                    <ul id="root-menu" class="sf-menu">
                        <?php
                        $this->load->view('front/menu');
                        ?>
                    </ul>
                </div>

                <!-- Content -->
                <div id="content" class="reservation">
                    <div class="container section">
                        <center><h3><span>About</span></h3></center>
                        <div class="container section" style="margin-bottom: 400px;">
                        Code Travel merupakan usaha tours & travel yang berlokasi di Pulau Bali dan berpengalaman dalam bidang kami, ini bisa menjadi reference /pilihan terbaik bagi anda yang akan berlibur ke Bali. Paket Tour yang kami tawarkan semua Private Tour artinya anda tidak di gabung dengan peserta lain.
                        <br>
                        <br>
                        Tesedia juga Tour Harian Bali / Bali Full Day Tour seperti : Tour Ubud, Tour Lovina, Tour Besakih, Tour Uluwatu, Tour Tanah Lot,Tour Kintamani. dan obyek wisata yang kami tawarkan pun merupakan obyek wisata pilihan & terkenal seperti pura Tanah Lot, Pura Ulun Danu Beratan yang ada di Bedugul, Pura Uluwatu, Kintamani, Pura Tirta Empul, Garuda wisnu kencana / GWK, Krisna oleh oleh Bali dan masih banyak lagi obyek wisata Bali terkenal lainnya.
                        <br>
                        <br>
                        Code Travel memiliki team work yang solid dari staff reservation yang sigap merespon keinginan anda, sehingga anda tidak perlu khawatir untuk melakukan reservasi, menanyakan tentang product tour kami ataupun menerima keluhan anda. Begitu juga staff lapangan baik guide & driver Bali sangat memahami situasi jalanan di Bali dan sangat mengetahui objek - obyek wisata di Bali untuk menjadi tujuan wisata anda.
                        <br>
                        <br>
                        Best Regard,s
                        <br>
                        Code Travel Team
                        </div>
                    </div>
                </div>
                
                
            <!-- Footer -->
            <?php
                $this->load->view('front/v_footer');
            ?>
        
            <script type="text/javascript" src="<?php echo base_url().'theme/scripts/jquery-1.7.2.min.js'?>"></script>
            <script type="text/javascript" src="<?php echo base_url().'theme/scripts/jquery.easing.1.3.js'?>"></script>
            <script type="text/javascript" src="<?php echo base_url().'theme/scripts/jquery.flexslider-min.js'?>"></script>
            <script type="text/javascript" src="<?php echo base_url().'theme/scripts/jquery.hoverIntent.minified.js'?>"></script>
            <script type="text/javascript" src="<?php echo base_url().'theme/scripts/superfish.js'?>"></script>
            <script type="text/javascript" src="<?php echo base_url().'theme/scripts/jquery.cycle.lite.js'?>"></script>
            <script type="text/javascript" src="<?php echo base_url().'theme/scripts/jquery.fancybox-1.3.4.pack.js'?>"></script>
            <script type="text/javascript" src="<?php echo base_url().'theme/scripts/jquery.validationEngine.js'?>"></script>
            <script type="text/javascript" src="<?php echo base_url().'theme/scripts/jquery.validationEngine-en.js'?>"></script>
            <script type="text/javascript" src="<?php echo base_url().'theme/scripts/jquery-ui-1.8.22.custom.min.js'?>"></script>
            <script type="text/javascript" src="<?php echo base_url().'theme/scripts/ui.spinner.min.js'?>"></script>
            <script type="text/javascript" src="<?php echo base_url().'theme/scripts/lamoon.js'?>"></script>            

    </body>
</html>
