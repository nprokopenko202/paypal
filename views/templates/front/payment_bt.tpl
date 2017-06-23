{*
* 2007-2017 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author    PrestaShop SA <contact@prestashop.com>
*  @copyright 2007-2017 PrestaShop SA
*  @license   http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}


{*Displaying a button or the iframe*}
<div class="row">
    <div class="col-xs-12 col-md-10">
        <div class="braintree-row-payment">
            <div class="payment_module braintree-card">
                <label class="paypal_title_pay_card">{l s='Pay with your card' mod='paypal'}</label><div class="paypal_clear"></div>
            <img src="{$baseDir|escape:'htmlall':'UTF-8'}modules/paypal/views/img/braintree_cards.png" alt="">
            <form action="{$braintreeSubmitUrl}" id="braintree-form" method="post">
                <div id="block-card-number" class="block_field">
                    <div id="card-number" class="hosted_field"><div id="card-image"></div></div>

                </div>

                <div id="block-expiration-date" class="block_field half_block_field">
                    <div id="expiration-date" class="hosted_field"></div>
                </div>

                <div id="block-cvv" class="block_field half_block_field">
                    <div id="cvv" class="hosted_field"></div>
                </div>

                <input type="hidden" name="deviceData" id="deviceData"/>
                <input type="hidden" name="client_token" value="{$braintreeToken}">
                <input type="hidden" name="liabilityShifted" id="liabilityShifted"/>
                <input type="hidden" name="liabilityShiftPossible" id="liabilityShiftPossible"/>
                <input type="hidden" name="payment_method_nonce" id="payment_method_nonce"/>
                <input type="hidden" name="card_type" id="braintree_card_type"/>
                <input type="hidden" name="payment_method_bt" value="card-braintree"/>
                <div class="paypal_clear"></div>
            </form>
            </div>
        </div>
        </div>
    </div>


<script>

    var authorization = '{$braintreeToken}';
    var bt_amount = {$braintreeAmount};
    var check3DS = {$check3Dsecure};
    var bt_translations = {
        client:"{l s='Error create Client' mod='paypal'}",
        card_nmb:"{l s='Card number' mod='paypal'}",
        cvc:"{l s='CVC' mod='paypal'}",
        date:"{l s='MM/YY' mod='paypal'}",
        hosted:"{l s='Error create Hosted fields' mod='paypal'}",
        empty:"{l s='All fields are empty! Please fill out the form.' mod='paypal'}",
        invalid:"{l s='Some fields are invalid :' mod='paypal'}",
        token:"{l s='Tokenization failed server side. Is the card valid?' mod='paypal'}",
        network:"{l s='Network error occurred when tokenizing.' mod='paypal'}",
        tkn_failed:"{l s='Tokenize failed' mod='paypal'}",
        https:"{l s='3D Secure requires HTTPS.' mod='paypal'}",
        load_3d:"{l s='Load 3D Secure Failed' mod='paypal'}",
        request_problem:"{l s='There was a problem with your request.' mod='paypal'}",
        failed_3d:"{l s='3D Secure Failed' mod='paypal'}"
    };

</script>


