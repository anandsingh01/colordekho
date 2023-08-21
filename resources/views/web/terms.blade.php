@extends('layouts.web')
<?php
session_start();
?>
@section('css')
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.2.0/sweetalert2.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.2.0/sweetalert2.all.min.js"></script>
    <meta name="csrf-token" content="{{ csrf_token() }}" />
    <style>
        .input-group {
            padding: 0;
            justify-content: center;
        }
        .cart-bottom{
            display:block;
        }
        form {
            width: 100%;
        }
    </style>
@stop
@section('body')
    <?php
    $get_cart = get_cart();
    $get_count = json_decode($get_cart);
    $getAllCart = getCartProducts();
    ?>

    <main class="main">
        <nav aria-label="breadcrumb" class="breadcrumb-nav border-0 mb-0">
            <div class="container">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{url('/')}}">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Terms and conditions</li>
                </ol>
            </div><!-- End .container -->
        </nav><!-- End .breadcrumb-nav -->

        <div class="" style="background-image: url('assets/images/backgrounds/login-bg.jpg')">
            <div class="container">
                <div class="row">
                    <div style="text-align:justify">

                        Thank you for visting our website. This website is operated and managed by Globe Paints. Throughout the site, the terms “we”, “us” and “our” refer to Globe Paints.
                        <b>My business is registered in the name of Globe paints. Now you would think that? The company's website is running under the name Color Dekho and the name of the company is globe paints, so user should I tell you? This is the keyword. I liked it very much. So I put my company online with the name Color Dekho. and this is my gst number: 27DLXPD1726H1ZU</b>
                        Globe Paints offers this website, including all information’s,and service available from this site to you, the user, conditioned upon your acceptance of all terms, conditions, policies and notices stated here.
                        By visiting our site and/ or purchasing something from us, you engage in our “Service” and agree to be bound by the following terms and conditions (“Terms of Service”, “Terms”), including those additional terms and conditions and policies referenced herein and/or available. These Terms of Service apply to all users of the site, including without limitation users who are browsers, vendors, customers, merchants, and/ or contributors of content.
                        Please read these Terms of Service carefully before accessing or using our website. By accessing or using any part of the site, you agree to be bound by these Terms of Service. If you do not agree to all the terms and conditions of this agreement, then you may not access the website or use any services.
                        We may change these terms and conditions at any time without advance notice. Changed terms will become effective once posted on the Website, and will not have any retrospective effect on existing contractual arrangements made through this Website.
                        Any new features or tools which are added to the current store shall also be subject to the Terms of Service. You can review the most current version of the Terms of Service at any time on this page. We reserve the right to update, change or replace any part of these Terms of Service to our website. It is your responsibility to check this page periodically for changes.
                        <h3>ELIGIBILITY</h3>
                        By agreeing to these Terms of Service, you represent that you had completed 18 year age or majority in your state or province of residence, If you are a minor i.e. under the age of 18 years, you may access this website only with the involvement of a parent or guardian.
                        <h3>GENERAL CONDITIONS</h3>
                        We reserve the right to refuse to anyone for any reason at any time.
                        You agree not to reproduce, duplicate, copy, sell, resell or exploit any portion of the Service, use of the Service, or access to the Service or any contact on the website through which the service is provided, without express written permission by us.
                        The headings used in this agreement are included for convenience only and will not limit or otherwise affect these Terms.
                        <h3>PRODUCTS OR SERVICES</h3>
                        We have made every effort to display as accurately as possible the colors and images of our products that appear at the store. We cannot guarantee that your computer monitor’s display of any color will be accurate.
                        We reserve the right to discontinue any product at any time. Any offer for any product or service made on this site is void where prohibited.
                        <h3>APPLICATION OF THE PRODUCT</h3>
                        For full Technical specification kindly refer our website, the product should be used according to the Direction for use printed on product Container .We are not responsible for the End result after application of the product, It may vary depending up on the application process of the product, weather condition. Any reliance on the material on this site is at your own risk.
                        <h3>PRICE MODFICATION</h3>
                        Prices for our products are subject to change without notice.
                        We reserve the right at any time to modify or discontinue the Service (or any part or content thereof) without notice at any time.
                        We shall not be liable to you or to any third-party for any modification, price change, suspension or discontinuance of the Service.
                        All the Price quoted on our website are in Indian Rupees, inclusive of taxes.
                        In the event of obvious errors on the website or made in connection with your orders, we reserve the right to correct the error and charge you in the correct price, in such situation we will contact you and offer you the option of purchasing our product in correct price or Canceling your order.
                        <h3>PAYMENT CONDITIONS</h3>
                        You can select one of the payments methods described on the Website. We reserves the right to exclude or include particular payment methods at any time.
                        In case of payment by credit card, your payment will be executed by our payment service provider using their discrete secure infrastructure. Our Payment service provider (RazorPay/payU) reserves the right to decline the processing of payments in cases of suspected fraud or other irregularity.
                        <h3>DELIVERY</h3>
                        The deliveries are made at the risk of the purchaser. The purchaser has to bear the transport cost for their location.
                        All deliveries are made under “ To Pay truncation”.
                        We shall deliver the Transport booking receipt without delay upon confirmation of your successful payment of the purchase price.
                        Time for delivery shall be prolonged by reasonable periods in case of force manure or other events for which Globe Paints is not responsible, such as disruptions in operations, strikes, authority measures, or troubles with telecommunications.

                        <h3>USER COMMENTS, FEEDBACK</h3>
                        If, at our request, you send give feedback and comment on our products, you agree that we may, at any time, without restriction, edit, copy, publish, in any medium, any comments that you forward to us..
                        We have right to monitor, or remove content that we determine in our sole discretion are unlawful, offensive, threatening, libelous, defamatory, pornographic, obscene or otherwise objectionable or violates any party’s intellectual property or these Terms of Service.
                        You agree that your comments will not contain libelous or otherwise unlawful, abusive or obscene material, or contain any computer virus or other malware that could in any way affect the operation of the Service or any related website. You may not use a false e-mail address, pretend to be someone other than yourself, or otherwise mislead us or third-parties as to the origin of any comments. You are solely responsible for any comments you make and their accuracy. We take no responsibility and assume no liability for any comments posted by you or any third-party.
                        <h3>ERRORS, AND OMISSIONS</h3>
                        Occasionally there may be information on our site or in the Service that contains typographical errors, inaccuracies or omissions that may relate to product descriptions, pricing, promotions, offers, product shipping charges, transit times and availability. We reserve the right to correct any errors, inaccuracies or omissions, and to change or update information or cancel orders if any information in the Service or on any related website is inaccurate at any time without prior notice (including after you have submitted your order).
                        We undertake no obligation to update, amend or clarify information in the Service or on any related website, including without limitation, pricing information, except as required by law. No specified update or refresh date applied in the Service or on any related website, should be taken to indicate that all information in the Service or on any related website has been modified or updated.
                        <h3>PROHIBITED USES</h3>
                        <b>In addition to other prohibitions as set forth in the Terms of Service, you are prohibited from using the site or its content: </b>
                        (i)for any unlawful purpose;
                        (ii)to solicit others to perform or participate in any unlawful acts;
                        (iii)to violate any international, federal, provincial or state regulations, rules, laws, or local ordinances.
                        (iv) to harass, abuse, insult, harm, defame, slander, disparage, intimidate, or discriminate based on gender, sexual orientation, religion, ethnicity, race, age, national origin, or disability;
                        (v)(v) to submit false or misleading information;
                        (vi)to upload or transmit viruses or any other type of malicious code that will or may be used in any way that will affect the functionality or operation of the Service or of any related website, other websites, or the Internet;
                        (vii) to collect or track the personal information of others;
                        (viii)for any obscene or immoral purpose; or
                        (ix)to interfere with or circumvent the security features of the Service or any related website, other websites, or the Internet. We reserve the right to terminate your use of the Service or any related website for violating any of the prohibited uses.
                        <h3>DISCLAIMER OF WARRANTIES; LIMITATION OF LIABILITY</h3>
                        We do not guarantee, represent or warrant that your use of our service will be uninterrupted, timely, secure or error-free.
                        We do not warrant that the results that may be obtained from the use of the service will be accurate or reliable.
                        You agree that from time to time we may remove the service for indefinite periods of time or cancel the service at any time, without notice to you.
                        You expressly agree that your use of, or inability to use, the service is at your sole risk. The service and all products and services delivered to you through the service are (except as expressly stated by us) provided ‘as is’ and ‘as available’ for your use, without any representation, warranties or conditions of any kind, either express or implied, including all implied warranties or conditions of merchant ability, merchantable quality, fitness for a particular purpose, durability, title, and non-infringement.
                        In no case shall Globe Paints , our directors, officers, employees, affiliates, agents, contractors, interns, suppliers, service providers or license be liable for any injury, loss, claim, or any direct, indirect, incidental, punitive, special, or consequential damages of any kind, including, without limitation lost profits, lost revenue, lost savings, loss of data, replacement costs, or any similar damages, whether based in contract, tort (including negligence), strict liability or otherwise, arising from your use of any of the service or any products procured using the service, or for any other claim related in any way to your use of the service or any product, including, but not limited to, any errors or omissions in any content, or any loss or damage of any kind incurred as a result of the use of the service or any content (or product) posted, transmitted, or otherwise made available via the service, even if advised of their possibility. Because some states or jurisdictions do not allow the exclusion or the limitation of liability for consequential or incidental damages, in such states or jurisdictions, our liability shall be limited to the maximum extent permitted by law.
                        <h3>INDEMNIFICATION</h3>
                        You agree to indemnify, defend and hold harmless  Globe Paints and our parent, subsidiaries, affiliates, partners, officers, directors, agents, license, service providers, employees, harmless from any claim or demand, including reasonable attorneys’ fees, made by any third-party due to or arising out of your breach of these Terms of Service or the documents they incorporate by reference, or your violation of any law or the rights of a third-party.
                        <h3>TERMINATION</h3>
                        The obligations and liabilities of the parties incurred prior to the termination date shall survive the termination of this agreement for all purposes.
                        These Terms of Service are effective unless and until terminated by either you or us. You may terminate these Terms of Service at any time by notifying us that you no longer wish to use our Services, or when you cease using our site.
                        That in our sole judgment you fail, or we suspect that you have failed, to comply with any term or provision of these Terms of Service, we also may terminate this agreement at any time without notice and you will remain liable for all amounts due up to and including the date of termination; and/or accordingly may deny you access to our Services (or any part thereof).
                        <h3>AGREEMENT CLAUSE</h3>
                        The failure of us to exercise or enforce any right or provision of these Terms of Service shall not constitute a waiver of such right or provision.
                        These Terms of Service and any policies or operating rules posted by us on this site or in respect to The Service constitutes the entire agreement and understanding between you and us and govern your use of the Service, superseding any prior or contemporaneous agreements, communications and proposals, whether oral or written, between you and us (including, but not limited to, any prior versions of the Terms of Service).
                        Any ambiguities in the interpretation of these Terms of Service shall not be construed against the drafting party.
                        <h3>JURISDICATION</h3>
                        These Terms of Service and any separate agreements whereby we provide you Services shall be governed by and construed in accordance with the laws of India and jurisdiction of Mumbai.
                        <h3>CHANGES TO TERMS OF SERVICE</h3>
                        You can review the most current version of the Terms of Service at any time at this page.
                        We reserve the right, at our sole discretion, to update, change or replace any part of these Terms of Service by posting updates and changes to our website. It is your responsibility to check our website periodically for changes. Your continued use of or access to our website or the Service following the posting of any changes to these Terms of Service constitutes acceptance of those changes.


                    </div>
                </div>
            </div><!-- End .container -->
        </div><!-- End .login-page section-bg -->
    </main>

@stop
@section('js')

@stop
