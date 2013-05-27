UPDATE core_template SET template_value = '<#assign averageScore = 0 />\r\n<#assign voteCount = 0 />\r\n<#if rating??>\r\n	<#assign averageScore = rating.averageScore />\r\n	<#assign voteCount = rating.voteCount />\r\n</#if>\r\n<#if show == \"all\" || show == \"vote\">\r\n	<p>\r\n		<img src=\"images/local/skin/plugins/extend/modules/rating/stars_${averageScore!}.png\" alt=\"Note\" title=\"Note\" />\r\n		(${voteCount!})\r\n	</p>\r\n</#if>\r\n<#if show == \"all\" || show == \"actionVote\">\r\n	<#if canVote>\r\n		<div> Votez : </div>\r\n		<div class=\"resource-vote-star-rating\" style=\"display:none;\">\r\n			<form name=\"resource_vote_form\" action=\"jsp/site/plugins/extend/modules/rating/DoVote.jsp?idExtendableResource=${idExtendableResource!}&extendableResourceType=${extendableResourceType}\" method=\"post\" >\r\n				<input type=\"hidden\" name=\"voteValue\" value=\"-2\" />\r\n				<input class=\"star-rating\" type=\"radio\" name=\"voteValue_${extendableResourceType}_${idExtendableResource!}\" value=\"-2\" />\r\n				<input class=\"star-rating\" type=\"radio\" name=\"voteValue_${extendableResourceType}_${idExtendableResource!}\" value=\"-1\" />\r\n				<input class=\"star-rating\" type=\"radio\" name=\"voteValue_${extendableResourceType}_${idExtendableResource!}\" value=\"1\" />\r\n				<input class=\"star-rating\" type=\"radio\" name=\"voteValue_${extendableResourceType}_${idExtendableResource!}\" value=\"2\" />\r\n			</form>\r\n		</div>\r\n		<div class=\"resource-vote-star-rating-javascript-disable\" >\r\n			<div class=\"star\">\r\n				<a href=\"jsp/site/plugins/extend/modules/rating/DoVote.jsp?idExtendableResource=${idExtendableResource!}&extendableResourceType=${extendableResourceType!}&voteValue=-2\" ></a>\r\n			</div >\r\n			<div class=\"star\">\r\n				<a href=\"jsp/site/plugins/extend/modules/rating/DoVote.jsp?idExtendableResource=${idExtendableResource!}&extendableResourceType=${extendableResourceType!}&voteValue=-1\" > </a>\r\n			</div>\r\n			<div class=\"star\">\r\n				<a href=\"jsp/site/plugins/extend/modules/rating/DoVote.jsp?idExtendableResource=${idExtendableResource!}&extendableResourceType=${extendableResourceType!}&voteValue=1\" > </a>\r\n			</div>\r\n			<div class=\"star\">\r\n				<a href=\"jsp/site/plugins/extend/modules/rating/DoVote.jsp?idExtendableResource=${idExtendableResource!}&extendableResourceType=${extendableResourceType!}&voteValue=2\" > </a>\r\n			</div>\r\n		</div>\r\n		<br/>\r\n	</#if>\r\n</#if>' WHERE template_name = 'extend_rating_vote_type_star';