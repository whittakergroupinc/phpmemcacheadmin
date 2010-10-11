    <div style="float:left;margin-top:18px;">
        <div class="sub-header corner full-size padding">Console</div>
        <div class="container corner full-size padding">
            <pre id="container" style="font-size:11px;overflow:auto;min-height:180px;max-height:500px;" class="full-size"></pre>
        </div>
        <div class="container corner full-size padding" style="text-align:right;">
            <input class="header" type="submit" onclick="javascript:executeClear('container')" value="Clear Console"/>
        </div>
        <br/>

        <div class="sub-header corner full-size padding">Execute predefined <span class="green">Command</span></div>
        <div class="container corner full-size padding">
            <table>
                <tr valign="top">
                    <td class="size-0 padding" style="padding-right:14px;">
                    <form action="commands.php" onsubmit="return false">
                    <div class="line" style="text-align:center;">
                        Execute command on one or all memcached servers<br/>
                        <hr/>
                    </div>
                    <div class="line">
                        <span class="left">Command</span>
                        <span class="right">
                            <select id="request_command" onchange="javascript:changeCommand(this);">
                                <option value="">Choose a Command</option>
                                <option value="get">Get</option>
                                <option value="set">Set</option>
                                <option value="delete">Delete</option>
                                <option value="flush_all">Flush All</option>
                            </select>
                        </span>
                    </div>
                    <div id="div_key" class="line" style="display:none;">
                        <span class="left">Key</span>
                        <span class="right">
                            <input id="request_key"/>
                        </span>
                    </div>
                    <div id="div_duration" class="line" style="display:none;">
                        <span class="left">Duration</span>
                        <span class="right">
                            <input id="request_duration"/>
                        </span>
                    </div>
                    <div id="div_data" class="line" style="display:none;">
                        <span class="left">Data</span>
                        <span class="right">
                            <textarea id="request_data" rows="2" cols="2"></textarea>
                        </span>
                    </div>
                    <div id="div_delay" class="line" style="display:none;">
                        <span class="left">Delay</span>
                        <span class="right">
                            <input id="request_delay"/>
                        </span>
                    </div>
                    <div class="line">
                        <span class="left">Server</span>
                        <span class="right">
                            <?php echo Library_HTML_Components::serverSelect('request_server'); ?>
                        </span>
                    </div>
                    <div class="line">
                        <span class="left">API</span>
                        <span class="right">
                            <?php echo Library_HTML::apiList($_ini->get('get_api'), 'request_api'); ?>
                        </span>
                    </div>
                    <div class="line" style="text-align:center;">
                        <hr/>
                        <input class="header" type="submit"
                            onclick="javascript:executeCommand('container');javascript:this.blur();" value="Execute Command"/>
                    </div>
                    </form>
                    </td>
                    <td class="padding" style="border-left:1px solid #ffffff;padding-left:14px;">
                        For more informations about memcached commands, see memcached protocol
                        <a href="http://github.com/memcached/memcached/blob/master/doc/protocol.txt" target="_blank"><span class="green">here</span></a>
                    <br/>
                    </td>
                </tr>
            </table>
        </div>
        <br/>

        <div class="sub-header corner full-size padding">Execute Telnet <span class="green">Commands</span></div>
        <div class="container corner padding">
            <table>
                <tr valign="top">
                    <td class="size-0 padding" style="padding-right:14px;">
                    <div class="line" style="text-align:center;">
                        Execute command on one or all memcached servers<br/>
                        <hr/>
                    </div>
                    <div class="line" style="text-align:center;">
                        <textarea name="script_data" class="size-0" rows="2" cols="2"></textarea>
                    </div>
                    <div class="line">
                        <span class="left">Server</span>
                        <span class="right">
                            <?php echo Library_HTML_Components::serverSelect('script_server'); ?>
                        </span>
                    </div>
                    <div class="line" style="text-align:center;">
                        <hr/>
                        <input class="header" type="submit" value="Execute Script"/>
                    </div>
                    </td>
                    <td class="padding" style="border-left:1px solid #ffffff;padding-left:14px;">
                    Texte
                    </td>
                </tr>
            </table>
        </div>
        <br/>

        <div class="sub-header corner full-size padding">Search <span class="green">Key</span></div>
        <div class="container corner padding">
            <table>
                <tr valign="top">
                    <td class="size-0 padding" style="padding-right:14px;">
                    <div class="line" style="text-align:center;">
                        Search for a key on one or all memcached servers<br/>
                        <hr/>
                    </div>
                    <div class="line">
                        <span class="left">Key</span>
                        <span class="right">
                            <input id="search_key" name="search_key"/>
                        </span>
                    </div>
                    <div class="line">
                        <span class="left">Server</span>
                        <span class="right">
                            <?php echo Library_HTML_Components::serverSelect('search_server'); ?>
                        </span>
                    </div>
                    <div class="line" style="text-align:center;">
                        <hr/>
                        <input class="header" type="submit"
                            onclick="javascript:searchKey('container');javascript:this.blur();" value="Search Key"/>
                    </div>
                    </td>
                    <td class="padding" style="border-left:1px solid #ffffff;padding-left:14px;">
                    You can use PCRE expression
                    </td>
                </tr>
            </table>
        </div>
    </div>