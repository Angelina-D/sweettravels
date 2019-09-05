import swal from 'sweetalert';

const initConfirmAlerts = () => {
  const confirmationButtons = document.querySelectorAll('.confirm-button');
  if (confirmationButtons) {
      confirmationButtons.forEach((button) => {
      button.addEventListener('click', (event) => {
        event.preventDefault();
        swal({
          title: 'Confirm',
          text: 'Are you sure you want to continue with this offer and proceed to payment?',
          buttons: ['No', 'Yes']
        }).then((isConfirmed) => {
          isConfirmed ? window.location.href = button.href : false;
        });
      });
    });
  }
}

export default initConfirmAlerts;
