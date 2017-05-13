<template>
    <div id="app" class="container-fluid" v-loading.body="loading" :element-loading-text="loadingText">
        <div id="login" v-if="curPage=='loginPage'">
            <el-row>
                <el-col :span="8" :offset="8">
                    <br>
                    <img src="../assets/images/hadoop.png">
                    <el-tabs v-model="activeTab">
                        <el-tab-pane label="登录" name="login">
                            <el-form :model="loginForm" label-width="80px">
                                <el-form-item label="用户名">
                                    <el-input v-model="loginForm.username"></el-input>
                                </el-form-item>
                                <el-form-item label="密码">
                                    <el-input v-model="loginForm.password" type="password"></el-input>
                                </el-form-item>
                                <el-form-item>
                                    <el-button type="primary" @click="login">登录</el-button>
                                    <el-button>忘记密码？</el-button>
                                </el-form-item>
                            </el-form>
                        </el-tab-pane>
                        <el-tab-pane label="注册" name="register">
                            <el-form :model="regForm" label-width="80px">
                                <el-form-item label="用户名">
                                    <el-input v-model="regForm.username"></el-input>
                                </el-form-item>
                                <el-form-item label="昵称">
                                    <el-input v-model="regForm.nickname"></el-input>
                                </el-form-item>
                                <el-form-item label="密码">
                                    <el-input v-model="regForm.password"></el-input>
                                </el-form-item>
                                <el-form-item>
                                    <el-button type="primary" @click="reg">马上注册</el-button>
                                    <el-button>取消</el-button>
                                </el-form-item>
                            </el-form>
                        </el-tab-pane>
                    </el-tabs>
                </el-col>
            </el-row>
        </div>
        <div id="user" v-if="curPage=='userPage'">

            <el-tabs v-model="activeTab" type="border-card" @tab-click="handleTabClick">
                <el-tab-pane label="我的文件" name="user.file">
                    <div class="row" v-loading.body="operating" :element-loading-text="operatingText">
                        <div class="col-md-3">
                            <el-upload
                                    drag
                                    :action="getUploadUrl()"
                                    :before-upload="beforeUpload"
                                    :on-success="afterSuccess"
                                    :on-error="afterError"
                                    multiple>
                                <i class="el-icon-upload"></i>
                                <div class="el-upload__text">将文件拖到此处，或<em>点击上传</em></div>
                                <div class="el-upload__tip" slot="tip">只支持上传下列文件，上传文件夹请先压缩</div>
                            </el-upload>
                            <img style="display: none" src="../assets/icons/dir1.ico" class="pull-left" width="25px">
                            <img style="display: none" src="../assets/icons/dir2.ico" class="pull-left" width="25px">
                            <img src="../assets/icons/html.ico" class="pull-left" width="25px">
                            <img src="../assets/icons/wmv.ico" class="pull-left" width="25px">
                            <img src="../assets/icons/jpeg.ico" class="pull-left" width="25px">
                            <img src="../assets/icons/png.ico" class="pull-left" width="25px">
                            <img src="../assets/icons/gif.ico" class="pull-left" width="25px">
                            <img src="../assets/icons/pdf.ico" class="pull-left" width="25px">
                            <img src="../assets/icons/docx.ico" class="pull-left" width="25px">
                            <img src="../assets/icons/xlsx.ico" class="pull-left" width="25px">
                            <img src="../assets/icons/pptx.ico" class="pull-left" width="25px">
                            <img src="../assets/icons/mp3.ico" class="pull-left" width="25px">
                            <img src="../assets/icons/avi.ico" class="pull-left" width="25px">
                            <img src="../assets/icons/zip.ico" class="pull-left" width="25px">
                            <img src="../assets/icons/txt.ico" class="pull-left" width="25px">
                        </div>
                        <div class="col-md-9">
                            <ol class="breadcrumb">
                                <li>
                                    <button type="button" class="btn btn-success btn-sm" @click="mkdir">
                                        <span class="glyphicon glyphicon-plus"></span>
                                        <span>新建文件夹</span>
                                    </button>
                                    <button type="button" class="btn btn-default btn-sm" @click="backward">
                                        <span class="glyphicon glyphicon-arrow-left"></span>
                                    </button>
                                    <button type="button" class="btn btn-default btn-sm">
                                        <span class="glyphicon glyphicon-arrow-right"></span>
                                    </button>
                                    <button type="button" class="btn btn-primary btn-sm" @click="refresh">
                                        <span class="glyphicon glyphicon-refresh"></span>
                                    </button>
                                    <button type="button" class="btn btn-primary btn-sm" @click="home">
                                        <span class="glyphicon glyphicon-home"></span>
                                    </button>
                                    <button type="button" class="btn btn-info btn-sm">
                                        <span>当前路径</span>
                                        <span class="glyphicon glyphicon-hand-right"></span>
                                    </button>
                                </li>
                                <template v-for="(item, index) in curPath">
                                    <li v-if="index+1==curPath.length" class="active">
                                        {{item}}
                                    </li>
                                    <li v-else>
                                        <a href="#">{{item}}</a></li>
                                    </li>
                                </template>
                            </ol>

                            <div class="row" v-loading.body="listing" element-loading-text="正在加载文件列表...">

                                <div v-for="(file,index) in files" class="col-md-2" style="margin-bottom: 5px;">
                                    <el-tooltip effect="light" placement="top">
                                        <div slot="content">
                                            <div>
                                                <span>名称：</span>
                                                <span>{{file.path.name}}</span>
                                            </div>
                                            <div>
                                                <span>大小：</span>
                                                <span>{{file.length}}</span>
                                            </div>
                                            <div>
                                                <span>备份：</span>
                                                <span>{{file.block_replication}}</span>
                                            </div>
                                            <div>
                                                <span>类型：</span>
                                                <span>{{file.fileType}}</span>
                                            </div>
                                            </form>
                                        </div>
                                        <el-button style="padding: 0;border: 0;margin: 0;">
                                            <div class="thumbnail file" style="margin-bottom: 0px;"
                                                 @click="singleClick(file)" @dblclick="doubleClick(file)">
                                                <img :src="'/out/icons/'+(file.fileType||'dir2')+'.ico'">
                                                <div class="caption" style="padding: 0">
                                                    <h5><a href="#">{{file.path.name}}</a></h5>
                                                    <p>
                                                        <a href="#" class="btn btn-success btn-xs"
                                                           @click="download(file)">下载</a>
                                                        <a href="#" class="btn btn-danger btn-xs"
                                                           @click="del(file)">删除</a>
                                                    </p>
                                                </div>
                                            </div>
                                        </el-button>
                                    </el-tooltip>
                                </div>

                            </div>

                        </div>
                    </div>
                </el-tab-pane>
                <el-tab-pane label="我的资料" name="user.profile">
                    <div class="row">
                        <div class="col-md-6 col-md-offset-3">
                            <div class="row">
                                <div class="col-md-8 col-md-offset-2">
                                    <img src="../assets/images/hadoop.png">
                                </div>
                            </div>
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-md-4 col-md-offset-2">
                            <form>
                                <div class="form-group">
                                    <label>昵称</label>
                                    <input class="form-control" v-model="user.nickname">
                                </div>
                                <div class="form-group">
                                    <label>用户名</label>
                                    <input class="form-control" disabled v-model="user.username">
                                </div>
                                <div class="form-group">
                                    <label>注册时间</label>
                                    <input class="form-control" disabled v-model="user.regDate">
                                </div>
                                <div class="form-group">
                                    <label>账号状态</label>
                                    <input class="form-control" disabled v-model="user.status">
                                </div>
                            </form>
                        </div>
                        <div class="col-md-4">
                            <form>
                                <div class="form-group">
                                    <label>角色</label>
                                    <input class="form-control" disabled v-model="user.role">
                                </div>
                                <div class="form-group">
                                    <label>密码</label>
                                    <input class="form-control" v-model="user.password">
                                </div>
                                <div class="form-group">
                                    <label>上次登录时间</label>
                                    <input class="form-control" disabled v-model="user.lastLoginDate">
                                </div>
                                <div class="form-group">
                                    <label>确认修改？</label>
                                    <button class="form-control btn btn-primary">提交</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </el-tab-pane>
                <el-tab-pane label="操作日志" name="user.log">
                    <el-table :data="logTable.rows" border style="width: 100%">
                        <el-table-column prop="id" label="操作ID" style="width: 15%">
                        </el-table-column>
                        <el-table-column prop="username" label="操作用户" style="width: 15%">
                        </el-table-column>
                        <el-table-column prop="userId" label="用户id" style="width: 15%">
                        </el-table-column>
                        <el-table-column prop="opType" label="操作类型" style="width: 15%">
                        </el-table-column>
                        <el-table-column prop="opPath" label="执行路径" style="width: 15%">
                        </el-table-column>
                        <el-table-column prop="opTime" label="执行时间" style="width: 15%">
                        </el-table-column>
                        <el-table-column prop="opResult" label="执行结果" style="width: 10%">
                        </el-table-column>
                    </el-table>
                    <el-pagination
                            @size-change="handleLogPage"
                            @current-change="handleLogPage"
                            :current-page="logTable.curPage"
                            :page-size="logTable.pageSize"
                            :total="logTable.totalSize">
                        layout="total, prev, pager, next"
                    </el-pagination>
                </el-tab-pane>
                <el-tab-pane label="退出系统" name="user.logout">
                </el-tab-pane>
            </el-tabs>

        </div>
        <div id=" admin" v-if="curPage=='adminPage'">
            <!-- <img src="../assets/images/hadoop.png" class="img-responsive" style="height:80px;">-->
            <!--  <div class="page-header">
                  <h3>Example page header <small>Subtext for header</small></h3>
              </div>-->
            <el-tabs v-model="activeTab" type="border-card" @tab-click="handleTabClick">
                <el-tab-pane label="用户管理" name="admin.user">
                    <el-table :data="userTable.rows" border style="width: 100%">
                        <el-table-column prop="id" label="用户ID" style="width: 15%">
                        </el-table-column>
                        <el-table-column prop="username" label="登录名" style="width: 15%">
                        </el-table-column>
                        <el-table-column prop="nickname" label="用户昵称" style="width: 15%">
                        </el-table-column>
                        <el-table-column prop="password" label="密码" style="width: 15%">
                        </el-table-column>
                        <el-table-column prop="regDate" label="注册时间" style="width: 15%">
                        </el-table-column>
                        <el-table-column prop="lastLoginDate" label="上次登录时间" style="width: 15%">
                        </el-table-column>
                        <el-table-column prop="status" label="账号状态" style="width: 10%">
                        </el-table-column>
                    </el-table>
                    <el-pagination
                            @size-change="handleUserPage"
                            @current-change="handleUserPage"
                            :current-page="userTable.curPage"
                            :page-size="userTable.pageSize"
                            :total="userTable.totalSize">
                        layout="total, prev, pager, next"
                    </el-pagination>
                </el-tab-pane>
                <el-tab-pane label="日志管理" name="admin.log">
                    <el-table :data="logTable.rows" border style="width: 100%">
                        <el-table-column prop="id" label="操作ID" style="width: 15%">
                        </el-table-column>
                        <el-table-column prop="username" label="操作用户" style="width: 15%">
                        </el-table-column>
                        <el-table-column prop="userId" label="用户id" style="width: 15%">
                        </el-table-column>
                        <el-table-column prop="opType" label="操作类型" style="width: 15%">
                        </el-table-column>
                        <el-table-column prop="opPath" label="执行路径" style="width: 15%">
                        </el-table-column>
                        <el-table-column prop="opTime" label="执行时间" style="width: 15%">
                        </el-table-column>
                        <el-table-column prop="opResult" label="执行结果" style="width: 10%">
                        </el-table-column>
                    </el-table>
                    <el-pagination
                            @size-change="handleLogPage"
                            @current-change="handleLogPage"
                            :current-page="logTable.curPage"
                            :page-size="logTable.pageSize"
                            :total="logTable.totalSize">
                        layout="total, prev, pager, next"
                    </el-pagination>
                </el-tab-pane>
                <el-tab-pane label="文件管理" name="admin.file">
                    <div class="row" v-loading.body="operating" :element-loading-text="operatingText">
                        <div class="col-md-3">
                            <el-upload
                                    drag
                                    :action="getUploadUrl()"
                                    :before-upload="beforeUpload"
                                    :on-success="afterSuccess"
                                    :on-error="afterError"
                                    multiple>
                                <i class="el-icon-upload"></i>
                                <div class="el-upload__text">将文件拖到此处，或<em>点击上传</em></div>
                                <div class="el-upload__tip" slot="tip">只支持上传下列文件，上传文件夹请先压缩</div>
                            </el-upload>
                            <img style="display: none" src="../assets/icons/dir1.ico" class="pull-left" width="25px">
                            <img style="display: none" src="../assets/icons/dir2.ico" class="pull-left" width="25px">
                            <img src="../assets/icons/html.ico" class="pull-left" width="25px">
                            <img src="../assets/icons/wmv.ico" class="pull-left" width="25px">
                            <img src="../assets/icons/jpeg.ico" class="pull-left" width="25px">
                            <img src="../assets/icons/png.ico" class="pull-left" width="25px">
                            <img src="../assets/icons/gif.ico" class="pull-left" width="25px">
                            <img src="../assets/icons/pdf.ico" class="pull-left" width="25px">
                            <img src="../assets/icons/docx.ico" class="pull-left" width="25px">
                            <img src="../assets/icons/xlsx.ico" class="pull-left" width="25px">
                            <img src="../assets/icons/pptx.ico" class="pull-left" width="25px">
                            <img src="../assets/icons/mp3.ico" class="pull-left" width="25px">
                            <img src="../assets/icons/avi.ico" class="pull-left" width="25px">
                            <img src="../assets/icons/zip.ico" class="pull-left" width="25px">
                            <img src="../assets/icons/txt.ico" class="pull-left" width="25px">
                        </div>
                        <div class="col-md-9">
                            <ol class="breadcrumb">
                                <li>
                                    <button type="button" class="btn btn-success btn-sm" @click="mkdir">
                                        <span class="glyphicon glyphicon-plus"></span>
                                        <span>新建文件夹</span>
                                    </button>
                                    <button type="button" class="btn btn-default btn-sm" @click="backward">
                                        <span class="glyphicon glyphicon-arrow-left"></span>
                                    </button>
                                    <button type="button" class="btn btn-default btn-sm">
                                        <span class="glyphicon glyphicon-arrow-right"></span>
                                    </button>
                                    <button type="button" class="btn btn-primary btn-sm" @click="refresh">
                                        <span class="glyphicon glyphicon-refresh"></span>
                                    </button>
                                    <button type="button" class="btn btn-primary btn-sm" @click="home">
                                        <span class="glyphicon glyphicon-home"></span>
                                    </button>
                                    <button type="button" class="btn btn-info btn-sm">
                                        <span>当前路径</span>
                                        <span class="glyphicon glyphicon-hand-right"></span>
                                    </button>
                                </li>
                                <template v-for="(item, index) in curPath">
                                    <li v-if="index+1==curPath.length" class="active">
                                        {{item}}
                                    </li>
                                    <li v-else>
                                        <a href="#">{{item}}</a></li>
                                    </li>
                                </template>
                            </ol>

                            <div class="row" v-loading.body="listing" element-loading-text="正在加载文件列表...">

                                <div v-for="(file,index) in files" class="col-md-2" style="margin-bottom: 5px;">
                                    <el-tooltip effect="light" placement="top">
                                        <div slot="content">
                                            <div>
                                                <span>名称：</span>
                                                <span>{{file.path.name}}</span>
                                            </div>
                                            <div>
                                                <span>大小：</span>
                                                <span>{{file.length}}</span>
                                            </div>
                                            <div>
                                                <span>备份：</span>
                                                <span>{{file.block_replication}}</span>
                                            </div>
                                            <div>
                                                <span>类型：</span>
                                                <span>{{file.fileType}}</span>
                                            </div>
                                            </form>
                                        </div>
                                        <el-button style="padding: 0;border: 0;margin: 0;">
                                            <div class="thumbnail file" style="margin-bottom: 0px;"
                                                 @click="singleClick(file)" @dblclick="doubleClick(file)">
                                                <img :src="'/out/icons/'+(file.fileType||'dir2')+'.ico'">
                                                <div class="caption" style="padding: 0">
                                                    <h5><a href="#">{{file.path.name}}</a></h5>
                                                    <p>
                                                        <a href="#" class="btn btn-success btn-xs"
                                                           @click="download(file)">下载</a>
                                                        <a href="#" class="btn btn-danger btn-xs"
                                                           @click="del(file)">删除</a>
                                                    </p>
                                                </div>
                                            </div>
                                        </el-button>
                                    </el-tooltip>
                                </div>

                            </div>

                        </div>
                    </div>
                </el-tab-pane>
                <el-tab-pane label="系统管理" name="admin.system">
                    <iframe width="100%" height="580px" src="http://172.17.10.1:50070/"/>
                </el-tab-pane>
                <el-tab-pane label="退出系统" name="user.logout">
                </el-tab-pane>
            </el-tabs>

        </div>
        <div id="common">
            <vodal :show="imageModal.show" animation="rotate" @hide="imageModal.show = false"
                   v-loading.body="imageModal.loading" element-loading-text="正在加载图片...">
                <img :src="imageModal.url" class="img-responsive">
            </vodal>
            <vodal :show="textModal.show" animation="rotate" @hide="textModal.show = false"
                   v-loading.body="textModal.loading" element-loading-text="正在加载文本...">
                <p>{{textModal.text}}</p>
            </vodal>
            <vodal :width="pdfModal.width" :height="pdfModal.height" :show="pdfModal.show"
                   animation="rotate" @hide="pdfModal.show = false"
                   v-loading.body="pdfModal.loading" element-loading-text="正在加载pdf...">
                <pdf :src="pdfModal.url" @loaded="onPdfLoaded()"></pdf>
            </vodal>
        </div>
        <div id="info">
            <nav class="navbar navbar-default navbar-fixed-bottom">
                <div class="row" style="margin-top: 8px;">
                    <div class="col-md-4 col-md-offset-4">
                        <h5>广东工业大学 计算机学院 13级计算机科学与技术5班 @何祖兴</h5>
                    </div>
                </div>
            </nav>
        </div>
    </div>
</template>

<script>

    export default {
        data() {
            return {
                /*global*/
                curPage: 'loginPage',
                loading: true,
                loadingText: '',
                activeTab: "login",
                /*loginOrReg*/
                loginForm: {},
                regForm: {},
                /*user*/
                user: {username: 'hozouhing', nickname: 'hozouhing', role: '普通用户'},
                curPath: [],
                listing: false,
                operating: false,
                operatingText: '',
                /*admin*/
                userTable: {rows: [], curPage: 1, pageSize: 10, totalSize: 0, url: "/user/page.do"},
                logTable: {rows: [], curPage: 1, pageSize: 10, totalSize: 0, url: "/oplog/page.do"},
                /**common*/
                flies: [],
                imageModal: {show: false, loading: false, url: null},
                pdfModal: {show: false, loading: false, url: null, width: 800, height: 700},
                textModal: {show: false, loading: false, text: null},
            }
        },
        watch: {},
        created: function () {
            var context = this;
            /*$.ajax({
             type: "post",
             url: urlPrefix + '/user/status.do',
             cache: "false",
             data: {},
             dataType: "json",
             success: function (result) {
             context.loading = false;
             if (!result.success) {
             context.curPage = "loginPage";
             context.$message({
             type: 'info',
             message: "请先的登录！"
             });
             } else {
             context.user = result.data;
             if (context.user.role == '管理员') {
             context.curPage = "adminPage";
             context.initAdminPage();
             } else {
             context.curPage = "userPage";
             context.initUserPage();
             }
             }
             }
             });*/
            context.loading = false;
            context.curPage = "userPage";
            context.initUserPage();
            /* context.curPage = "adminPage";
             context.initAdminPage();*/
        },
        methods: {
            login() {
                this.loading = true;
                var ajaxData = {
                    username: this.loginForm.username,
                    password: this.loginForm.password
                };
                var context = this;
                $.ajax({
                    type: "post",
                    url: urlPrefix + '/user/login.do',
                    cache: "false",
                    data: ajaxData,
                    dataType: "json",
                    success: function (result) {
                        context.loading = false;
                        context.$message({
                            type: 'info',
                            message: result.message
                        });
                        if (result.success) {
                            context.user = result.data;
                            if (context.user.role == '管理员') {
                                context.curPage = "adminPage";
                                context.initAdminPage();
                            } else {
                                context.curPage = "userPage";
                                context.initUserPage();
                            }
                        }
                    }
                });
            },
            reg(){
                this.loadingText = '正在注册...';
                this.loading = true;
                var ajaxData = {
                    nickname: this.regForm.nickname,
                    username: this.regForm.username,
                    password: this.regForm.password
                };
                var context = this;
                $.ajax({
                    type: "post",
                    url: urlPrefix + '/user/reg.do',
                    cache: "false",
                    data: ajaxData,
                    dataType: "json",
                    success: function (result) {
                        context.loading = false;
                        context.$message({
                            type: 'info',
                            message: result.message
                        });
                    }
                });
            },
            initUserPage(){
                this.activeTab = 'user.file';
                this.curPath = [];
                this.curPath.push(this.user.username);
                this.list();
            },
            refresh(){
                this.list();
            },
            list(){
                this.listing = true;
                var context = this;
                $.ajax({
                    type: "post",
                    url: urlPrefix + '/hdfs/list.do',
                    cache: "false",
                    data: {path: "/" + context.curPath.join("/")},
                    dataType: "json",
                    success: function (result) {
                        context.listing = false;
                        context.files = result.data;
                    }
                });
            },
            mkdir(){
                var context = this;
                this.$prompt('请输入文件夹名称', '提示', {
                    confirmButtonText: '确定',
                    cancelButtonText: '取消',
                }).then(({value}) => {
                    context.operatingText = '正在新建文件夹...';
                    context.operating = true;
                    $.ajax({
                        type: "post",
                        url: urlPrefix + '/hdfs/mkdir.do',
                        cache: "false",
                        data: {path: "/" + context.curPath.join("/") + "/" + value},
                        dataType: "json",
                        success: function (result) {
                            if (result.success) {
                                context.operating = false;
                                context.$message({
                                    type: 'success',
                                    message: '新建文件夹成功！'
                                });
                                context.list();
                            } else {
                                context.operating = false;
                                context.$message({
                                    type: 'info',
                                    message: '新建文件夹失败！'
                                });
                            }
                        }
                    });
                }).catch(() => {
                    this.$message({
                        type: 'info',
                        message: '已取消新建文件夹！'
                    });
                });
            },
            del(file){
                this.operatingText = '正在删除...'
                this.operating = true;
                var context = this;
                $.ajax({
                    type: "post",
                    url: urlPrefix + '/hdfs/delete.do',
                    cache: "false",
                    data: {path: "/" + context.curPath.join("/") + "/" + file.path.name},
                    dataType: "json",
                    success: function (result) {
                        context.operating = false;
                        context.files = result.data;
                        if (result.success) {
                            context.$message({
                                type: 'success',
                                message: '删除成功！'
                            });
                            context.list();
                        } else {
                            context.$message({
                                type: 'info',
                                message: '删除失败！'
                            });
                        }
                    }
                });
            },
            download(file){
                this.operatingText = '正在准备下载...';
                this.operating = true;
                var downloadUrl = window.urlPrefix + "/hdfs/download.do?path=/" + this.curPath.join("/") + "/" + file.path.name;
                window.location.href = downloadUrl;
                this.operating = false;
            },
            getUploadUrl(){
                return window.urlPrefix + "/hdfs/upload.do?path=/" + this.curPath.join("/");
            },
            beforeUpload(){
                this.operatingText = "正在上传...";
                this.operating = true;
            },
            afterSuccess(result){
                if (result.success) {
                    this.operating = false;
                    this.$message({
                        type: 'success',
                        message: '上传成功！'
                    });
                    this.list();
                } else {
                    this.$message({
                        type: 'info',
                        message: '上传失败！'
                    });
                }
            },
            singleClick(file){

            },
            doubleClick(file){
                if (file.isdir) {
                    this.curPath.push(file.path.name);
                    this.list()
                } else if (file.fileType == 'txt') {
                    this.textModal.show = true;
                    this.textModal.loading = true;
                    var context = this;
                    $.ajax({
                        type: "post",
                        url: urlPrefix + '/hdfs/previewText.do',
                        cache: "false",
                        data: {path: "/" + context.curPath.join("/") + "/" + file.path.name},
                        dataType: "text",
                        success: function (text) {
                            context.textModal.text = text;
                            context.textModal.loading = false;
                        }
                    });
                } else if (file.fileType == 'png') {
                    this.imageModal.show = true;
                    this.imageModal.loading = true;
                    this.imageModal.url = window.urlPrefix + "/hdfs/previewImage.do?path=/" + this.curPath.join("/") + "/" + file.path.name;
                    var image = new Image();
                    image.src = this.imageModal.url;
                    var context = this;
                    image.onload = function () {
                        context.imageModal.loading = false;
                    }
                } else if (file.fileType == 'pdf') {
                    this.pdfModal.show = true;
                    this.pdfModal.loading = true;
                    this.pdfModal.url = window.urlPrefix + "/hdfs/previewPdf.do?path=/" + this.curPath.join("/") + "/" + file.path.name + "&timestamp=" + Date.parse(new Date());
                }

            },
            onPdfLoaded(){
                this.pdfModal.loading = false;
            },
            home(){
                this.curPath = [];
                this.curPath.push(this.user.username);
                this.list();
            },
            backward(){
                this.curPath.pop();
                this.list();
            },
            forward(){

            },
            handleLogPage(pageNum){
                this.logTable.curPage = pageNum;
                var ajaxData = {};
                if (this.user.role != '管理员') {
                    ajaxData.username = this.user.username;
                }
                this.handlePage(this.logTable, ajaxData);
            },
            handleUserPage(pageNum){
                this.userTable.curPage = pageNum;
                this.handlePage(this.userTable);
            },
            handlePage(table, ajaxData){
                //var table = this.userTable;
                var url = window.urlPrefix + table.url;
                ajaxData = ajaxData || {};
                ajaxData.pageNum = table.curPage;
                ajaxData.pageSize = table.pageSize;
                var context = this;
                $.ajax({
                    type: "post",
                    url: url,
                    cache: "false",
                    data: ajaxData,
                    dataType: "json",
                    success: function (result) {
                        context.$message({
                            type: 'info',
                            message: result.message
                        });
                        table.rows = result.data.rows;
                        table.totalSize = result.data.totalSize;
                    }
                });
            },
            handleTabClick(tab){
                var name = tab.name;
                if (name == 'admin.user') {
                    this.handleUserPage(1);
                    return;
                }
                if (name == 'user.log' || name == 'admin.log') {
                    this.handleLogPage(1);
                    return;
                }
                if (name == 'user.logout' || name == 'admin.logout') {
                    this.logout();
                }
            },
            initAdminPage(){
                this.activeTab = 'admin.file';
                this.curPath = [];
                this.list();
                //this.handleUserPage(1);
            },
            logout() {
                this.$confirm('确定退出系统?', '提示', {
                    confirmButtonText: '确定',
                    cancelButtonText: '取消',
                    type: 'warning'
                }).then(() => {
                    this.curPage = 'loginPage';
                    this.activeTab = 'login';
                    this.$message({
                        type: 'success',
                        message: '登出成功!'
                    });
                }).catch(() => {
                    this.$message({
                        type: 'info',
                        message: '已取消退出'
                    });
                });
            }
        },

    }
</script>

<style>
    html, body {
        padding: 0;
        margin: 0;
    }

    .file:hover {
        background-color: #f5f5f5;
    }

    .el-upload-dragger {
        width: 320px;
    }

    .el-tabs__content {
        min-height: 610px;
    }

    .vodal-dialog {
        overflow-y: auto;
    }

</style>