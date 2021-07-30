// const activateImage = () => {
//   const activeImage = document.querySelector(".product-image .active");
//   const productImages = document.querySelectorAll(".image-list img");
//   const navItem = document.querySelector('a.toggle-nav');

//   function changeImage(e) {
//   activeImage.src = e.target.src;
//   }

//   function toggleNavigation(){
//     this.nextElementSibling.classList.toggle('active');
//   }

//   productImages.forEach(image => image.addEventListener("click", changeImage));
//   if (navItem) {
//     navItem.addEventListener('click', toggleNavigation);
//   }
// }

// export { activateImage };

const totalPrice = () => {
  const startDateInput = document.querySelector("#booking_start_time");
  const startDate = startDateInput.value.split(' ')[0];
  const endDate = startDateInput.value.split(' ')[2];
  const totalDays = document.querySelector("#total-price")

  startDateInput.addEventListener("change", (event) => {
    console.log(event);
    totalDays
  })
};

export { totalPrice };
