<div class="content">
        <div class="parallax-bg">
          <div class="row" style="margin-top:-10px">
            <div class="col-md-5">
              <h3 style="color:white;margin-left:50px">500+</h3>
              <h3 style="color:white">Social Media Fans</h3>
            </div>
            <div class="col-md-4">
              <h3 style="color:white;margin-left:50px">1000+</h3>
              <h3 style="color:white">People Reach</h3>
            </div>
            <div class="col-md-3">
              <h3 style="color:white;margin-left:50px">10+</h3>
              <h3 style="color:white">Contributors</h3>
            </div>
          </div>
        </div>
</div>

<script type="text/javascript">
    (function() {
        var documentEl = $(document),
        parallaxBg = $('div.parallax-bg');
        documentEl.on('scroll', function() {
            var currScrollPos = documentEl.scrollTop();
            parallaxBg.css('background-position', '0 ' + -currScrollPos/8 + 'px');
        });
   })();
</script>
