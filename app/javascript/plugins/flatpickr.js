import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"
const initFlatPickr = () => {
  const bookingForm = document.getElementById('booking-form-div');

	 if (bookingForm) {
	  flatpickr("#range_start", {
	  	plugins: [new rangePlugin({ input: "#range_end"})],
	    minDate: "today",
	    inline: true,
	    dateFormat: "Y-m-d",
	  })
	}
	console.log("hello")
	flatpickr('.flatpickr', {})
}


export { initFlatPickr };


