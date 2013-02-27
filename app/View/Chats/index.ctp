<div class="chats index">
	<h2><?php echo __('Chat'); ?></h2>
	<div class="content-chat" style="border:1px solid black; width:1300px; height:500px; overflow:scroll;">
		<?php foreach ($chats as $chat): ?>
		<table>
		<tr>
			<td>
				<span style="font-weight:bold;"><?php echo h($chat['User']['username']); ?></span><?php echo" : "; ?>
				<?php echo h($chat['Chat']['message']); ?>
				<?php echo "<br />" ?>
			</td>
		</tr>
		<?php endforeach; ?>
		</table>

	</div>
	
	<?php echo $this->Form->create('Chat', array(
   		'url' => array('controller' => 'chats', 'action' => 'add'))); ?>
	<?php echo $this->Form->input("message", array('type' => 'inline')); ?>
	<?php echo $this->Form->end("Envoyer"); ?>
</div>
