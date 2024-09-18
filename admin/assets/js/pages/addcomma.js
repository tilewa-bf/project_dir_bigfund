
        input.addEventListener('keyup', function(event) {
        event.target.value = event.target.value
        .replace(/\D/g, '')
        .replace(/\B(?=(\d{3})+(?!\d))/g, ',')
        });

         
