var languageNames = langs.map((lang) => lang.i);

var iconFor = function (iconName, uri) {
  return (
    "<a href=" +
    uri +
    "><img src=resources/" +
    iconName +
    "-icon.png height=20></a>"
  );
};

document.getElementById("index").onclick = () => {
  window.location.href = "";
};

langs.forEach((lang, index) => {
  lang.index = index;
  var span = document.createElement("span");
  var attribute = document.createAttribute("class");
  attribute.value = "cell";
  span.data = lang;
  span.setAttributeNode(attribute);
  span.style.backgroundImage = "url(resources/" + lang.i + "-logo-64.png)";
  document.getElementById("content").appendChild(span);
  span.onclick = function () {
    show(lang);
  };
  if ((lang.h || lang.w || lang.g || lang.rc || lang.pp) && lang.d) {
    var icons = [];
    if (lang.h) icons.push(iconFor("home", lang.h));
    if (lang.w)
      icons.push(
        iconFor("wikipedia", "https://en.wikipedia.org/wiki/" + lang.w)
      );
    if (lang.g)
      icons.push(
        iconFor(
          "github",
          "https://github.com/search?l=" +
            lang.g +
            "&q=stars%3A%3E1&s=stars&type=Repositories"
        )
      );
    if (lang.rc)
      icons.push(
        iconFor(
          "rosetta-code",
          "https://rosettacode.org/wiki/Category:" + lang.rc
        )
      );
    if (lang.pp)
      icons.push(
        iconFor("progopedia", "http://progopedia.com/language/" + lang.pp + "/")
      );
    if (icons) {
      lang.d +=
        '&nbsp;<span style="white-space:nowrap">' +
        icons.join("&nbsp;") +
        "</span>";
    }
  }
});

var imageElement = document.getElementById("logo");
var description = document.getElementById("description");
var info = document.getElementById("info");
var tags = document.getElementById("tags");
var prev = document.getElementById("prev");
var next = document.getElementById("next");

var show = function (language) {
  document.getElementById("content").style.display = "none";
  document.getElementById("single-language").style.display = "block";
  document.getElementById("bar").innerHTML = language.n;

  imageElement.style.backgroundImage =
    "url(resources/" + language.i + "-logo-240.png)";
  if (language.d) {
    description.innerHTML = language.d;
    description.style.display = "block";
  } else {
    description.style.display = "none";
  }

  if (language.f || language.v || language.r || language.u) {
    info.style.display = "block";
    var text = [];
    if (language.f) {
      text.push("<b>First appeared</b>: " + language.f);
    }
    if (language.v && language.v.length > 0) {
      text.push("<b>Notable Versions</b>: " + language.v.join(", "));
    }
    if (language.r) {
      text.push("<b>Recognized for</b>: " + language.r);
    }
    if (language.u) {
      text.push("<b>Used in</b>: " + language.u);
    }
    info.innerHTML = text.join(" &bull; ");
  } else {
    info.style.display = "none";
  }

  if (language.t) {
    tags.style.display = "block";
    tags.innerHTML = language.t
      .map(function (t) {
        return '<span class="tag">' + t + "</span>";
      })
      .join(" ");
  } else {
    tags.style.display = "none";
  }

  var prevIndex = (language.index + langs.length - 1) % langs.length;
  var nextIndex = (language.index + 1) % langs.length;
  prev.innerHTML = "&larr; " + langs[prevIndex].n;
  next.innerHTML = langs[nextIndex].n + " &rarr;";
  prev.onclick = () => show(langs[prevIndex]);
  next.onclick = () => show(langs[nextIndex]);
  window.location.hash = "#" + language.i;
};

function home() {
  window.location.hash = "";
  document.getElementById("single-language").style.display = "none";
  document.getElementById("content").style.display = "block";
  document.getElementById("bar").innerHTML = "Programming Languages";
}

addEventListener("keydown", function (event) {
  var key = window.location.hash.substring(1);
  var index = languageNames.indexOf(key);
  if (isNaN(index) || index < 0 || index >= langs.length) {
    return;
  }
  if (event.keyCode === 37) {
    show(langs[(index + langs.length - 1) % langs.length]);
  } else if (event.keyCode === 39) {
    show(langs[(index + 1) % langs.length]);
  } else if (event.keyCode == 38) {
    home();
  }
});

window.onload = window.onpopstate = function () {
  var key = window.location.hash.substring(1);
  var index = languageNames.indexOf(key);
  if (index >= 0) {
    show(langs[index]);
  } else {
    home();
  }
};
