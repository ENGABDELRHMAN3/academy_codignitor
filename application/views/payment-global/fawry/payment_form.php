 <!-- Import FawryPay CSS Library-->
  <script>
        function checkout() {
            const configuration = {
                locale: "en", //default en
                mode: DISPLAY_MODE.POPUP, //required, allowed values [SEPARATED,POPUP, INSIDE_PAGE, SIDE_PAGE]
            };
            FawryPay.checkout(buildChargeRequest(), configuration);
        }

        function buildChargeRequest() {
            const chargeRequest = {
                merchantCode: "770000019318",
                merchantRefNum: "unique-1",
                customerMobile: "01000000000",
                customerEmail: "a@gmail.com",
                customerName: "Customer",
                paymentExpiry: "",
                customerProfileId: "",
                language: "en-gb",
                chargeItems: [{
                    itemId: "1234",
                    description: "Cours",
                    price: <?php echo $payment_details["total_payable_amount"];?>,
                    quantity: 1,
                }],
                paymentMethod: "",
                returnUrl: "https://fawrydeveloper.com/",
                signature: "67301c39f1e554a28d2fe5e73b7000484d8302f968bfe744d4d5010c508c8f4d",
            };
            return chargeRequest;
        };
        
    </script>

<div class="gateway fawry-gateway">
    <input class="payment-button float-right mt-4" type="image" onclick="checkout();" src="https://www.atfawry.com/assets/img/FawryPayLogo.jpg"
        alt="pay-using-fawry" id="fawry-payment-btn" />


</div>
    