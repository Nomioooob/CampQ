import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

function formatMoney(number, decPlaces, decSep, thouSep) {
  decPlaces = isNaN(decPlaces = Math.abs(decPlaces)) ? 2 : decPlaces,
  decSep = typeof decSep === "undefined" ? "." : decSep;
  thouSep = typeof thouSep === "undefined" ? "," : thouSep;
  var sign = number < 0 ? "-" : "";
  var i = String(parseInt(number = Math.abs(Number(number) || 0).toFixed(decPlaces)));
  var j = (j = i.length) > 3 ? j % 3 : 0;

  return sign +
      (j ? i.substr(0, j) + thouSep : "") +
      i.substr(j).replace(/(\decSep{3})(?=\decSep)/g, "$1" + thouSep) +
      (decPlaces ? decSep + Math.abs(number - i).toFixed(decPlaces).slice(2) : "");
}

const updatePrice = (selectedDates) => {
  const startDate = selectedDates[0];
  const endDate = selectedDates[1];
  const priceElement = document.getElementById('priceElement')
  const price = parseInt(priceElement.dataset.price, 10)
  const days = (endDate.getTime() - startDate.getTime()) / (1000 * 3600 * 24) + 1;
  const totalPrice = days * price
  const formattedMoney = formatMoney(totalPrice, 0, ".", ",")
  priceElement.innerText = `¥${formattedMoney} total`
}

const initFlatpickr = () => {
  flatpickr("#booking_start_time", {
    altInput: true,
    minDate: "today",
    "plugins": [new rangePlugin({ input: "#booking_end_time"})],
    onChange: function (selectedDates, dateStr, instance) {
      updatePrice(selectedDates)
    },
  });
}

export { initFlatpickr };
