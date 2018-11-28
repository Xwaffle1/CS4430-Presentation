function validateForm(artists) {

    var entered = document.forms["form"]["artist"].value;
    if (entered === "") {
        alert("Please fill in an artist name!");
        return false;
    }
    for (var i = 0; i < artists.length; i++) {
        if (entered.toLowerCase() === artists[i]["artistName"].toString().toLowerCase()) {
            alert(entered + " is already in the Database!");
            return false;
        }
    }

}

function someFunction(artists) {
    alert("RUNNING FUNCTION");
    for (var obj in artists) {
        alert(obj);
    }
}

function updateAlbums(albumsData) {
    var select = document.forms["form"]["artistSelected"];
    var index = select.selectedIndex;
    var optionSelected = select.options[index].text;
    var albumSelect = document.forms["form"]["albumsSelect"];
    var selectedArtistID = index + 1;

    var i;
    for (i = albumSelect.options.length - 1; i >= 0; i--) {
        albumSelect.remove(i);
    }

    var noneOption = document.createElement("option");
    noneOption.text = "NONE";
    albumSelect.add(noneOption);

    for (var i = 0; i < albumsData.length; i++) {
        var row = albumsData[i];
        var artistID = row['artistID'];
        var albumName = row['albumName'];
        if (selectedArtistID === artistID) {
            var option = document.createElement("option");
            option.text = albumName;
            albumSelect.add(option);
        }
    }
}