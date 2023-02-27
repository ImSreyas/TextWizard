<script src="https://cdn.jsdelivr.net/npm/kute.js@2.2.4/dist/kute.min.js"></script>
<script defer>
    const tween = KUTE.fromTo(
        #blob1,
        { path: '#blob1' },
        { path: '#blob2' },
        { repeat: 999, duration: 3000, yoyo: true}
    )
    tween.start()
</script>





<!-- dark mode or white mode  -->

<div class='animation-theme' animation='darkGreen'>
    {% include 'animation/darkGreen/registration.html'%}
</div>
<div class='animation-theme' animation='yellow'>
    {% include 'animation/yellow/registration.html' %}
</div>