window.addEventListener('load', () => {
    document.querySelectorAll('[id^=formButton]').forEach(x => {
        x.addEventListener('click', () => {
            let form = x;
            while (form != null && form.tagName != "FORM")
                form = form.parentElement;
            if (form != null){
                form.action = x.dataset.action;            
                form.submit();
            }
        })
    });

    document.querySelectorAll('.navbar-burger').forEach(x => {
        x.addEventListener('click', () => {            
            const target = x.dataset.target;
            const $target = document.getElementById(target);
            x.classList.toggle('is-active');
            $target.classList.toggle('is-active');
        })
    });
})
