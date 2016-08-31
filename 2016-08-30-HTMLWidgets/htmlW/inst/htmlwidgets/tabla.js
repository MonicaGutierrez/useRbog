HTMLWidgets.widget({

  name: 'tabla',

  type: 'output',

  factory: function(el, width, height) {

    // TODO: define shared variables for this instance

    return {

      renderValue: function(x) {

console.log("mirando x" ,x)
//var css = document.createElement("style");
//       css.style.type = "text/css";
//       css.style.innerHTML = x.style;
//       el.appendChild(css);

//el.innerText = x.styles;
        // TODO: code to render the widget, e.g.
        //el.innerText = x.message;




//var obj= document.createElement('select');
//obj.style.color= "red";
//select.style.innerHTML = x.style;
  //    el.appendChild(select);


     var table = document.createElement('table');
table.setAttribute('id',"table");

el.appendChild(table);

        var Olympics = x.data;

        Olympics.forEach(function(items) {
        var row = document.createElement("tr");
        items.forEach(function(item) {
          var cell = document.createElement("td");
          cell.textContent = item;
          row.appendChild(cell);
        });
        table.appendChild(row);
});


      },

      resize: function(width, height) {

        // TODO: code to re-render the widget with a new size

      }

    };
  }
});
