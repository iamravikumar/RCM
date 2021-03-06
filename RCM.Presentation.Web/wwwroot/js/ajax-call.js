﻿//CORE
function reloadSelect(targetUrl, dropdown, input) {
    $.ajax({
        method: "GET",
        url: targetUrl,
    }).done(function (data) {
        dropdown.empty();

        $.each(data, function (index, item) {
            dropdown.append($("<option />").text(item.nome).val(item.id));
        })

        $(dropdown.find('option').each(function (index, item) {
            if (item.value === $(input).val()) {
                dropdown.prop('selectedIndex', index);
            }
        }));

        if ($(input).val() == "" || $(input).val() == "00000000-0000-0000-0000-000000000000")
            $(input).val(dropdown.find('option').first().val());

        dropdown.material_select();
    })
}