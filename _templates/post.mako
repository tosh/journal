<%page args="post"/>

<div class="content">
<div class="column">
<h1><a href="${post.permapath()}" rel="bookmark" title="Permanent Link to ${post.title|h}">${post.title|h}</a></h1>
${post.content}
</div>
</div>

% if bf.config.blog.disqus.enabled:
<div class="comments">
<div class="column">
<div id="disqus_thread"></div>
<script type="text/javascript">
    var disqus_shortname = '${bf.config.blog.disqus.name}';
    var disqus_url = "${post.permalink|h}";

    (function() {
        var dsq = document.createElement('script');
        dsq.type = 'text/javascript'; dsq.async = true;
        dsq.src = 'http://' + disqus_shortname + '.disqus.com/embed.js';
        (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
    })();
</script>
<noscript>Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
</div>
</div>
% endif
