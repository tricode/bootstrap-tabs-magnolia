<div>
    [#if cmsfn.children(content)?has_content]
        <!-- Nav tabs -->
        <ul class="nav nav-tabs" role="tablist">
            [#list cmsfn.children(content) as tab]
                <li role="presentation"[#if tab?counter == 1] class="active"[/#if]>
                    <a href="#${tab.id}" aria-controls="${tab.id}" role="tab" data-toggle="tab">${tab.title}</a>
                </li>
            [/#list]
        </ul>

        <!-- Tab panes -->
        <div class="tab-content">
            [#list cmsfn.children(content) as tab]
                <div role="tabpanel" class="tab-pane[#if content.fadeEffect?has_content && content.fadeEffect] fade[#if tab?counter == 1] in[/#if][/#if][#if tab?counter == 1] active[/#if]" id="${tab.id}">
                    ${cmsfn.decode(tab).textContent!""}
                </div>
            [/#list]
        </div>
    [#else]
        <p>No tabs have been defined!</p>
    [/#if]
</div>