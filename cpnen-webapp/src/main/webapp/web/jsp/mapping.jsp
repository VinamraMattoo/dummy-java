<script>
    var checkedMapping = [];
    var checkedBrands = [];
    $(document).ready(function () {
        $('#mappingTable').on('check.bs.table', function (e, row) {
            var val = row.type;
            checkedMapping.push({
                productId: row.id,
                name: row.name,
                type: val.toUpperCase()
            });
            console.log(checkedMapping);
        });
        $("#mappingTable").on('check-all.bs.table', function (rows) {
            document.write(JSON.stringify(rows));
        });


        $('#mappingTable').on('uncheck.bs.table', function (e, row) {
            $.each(checkedMapping, function (index, value) {

                if (value.id === row.id) {
                    checkedMapping.splice(index, 1);
                }
            });
            console.log(checkedMapping);
        });


        $("#brandTable").on('check.bs.table', function (e, row) {

            checkedBrands.push({
                brandId: row.id
            });
            console.log(checkedBrands);
        });

        $("#brandTable").on('uncheck.bs.table', function (e, row) {
            $.each(checkedBrands, function (index, value) {
                if (value.id === row.id) {
                    checkedBrands.splice(index, 1);
                }
            });
            console.log(checkedBrands);
        });
    });

    function getBrands() {

        var str = [];
        if ($("#global").is(':checked') === false) {
            $.each(checkedBrands, function (index, value) {

                str.push(value);

            });
        }
        return str;

    }

    function getMappings() {

        var str1 = [];

        if ($("#global").is(':checked') === false) {
            $.each(checkedMapping, function (index, value) {

                str1.push(value);

            });
        }
        return str1;

    }
</script>
<h1 align="center">Select the Mapping</h1>

<div class="col-md-offset-1 col-md-5">
    <div style="border:solid;width:70px"><input type="checkbox"><span> Global</span></div>

    <br>
    <hr>
    <table disabled
           id="mappingTable"
           data-toggle="table"
           data-url="temp.txt"
           data-search="true"
           data-striped="true"
                     data-page-list="[1, 5, 10, 100, ALL]"
           data-height="400">
        <thead>
        <tr>
            <th data-field="state" data-formatter="checkfun" data-checkbox="true"></th>
            <th class="hidden" data-formatter="getMappingId" data-field="id">Id</th>
            <th data-formatter="getMappingType"  data-field="type">Type</th>
            <th data-formatter="getMappingName" data-field="name">Name</th>
        </tr>
        </thead>
    </table>
</div>
<script>
  var mapId,mapType,mapName;
  //get id function
  function getMappingId(value) {
      mapId=value;
      return value;
  }
  //get type  function
  function getMappingType(value) {
      mapType = value;
      return value;
  }
  //get name function
  function getMappingName(value) {
      mapName = value;
      return value;
  }
 //checkbox funtion
function checkfun(value) {

    console.log(mapId+"+"+mapName+"+"+mapType);
}
</script>


<%--//vertical row--%>
<hr width="2" size="400">

<div class="col-md-offset-1 col-md-5">
    <br>
    <hr>
    <table disabled
           id="brandTable"
           data-toggle="table"
           data-url="temp1.txt"
           data-side-pagination="server"
           data-page-list="[1, 5, 10, 100, ALL]"
           data-height="400">
        <thead>
        <tr>
            <th data-field="state" data-checkbox="true"></th>
            <th class="hidden" data-field="id">Id</th>
            <th data-field="type">Type</th>
            <th data-field="name">Name</th>
        </tr>
        </thead>
    </table>
</div>
