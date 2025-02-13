const nav = document.querySelector("nav");

for (let lang of langs) {
  const item = document.createElement("div");
  item.href = `#${lang}`;
  item.appendChild(document.createTextNode(lang.n));
  item.onclick = () => show(lang);
  nav.appendChild(item);
}

var iconFor = function (iconName, uri) {
  return (
    "<a href=" +
    uri +
    "><img src=resources/" +
    iconName +
    "-icon.png height=20></a>"
  );
};

langs.forEach((lang, index) => {
  console.log(lang);
  lang.index = index;
  var span = document.createElement("span");
  var attribute = document.createAttribute("class");
  attribute.value = "cell";
  span.data = lang;
  span.setAttributeNode(attribute);
  span.style.backgroundImage = "url(resources/" + lang.i + "-logo-64.png)";
  document.getElementById("canvas").appendChild(span);
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

var imageElement = document.querySelector("#logo img");
var description = document.getElementById("description");
var info = document.getElementById("info");
var tags = document.getElementById("tags");
var prev = document.getElementById("prev");
var next = document.getElementById("next");

function show(language) {
  imageElement.src = "resources/" + language.i + "-logo-240.png";
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

  window.location.hash = "#" + language.i;
}
