<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/commons/include.inc.jsp"%>
<%--
	模块：CRM-客户管理-联系人信息-添加
--%>

<div style="width: 800px; margin: 0 auto;">

	<form action="linkman/add.do" method="post" onsubmit="return validateSubmitForm(this)">
		<table class="table table-bordered ">
			<tr>
				<th width="100px">
					姓名：
				</th>
				<td>
					<input type="text" name="liName" class="easyui-validatebox" required="true" validType="minlength[1]"  maxlength="30"  />
				</td>
				<th width="100px">
					性别：
				</th>
				<td>
					<select name="liSex" style="width: 100px;">
						<option value="男">男</option>
						<option value="女">女</option>
					</select>
				</td>
			</tr>
			<tr>
				<th>
					类型：
				</th>
				<td>
					<select name="liType" style="width: 100px;" >
						<option value="">
							--请选择--
						</option>
						<my:outOptions type="502" />
						
					</select>
				</td>
				
				<th>
					种类：
				</th>
				<td>
					<select name="liSpecies" style="width: 100px;" >
						<option value="">
							--请选择--
						</option>
						<my:outOptions type="501" />
					</select>

				</td>
			</tr>
			<tr>
				<th>
					客户名称：
				</th>
				<td>
					<a href="info/lookUpPage.do" lookupGroup="customer" title="客户查询">
						<input type="text" readonly="readonly" toName="customer.name" class="easyui-validatebox" required="true" /> </a>
					<input type="hidden"  name="customerId" toName="customer.id">
					<a class="easyui-linkbutton clearLookup" icon="icon-cancel"
						plain="true" href="javascript:;" clearLookup="customer" title="清空"></a>
			   </td>
				<th>
					负责业务：
				</th>
				<td>
					<input type="text" name="liBusiness"  maxlength="30"  />
				</td>
			</tr>
			<tr>
				<th>
					部门：
				</th>
				<td>
					<input type="text" name="liDept"  maxlength="30"  />
				</td>
				<th>
					职务：
				</th>
				<td>
					<input type="text" name="liPost"  maxlength="30"  />
				</td>
			</tr>
			<tr>
				<th>
					电话：
				</th>
				<td>
					<input type="text" name="liTelephone"  maxlength="15"  />
				</td>
			
				<th>
					称谓：
				</th>
				<td>
					<input type="text" name="liAppellation"  maxlength="30"  />
				</td>
			</tr>
			<tr>
				<th>
					邮箱：
				</th>
				<td>
					<input type="text" name="liEmail" size="50" />
				</td>

				<th>
					传真：
				</th>
				<td>
					<input type="text" name="liFax" size="50" />
				</td>
			</tr>
			<tr>
				<th>
					其他联系方式：
				</th>
				<td>
					<input type="text" name="liMobilePhone"   maxlength="15"  />

				</td>

				<th>
					QQ/MSN：
				</th>
				<td>
					<input type="text" name="liMsnQq" size="50" />
				</td>
			</tr>
			<tr>
				<th>
					出生日期：
				</th>
				<td>
					<input type="text" required="true" class="easyui-validatebox span2"  readonly="readonly"  onFocus="WdatePicker()" name="liBirthday"  />
				</td>

				<th>
					邮编：
				</th>
				<td>
					<input type="text" name="liZipCode" size="50" />

				</td>
			</tr>
			<tr>
				<th>
					家庭住址：
				</th>
				<td>
					<input type="text" name="liHomeaddress" size="50" />

				</td>

				<th>
					家庭电话：
				</th>
				<td>
					<input type="text" name="liHomephone" size="15" />
				</td>
			</tr>
			<tr>
				<th>
					备注：
				</th>
				<td colspan="3">
					<textarea name="remark" rows="6" cols="100" style="width: 608px"></textarea>
				</td>
			</tr>


			<input type="hidden" name="datagridId" value="${param.rel }_datagrid" />
			<input type="hidden" name="currentCallback" value="close" />

			<tr>
				<th>
				</th>
				<td>
					<div style="margin-top: 10px; margin-bottom: 10px;">
						<button type="submit" class="btn btn-primary">
							保存
						</button>
						&nbsp;&nbsp;&nbsp;&nbsp;
						<button type="button" class="btn clear">
							清空
						</button>
					</div>
				</td>
			</tr>


		</table>
	</form>
</div>
