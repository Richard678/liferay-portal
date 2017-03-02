<%--
/**
 * Copyright (c) 2000-present Liferay, Inc. All rights reserved.
 *
 * This library is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 */
--%>

<%@ include file="/html/taglib/aui/icon/init.jsp" %>

<liferay-util:buffer var="iconContent">
	<c:choose>
		<c:when test='<%= "lexicon".equals(markupView) %>'>
			<svg class="lexicon-icon lexicon-icon-<%= image %>" role="img" title="<%= Validator.isNotNull(label) ? HtmlUtil.escapeAttribute(LanguageUtil.get(resourceBundle, label)) : StringPool.BLANK %>" <%= InlineUtil.buildDynamicAttributes(dynamicAttributes) %>>
				<use xlink:href="<%= Validator.isNotNull(src) ? src : themeDisplay.getPathThemeImages() + "/lexicon/icons.svg" %>#<%= image %>" />
			</svg>
		</c:when>
		<c:otherwise>
			<i class="icon-<%= image %>"></i>
		</c:otherwise>
	</c:choose>

	<c:if test="<%= Validator.isNotNull(label) %>">
		<span class="taglib-icon-label">
			<liferay-ui:message key="<%= label %>" />
		</span>
	</c:if>
</liferay-util:buffer>

<c:choose>
	<c:when test="<%= Validator.isNotNull(url) %>">
		<aui:a cssClass="<%= cssClass %>" data="<%= data %>" href="<%= url %>" id="<%= id %>" target="<%= target %>">
			<%= iconContent %>
		</aui:a>
	</c:when>
	<c:otherwise>
		<span class="<%= cssClass %>" <%= AUIUtil.buildData(data) %> id="<%= id %>">
			<%= iconContent %>
		</span>
	</c:otherwise>
</c:choose>