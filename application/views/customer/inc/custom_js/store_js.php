<script>
    function get_vendor_list(category_id){
        console.log(category_id);
        $.ajax({
            type:"POST",
            url:"<?=base_url(PANEL_CUSTOMER.'/get_all_vendor_list')?>",
            data:{
                "id":category_id
            },
            error:function(response){
                console.log(response);
            },
            success:function(response){
                console.log(response);
                let data=response.data;
                let details='';
                $.each(data, function(i, data){
                    details+=`
                    <div class="popstrlist mb-4 shadow border" data-toggle="modal" data-target="#storelistdtls" data-dismiss="modal" aria-label="Close">

                        <div class="d-flex align-items-center" id="${data.vendor_id}" onclick="get_vendor_product_list(this.id, '${data.store_name}', '${data.address}')">
                            <div class="popstrlistimg">
                                <img src="<?= base_url() ?>${data.front_image}" alt="">
                            </div>
                            <div class="ml-auto popstrlisttit">
                                <h5 class="title">${data.store_name}</h5>
                                <div class="d-flex align-items-center">
                                    <strong class="title">${data.address}</strong>
                                    <div class="ml-auto">12 mins - <span>₹90</span></div>
                                </div>
                            </div>
                        </div>
                    </div>
                `;
                });
                $('#vendor_list').html(details);
            }
        });
    }

    function get_vendor_product_list(vendor_id, store_name, address){
        console.log(vendor_id);
        $.ajax({
            type:"POST",
            url:"<?=base_url(PANEL_CUSTOMER.'/get_vendor_product_list')?>",
            data:{
                "id":vendor_id,
            },
            error:function(response){
                console.log(response);
            },
            success:function(response){
                console.log(response);
            }
        });
    }
</script>