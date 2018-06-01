<%@ Control Language="C#" Inherits="EasySite.API.StyleComponent" %>



			<div id="sx-search" class="sx-so">
				<div class="cls sx-si">
					<form action="<%=DefaultSearchPage%>" method="get">
						<fieldset>
							<legend>Search our Site</legend>
							<div class="fields">
								<div class="element keywords">
									<div class="question"><label class="label" for="q">Keywords</label></div>
									<div class="answer"><input id="q" class="textbox" type="text" name="q" value="Enter keywords..." onfocus="if (this.value=='Enter keywords...') { this.value=''; };return true;" /></div>
								</div>
							</div>
							<div class="buttons"><input class="button" type="submit" value="                Find                      " /></div>
						</fieldset>
					</form>
				</div>
			</div>

