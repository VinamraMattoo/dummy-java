<link href="../css/bootstrap-table-edit.css">
<script
        src="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.8.1/bootstrap-table.js"></script>
<script
        src="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.8.1/locale/bootstrap-table-en-US.js"></script>
<div class="container">
    <ul style="margin-left: 50px;padding: 0">
        <div class="col-md-2">
            <li>
                <a title="Click here to map the current coupon with Area(s) & Product(s)" style="margin-top:5px;display: block;
             text-decoration: underline;" id="fastAreasProductsLink" onclick="areaReferralMappingSwitcher('area','fast')">
                    Areas & Products
                </a>
            </li>
        </div>
        <div class="col-md-2">
            <li>
                <a title="Click here to map the current coupon with Brand(s) & Referral Source(s)" style="margin-top:5px;
                    display: block;"
                   id="fastBrandsReferralsLink" onclick="areaReferralMappingSwitcher('referral','fast')">
                    Brands & Referrers
                </a>
            </li>
        </div>
    </ul>

</div>
<div id="fastAreaProductDiv" >

    <div class="col-md-offset-1 col-md-5" style="font-size: 12px;margin-left: 43px;" id="fastAreaHolder">
        <div class="pull-left">
            <label title="check to map this coupon for all Areas" style="margin-top: 8px" >
                <input type="checkbox" id="fastMappingAreasGlobal"  onclick="tableGlobalSelector('fast','area',0)" > All Areas
            </label>
        </div>

        <table
                id="fastAreaTable"
                title="List of applicable areas to which the coupon can be mapped"
                data-row-style="bootstrapTableRowSizeModifier"
                data-toggle="table"
                data-search="true"
                data-url="../rws/areas"
                data-pagination="true"
                data-striped="true"
                data-page-size="10"

                data-show-refresh="true"
                data-page-list="[1, 10, 50, ALL]"
                data-click-to-select="true">
           <thead style="background-color: #3fc1be;">
            <tr>
                <th data-field="state" data-formatter="getAreaState" data-checkbox="true"></th>
                <th class="hidden" data-field="id">Id</th>
                <th data-field="name">Name</th>
            </tr>
            </thead>
        </table>
    </div>
    <div class="col-md-offset-1 col-md-5" style="font-size: 12px;margin-left: 43px;" id="fastMappingHolder">
        <div class="pull-left">
            <label title="check to map this coupon for all Products" style="margin-top: 8px" >
                <input type="checkbox" id="fastMappingProductsGlobal" onclick="tableGlobalSelector('fast','product',0)" > All Products
            </label>
        </div>

        <table
                id="fastMappingTable"
                title="List of applicable products to which the coupon can be mapped"
                data-row-style="bootstrapTableRowSizeModifier"
                data-toggle="table"
                data-search="true"
                data-url="../rws/products"
                data-pagination="true"
                data-striped="true"
                data-page-size="10"

                data-show-refresh="true"
                data-page-list="[1, 10, 50, ALL]"
                data-click-to-select="true">
           <thead style="background-color: #3fc1be;">
            <tr>
                <th data-field="state" data-formatter="getState" data-checkbox="true"></th>
                <th class="hidden" data-field="id">Id</th>
                <th data-field="type">Type</th>
                <th data-field="name">Name</th>
            </tr>
            </thead>
        </table>
    </div>

</div>
<%--second page--%>
<div id="fastBrandReferralDiv" style="display: none">

    <div class="col-md-offset-1 col-md-4" style="font-size: 12px;margin-left: 43px;display: inline"
         id="fastBrandHolder">
        <div class="pull-left">
            <label title="Check to map this coupon for all Brands" style="margin-top: 8px" >
                <input type="checkbox" id="fastMappingBrandsGlobal" onclick="tableGlobalSelector('fast','brand',0)" > All Brands
            </label>
        </div>

        <table
               id="fastBrandTable"
               title="List of applicable brands to which the coupon can be mapped.
                Note : Upon brand and channel type(B2B/B2C) selection appropriate referrer sources get updated in the referrers table"
               data-toggle="table"
               data-search="true"
               data-show-refresh="true"
               data-row-style="bootstrapTableRowSizeModifier"
               data-url="../rws/brands"
               data-pagination="true"
               data-striped="true"
               data-page-size="10"
               data-page-list="[1, 5, 10, ALL]"
               data-click-to-select="true"
                >

           <thead style="background-color: #3fc1be;">
            <tr>
                <th data-field="state" data-formatter="getBrandsChecked" data-checkbox="true"></th>
                <th class="hidden" data-field="id">Id</th>
                <th data-field="name">Name</th>
            </tr>
            </thead>
        </table>
    </div>
    <div class="col-md-2">
        <div style="margin-top:40%">
            <span title="Select this to fetch all Business to Business referral sources for selected brands"><input
                    id="fastB2BId" type="checkbox" onchange="trueSelector('fast',true)" checked /> B2B </span><br>
            <span title="Select this to fetch all Business to consumers referral sources for selected brands"><input
                    id="fastB2CId" type="checkbox" onchange="trueSelector('fast',false)" checked/> B2C </span><br>
        </div>
    </div>

    <div class=" col-md-5" style="font-size: 12px;" id="fastReferralHolder">
        <div class="pull-left">
            <label title="Check to map this coupon for all Referrer Sources" style="margin-top: 8px" >
                <input type="checkbox" id="fastMappingReferrerSourcesGlobal" onclick="tableGlobalSelector('fast','referral',0)"> All Referrer Sources
            </label>
        </div>
        <table
                id="fastReferrersTable"
                title="List of applicable referrer sources to which the coupon can be mapped"
                data-row-style="bootstrapTableRowSizeModifier"
                data-toggle="table"
                data-search="true"
                data="referralJSON"
                data-pagination="true"
                data-striped="true"
                data-page-size="10"

                data-show-refresh="true"
                data-page-list="[1, 10, 50, ALL]"
                data-click-to-select="true">
           <thead style="background-color: #3fc1be;">
            <tr>
                <th data-field="state" data-formatter="getReferralState" data-checkbox="true"></th>
                <th class="hidden" data-field="id">Id</th>
                <th data-field="type">Type &nbsp;&nbsp;&nbsp;
                </th>
                <th data-field="name">Name</th>
                <th data-field="brandName">Brand Name</th>

            </tr>
            </thead>
        </table>
    </div>
</div>
