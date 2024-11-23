<div class="acp-page-container">
	<!-- IMPORT admin/partials/settings/header.tpl -->
    <div class="row m-0">
        <div id="spy-container" class="col-12 col-md-8 px-0 mb-4" tabindex="0">
            <form class="form markdown-settings">
                <div class="mb-4">
                    <h5 class="fw-bold tracking-tight settings-header">解析器</h5>

                    <div class="mb-3 form-check form-switch">
                        <input type="checkbox" class="form-check-input" name="xhtmlOut" id="xhtmlOut" />
                        <label class="form-check-label" for="xhtmlOut">
                            使用'/'关闭单标签（如：<code>&lt;br /&gt;</code>）
                        </label>
                    </div>
                    <div class="mb-3 form-check form-switch">
                        <input type="checkbox" class="form-check-input" name="breaks" id="breaks" />
                        <label class="form-check-label" for="breaks">
                            将换行符视为单行断行
                        </label>
                    </div>
                    <div class="mb-3 form-check form-switch">
                        <input type="checkbox" class="form-check-input" name="typographer" id="typographer" />
                        <label class="form-check-label" for="typographer">
                            启用智能标点和其他转换（例如：<code>(c)</code> → <code>&copy;</code>）
                        </label>
                    </div>
                    <div class="mb-3 form-check form-switch">
                        <input type="checkbox" class="form-check-input" name="multimdTables" id="multimdTables" />
                        <label class="form-check-label" for="multimdTables">
                            允许高级表格语法
                        </label>
                    </div>

                    <div class="mb-3 form-check form-switch">
                        <input type="checkbox" class="form-check-input" name="linkify" id="linkify" />
                        <label class="form-check-label" for="linkify">
                            自动将类似URL的文本转换为链接
                        </label>
                    </div>
                    <div class="mb-3 form-check form-switch">
                        <input type="checkbox" class="form-check-input" name="allowRTLO" id="allowRTLO" />
                        <label class="form-check-label" for="allowRTLO">
                            允许在链接内容中使用RTL覆盖Unicode
                        </label>
                    </div>
                    <div class="mb-3 form-check form-switch">
                        <input type="checkbox" class="form-check-input" name="checkboxes" id="checkboxes" />
                        <label class="form-check-label" for="checkboxes">
                            解释 <code>[ ]</code> 和 <code>[x]</code> 为复选框
                        </label>
                    </div>
                </div>

                <div class="mb-4">
                    <h5 class="fw-bold tracking-tight settings-header">外部链接</h5>

                    <div class="mb-3 form-check form-switch">
                        <input type="checkbox" class="form-check-input" name="externalMark" id="externalMark" />
                        <label class="form-check-label" for="externalMark">
                            在所有外部链接后添加一个 <i class="fa fa-external-link small"></i>
                        </label>
                    </div>
                    <div class="mb-3 form-check form-switch">
                        <input type="checkbox" class="form-check-input" name="externalBlank" id="externalBlank" />
                        <label class="form-check-label" for="externalBlank">
                            在新标签页/窗口中打开外部链接
                        </label>
                    </div>
                    <div class="mb-3 form-check form-switch">
                        <input type="checkbox" class="form-check-input" name="nofollow" id="nofollow" />
                        <label class="form-check-label" for="nofollow">
                            告诉网络爬虫不要跟踪外部链接
                        </label>
                    </div>
                </div>

                <div class="mb-4">
                    <h5 class="fw-bold tracking-tight settings-header">代码格式化</h5>

                    <div class="mb-3 form-check form-switch">
                        <input type="checkbox" class="form-check-input" name="highlight" id="highlight" />
                        <label class="form-check-label" for="highlight">
                            自动检测并高亮代码块
                        </label>
                    </div>

                    <div class="mb-3">
                        <label class="form-label" for="highlightTheme">为高亮代码块使用此主题</label>
                        <select class="form-select" name="highlightTheme" id="highlightTheme">
                            {{{ each themes }}}
                            <option value="{@value}">{@value}</option>
                            {{{ end }}}
                        </select>
                    </div>

                    <div class="mb-3">
                        <label class="form-label" for="defaultHighlightLanguage">
                            默认语言用于未定义语言的代码块
                        </label>
                        <input class="form-control" placeholder="例如：js" type="text" name="defaultHighlightLanguage" id="defaultHighlightLanguage" />
                        <p class="form-text">留空则使用自动语言检测</p>
                    </div>

                    <div class="mb-3">
                        <label class="form-label" for="langPrefix">
                            代码块的前缀
                        </label>
                        <input class="form-control" placeholder="language-" type="text" name="langPrefix" id="langPrefix" />
                    </div>

                    <div class="mb-3">
                        <label class="form-label" for="hljsLanguages">应用语法高亮到以下语言</label>
                        <select class="form-select" multiple="true" name="hljsLanguages" id="hljsLanguages" size="20">
                            <optgroup label="预定义列表">
                                <option value="all">所有支持的语言（文件大小最大）</option>
                                <option value="common" selected>常用语言（较好的折衷方案）</option>
                            </optgroup>
                            <optgroup label="单独语言">
                                {{{ each hljsLanguages }}}
                                <option value="{@value}">{@value}</option>
                                {{{ end }}}
                            </optgroup>
                        </select>
                        <p class="form-text">
                            您可以使用 <code>Ctrl</code> 和 <code>Shift</code> 键来多选或范围选择项目。<em>（默认："常用语言"）</em>
                        </p>
                        <p class="form-text">
                            您可以混合搭配上述任何项目，不过选择了“全部”会包含所有语言。
                        </p>
                    </div>

                    <div class="mb-3">
                        <label class="form-label" for="highlightLinesLanguageList">
                            为以下语言启用行号
                        </label>
                        <select class="form-select" multiple="true" name="highlightLinesLanguageList" id="highlightLinesLanguageList" size="20">
                            {{{ each hljsLanguages }}}
                            <option value="{@value}">{@value}</option>
                            {{{ end }}}
                        </select>
                        <p class="form-text">
                            您可以使用 <code>Ctrl</code> 和 <code>Shift</code> 键来多选或范围选择项目。
                        </p>
                    </div>
                </div>

                <div class="mb-4">
                    <h5 class="fw-bold tracking-tight settings-header">HTML 清洗</h5>

                    <div class="mb-3 form-check form-switch">
                        <input type="checkbox" class="form-check-input" name="html" id="html" />
                        <label class="form-check-label" for="html">
                            允许HTML
                        </label>
                    </div>
                    <div class="alert alert-warning">
                        <strong><i class="fa fa-info-circle"></i> 历史记录</strong>
                        <p>
                            自动HTML清洗是确保用户不会运行任意JavaScript或修改页面中不应被修改的部分的重要组成部分。
                        </p>
                        <p>
                            这曾经是防御来自用户生成内容中的恶意HTML的唯一防线。然而，NodeBB现在自带内置的HTML清洗器，因此如果需要的话可以禁用这个功能。
                        </p>
                    </div>
                </div>
            </form>
        </div>

		<!-- IMPORT admin/partials/settings/toc.tpl -->
	</div>
</div>
