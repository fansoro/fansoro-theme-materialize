{extends 'layout.tpl'}
{block 'content'}
	{set $posts = Morfy::factory()->getPages('blog', 'date', 'DESC', ['404','index'])}
	{foreach $posts as $post}
		<h3><a href="{$.site.url}/blog/{$post.slug}">{$post.title}</a></h3>
		<p>Posted on {$post.date}</p>
		<div>{$post.summary}</div>
	{/foreach}
{/block}
