function moveStep(stepIndex) {
    var isValid = validateStep(stepIndex);
    if (isValid) {
        pageControl.SetActiveTabIndex(stepIndex + 1);
    }
}

function save(stepIndex) {
    var isValid = validateStep(stepIndex);
    if (isValid) {
        loadingPanel.Show();
        cbSave.PerformCallback();
    }
}

function validateStep(stepIndex) {
    var isValid = true;
    var tabPage = document.getElementById('Content_PageControl1_C' + stepIndex);

    if (tabPage) {
        var tdElements = tabPage.querySelectorAll('td[id^="Content_PageControl1_"][id$="_ETC"]');
        tdElements.forEach(function (td) {
            if (td.innerText.trim().length > 0) {
                isValid = false;
            }
        });
    }

    return isValid;
}

function OnSelectedIndexChanged(s, e, d) {
    var id = s.GetValue();
    if (id !== null) {
        d.PerformCallback(id.toString());
    }
}