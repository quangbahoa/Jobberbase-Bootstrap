{include file="header.tpl"}
		
		<div class="row jobmain">
			<div class="span16">
			<ul class="pills">
				<li><a href="#">{$translations.publish.step1}</a></li>
				<li><a href="#">{$translations.publish.step2}</a></li>
				<li class="active"><a href="#">{$translations.publish.step3}</a></li>
			</ul>
			{if $smarty.session.later_edit}
				<div class="posted-ok">
					{$translations.publish.edit_success}: <a href="{$job_url}">{$job_url}</a>
					{php}
						unset($_SESSION['later_edit']);
						unset($_SESSION['referer']);
					{/php}
				</div>
				<br />
				<p>
					<a href="{$BASE_URL}">&laquo; {$translations.notfound.back}</a>
				</p>
			{else}
				{if $postRequiresModeration}
					<div class="posted-pending">
						{$translations.publish.success_message}
					</div>
					<br />
					<p>
						<a href="{$BASE_URL}">&laquo; {$translations.notfound.back}</a>
					</p>
				{else}
					<div class="posted-ok">
						<strong>{$translations.publish.congratulations}</strong><br /><a href="{$job_url}">{$translations.publish.view}</a>.
					</div>
					<h4>{$translations.publish.options_title}</h4>
					<p>
						{$translations.publish.options_info}:
					</p>
					<ul>	
						<li><a href="{$BASE_URL}post/{$CURRENT_ID}/{$auth}/" title="{$translations.publish.edit}">&raquo; {$translations.publish.edit}</a></li>
						<li><a href="{$BASE_URL}deactivate/{$CURRENT_ID}/{$auth}/" title="{$translations.publish.deactivate}">&raquo; {$translations.publish.deactivate}</a></li>
					</ul>
				{/if}
			{/if}
		</div>
		</div>

{include file="footer.tpl"}